#import "DSApiClient.h"
#import <JWT/JWT.h>
#import <JWT/JWTAlgorithmFactory.h>
#import <JWT/JWTAlgorithmNone.h>

NSString *const DSResponseObjectErrorKey = @"DSResponseObject";

static NSUInteger requestId = 0;
static bool offlineState = false;
static NSMutableSet * queuedRequests = nil;
static bool cacheEnabled = false;
static AFNetworkReachabilityStatus reachabilityStatus = AFNetworkReachabilityStatusNotReachable;
static void (^reachabilityChangeBlock)(int);


static NSDictionary * DS__headerFieldsForResponse(NSURLResponse *response) {
    if(![response isKindOfClass:[NSHTTPURLResponse class]]) {
        return nil;
    }
    return ((NSHTTPURLResponse*)response).allHeaderFields;
}

static NSString * DS__fileNameForResponse(NSURLResponse *response) {
    NSDictionary * headers = DS__headerFieldsForResponse(response);
    if(!headers[@"Content-Disposition"]) {
        return [NSString stringWithFormat:@"%@", [[NSProcessInfo processInfo] globallyUniqueString]];
    }
    NSString *pattern = @"filename=['\"]?([^'\"\\s]+)['\"]?";
    NSRegularExpression *regexp = [NSRegularExpression regularExpressionWithPattern:pattern
                                                                            options:NSRegularExpressionCaseInsensitive
                                                                              error:nil];
    NSString *contentDispositionHeader = headers[@"Content-Disposition"];
    NSTextCheckingResult *match = [regexp firstMatchInString:contentDispositionHeader
                                                     options:0
                                                       range:NSMakeRange(0, [contentDispositionHeader length])];
    return [contentDispositionHeader substringWithRange:[match rangeAtIndex:1]];
}


@interface DSApiClient ()

@property (nonatomic, strong) NSDictionary* HTTPResponseHeaders;

@end

@implementation DSApiClient

- (instancetype)init {
    NSString *baseUrl = [[DSConfiguration sharedConfig] host];
    return [self initWithBaseURL:[NSURL URLWithString:baseUrl]];
}

- (instancetype)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (self) {
        self.timeoutInterval = 60;
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        self.securityPolicy = [self customSecurityPolicy];
        self.responseDeserializer = [[DSResponseDeserializer alloc] init];
        self.sanitizer = [[DSSanitizer alloc] init];
        // configure reachability
        [self configureCacheReachibility];
    }
    return self;
}

+ (void)initialize {
    if (self == [DSApiClient class]) {
        queuedRequests = [[NSMutableSet alloc] init];
        // initialize URL cache
        [self configureCacheWithMemoryAndDiskCapacity:4*1024*1024 diskSize:32*1024*1024];
    }
}

#pragma mark - Setter Methods

+ (void) setOfflineState:(BOOL) state {
    offlineState = state;
}

+ (void) setCacheEnabled:(BOOL)enabled {
    cacheEnabled = enabled;
}

+(void) setReachabilityStatus:(AFNetworkReachabilityStatus)status {
    reachabilityStatus = status;
}

- (void)setHeaderValue:(NSString*) value forKey:(NSString*) forKey {
    [self.requestSerializer setValue:value forHTTPHeaderField:forKey];
}

- (void)setRequestSerializer:(AFHTTPRequestSerializer<AFURLRequestSerialization> *)requestSerializer {
    [super setRequestSerializer:requestSerializer];
    requestSerializer.timeoutInterval = self.timeoutInterval;
}

#pragma mark - Cache Methods

+(void)clearCache {
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
}

+(void)configureCacheWithMemoryAndDiskCapacity: (unsigned long) memorySize
                                      diskSize: (unsigned long) diskSize {
    NSAssert(memorySize > 0, @"invalid in-memory cache size");
    NSAssert(diskSize >= 0, @"invalid disk cache size");

    NSURLCache *cache =
    [[NSURLCache alloc]
     initWithMemoryCapacity:memorySize
     diskCapacity:diskSize
     diskPath:@"swagger_url_cache"];

    [NSURLCache setSharedURLCache:cache];
}

#pragma mark - Request Methods

+(NSUInteger)requestQueueSize {
    return [queuedRequests count];
}

+(NSNumber*) nextRequestId {
    @synchronized(self) {
        return @(++requestId);
    }
}

+(NSNumber*) queueRequest {
    NSNumber* requestId = [[self class] nextRequestId];
    DSDebugLog(@"added %@ to request queue", requestId);
    [queuedRequests addObject:requestId];
    return requestId;
}

+(void) cancelRequest:(NSNumber*)requestId {
    [queuedRequests removeObject:requestId];
}

-(Boolean) executeRequestWithId:(NSNumber*) requestId {
    NSSet* matchingItems = [queuedRequests objectsPassingTest:^BOOL(id obj, BOOL *stop) {
        return [obj intValue]  == [requestId intValue];
    }];

    if (matchingItems.count == 1) {
        DSDebugLog(@"removed request id %@", requestId);
        [queuedRequests removeObject:requestId];
        return YES;
    } else {
        return NO;
    }
}

#pragma mark - Reachability Methods

+(AFNetworkReachabilityStatus) getReachabilityStatus {
    return reachabilityStatus;
}

+(BOOL) getOfflineState {
    return offlineState;
}

+(void) setReachabilityChangeBlock:(void(^)(int))changeBlock {
    reachabilityChangeBlock = changeBlock;
}

- (void) configureCacheReachibility {
    [self.reachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        reachabilityStatus = status;
        DSDebugLog(@"reachability changed to %@",AFStringFromNetworkReachabilityStatus(status));
        [DSApiClient setOfflineState:status == AFNetworkReachabilityStatusUnknown || status == AFNetworkReachabilityStatusNotReachable];

        // call the reachability block, if configured
        if (reachabilityChangeBlock != nil) {
            reachabilityChangeBlock(status);
        }
    }];

    [self.reachabilityManager startMonitoring];
}

#pragma mark - Operation Methods

- (void) operationWithCompletionBlock: (NSURLRequest *)request
                            requestId: (NSNumber *) requestId
                      completionBlock: (void (^)(id, NSError *))completionBlock {
    __weak __typeof(self)weakSelf = self;
    NSURLSessionDataTask* op = [self dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        if (![strongSelf executeRequestWithId:requestId]) {
            return;
        }
        DSDebugLogResponse(response, responseObject,request,error);
        strongSelf.HTTPResponseHeaders = DS__headerFieldsForResponse(response);
        if(!error) {
            completionBlock(responseObject, nil);
            return;
        }
        NSMutableDictionary *userInfo = [error.userInfo mutableCopy];
        if (responseObject) {
            // Add in the (parsed) response body.
            userInfo[DSResponseObjectErrorKey] = responseObject;
        }
        NSError *augmentedError = [error initWithDomain:error.domain code:error.code userInfo:userInfo];
        completionBlock(nil, augmentedError);
    }];
    [op resume];
}

- (void) downloadOperationWithCompletionBlock: (NSURLRequest *)request
                                    requestId: (NSNumber *) requestId
                              completionBlock: (void (^)(id, NSError *))completionBlock {
    __weak __typeof(self)weakSelf = self;
    NSURLSessionDataTask* op = [self dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        if (![strongSelf executeRequestWithId:requestId]) {
            return;
        }
        strongSelf.HTTPResponseHeaders = DS__headerFieldsForResponse(response);
        DSDebugLogResponse(response, responseObject,request,error);
        if(error) {
            NSMutableDictionary *userInfo = [error.userInfo mutableCopy];
            if (responseObject) {
                userInfo[DSResponseObjectErrorKey] = responseObject;
            }
            NSError *augmentedError = [error initWithDomain:error.domain code:error.code userInfo:userInfo];
            completionBlock(nil, augmentedError);
        }
        NSString *directory = [self configuration].tempFolderPath ?: NSTemporaryDirectory();
        NSString * filename = DS__fileNameForResponse(response);

        NSString *filepath = [directory stringByAppendingPathComponent:filename];
        NSURL *file = [NSURL fileURLWithPath:filepath];

        [responseObject writeToURL:file atomically:YES];

        completionBlock(file, nil);
    }];
    [op resume];
}

#pragma mark - Perform Request Methods

-(NSNumber*) requestWithPath: (NSString*) path
                      method: (NSString*) method
                  pathParams: (NSDictionary *) pathParams
                 queryParams: (NSDictionary*) queryParams
                  formParams: (NSDictionary *) formParams
                       files: (NSDictionary *) files
                        body: (id) body
                headerParams: (NSDictionary*) headerParams
                authSettings: (NSArray *) authSettings
          requestContentType: (NSString*) requestContentType
         responseContentType: (NSString*) responseContentType
                responseType: (NSString *) responseType
             completionBlock: (void (^)(id, NSError *))completionBlock {
    // setting request serializer
    if ([requestContentType isEqualToString:@"application/json"]) {
        self.requestSerializer = [DSJSONRequestSerializer serializer];
    }
    else if ([requestContentType isEqualToString:@"application/x-www-form-urlencoded"]) {
        self.requestSerializer = [AFHTTPRequestSerializer serializer];
    }
    else if ([requestContentType isEqualToString:@"multipart/form-data"]) {
        self.requestSerializer = [AFHTTPRequestSerializer serializer];
    }
    else {
        self.requestSerializer = [AFHTTPRequestSerializer serializer];
        NSAssert(NO, @"Unsupported request type %@", requestContentType);
    }

    // setting response serializer
    if ([responseContentType isEqualToString:@"application/json"]) {
        self.responseSerializer = [DSJSONResponseSerializer serializer];
    } else {
        self.responseSerializer = [AFHTTPResponseSerializer serializer];
    }

    // sanitize parameters
    pathParams = [self.sanitizer sanitizeForSerialization:pathParams];
    queryParams = [self.sanitizer sanitizeForSerialization:queryParams];
    headerParams = [self.sanitizer sanitizeForSerialization:headerParams];
    formParams = [self.sanitizer sanitizeForSerialization:formParams];
    if(![body isKindOfClass:[NSData class]]) {
        body = [self.sanitizer sanitizeForSerialization:body];
    }

    // auth setting
    [self updateHeaderParams:&headerParams queryParams:&queryParams WithAuthSettings:authSettings];

    NSMutableString *resourcePath = [NSMutableString stringWithString:path];
    [pathParams enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSString * safeString = ([obj isKindOfClass:[NSString class]]) ? obj : [NSString stringWithFormat:@"%@", obj];
        safeString = DSPercentEscapedStringFromString(safeString);
        [resourcePath replaceCharactersInRange:[resourcePath rangeOfString:[NSString stringWithFormat:@"{%@}", key]] withString:safeString];
    }];

    NSMutableURLRequest * request = nil;

    NSString* pathWithQueryParams = [self pathWithQueryParamsToString:resourcePath queryParams:queryParams];
    if ([pathWithQueryParams hasPrefix:@"/"]) {
        pathWithQueryParams = [pathWithQueryParams substringFromIndex:1];
    }

    NSString* urlString = [[NSURL URLWithString:pathWithQueryParams relativeToURL:self.baseURL] absoluteString];
    if (files.count > 0) {
        __weak __typeof(self)weakSelf = self;
        request = [self.requestSerializer multipartFormRequestWithMethod:@"POST"
                                                               URLString:urlString
                                                              parameters:nil
                                               constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
                                                   [formParams enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                                                       NSString *objString = [weakSelf.sanitizer parameterToString:obj];
                                                       NSData *data = [objString dataUsingEncoding:NSUTF8StringEncoding];
                                                       [formData appendPartWithFormData:data name:key];
                                                   }];
                                                   [files enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                                                       NSURL *filePath = (NSURL *)obj;
                                                       [formData appendPartWithFileURL:filePath name:key error:nil];
                                                   }];
                                               } error:nil];
    }
    else {
        if (formParams) {
            request = [self.requestSerializer requestWithMethod:method
                                                      URLString:urlString
                                                     parameters:formParams
                                                          error:nil];
        }
        if (body) {
            request = [self.requestSerializer requestWithMethod:method
                                                      URLString:urlString
                                                     parameters:body
                                                          error:nil];
        }
    }

    // request cache
    BOOL hasHeaderParams = [headerParams count] > 0;
    if (offlineState) {
        DSDebugLog(@"%@ cache forced", resourcePath);
        [request setCachePolicy:NSURLRequestReturnCacheDataDontLoad];
    }
    else if(!hasHeaderParams && [method isEqualToString:@"GET"] && cacheEnabled) {
        DSDebugLog(@"%@ cache enabled", resourcePath);
        [request setCachePolicy:NSURLRequestUseProtocolCachePolicy];
    }
    else {
        DSDebugLog(@"%@ cache disabled", resourcePath);
        [request setCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];
    }

    if (hasHeaderParams){
        for(NSString * key in [headerParams keyEnumerator]){
            [request setValue:[headerParams valueForKey:key] forHTTPHeaderField:key];
        }
    }
    // DocuSign: Add DocuSign tracking headers
    [request setValue:@"Obj-C" forHTTPHeaderField:@"X-DocuSign-SDK"];
    [self.requestSerializer setValue:responseContentType forHTTPHeaderField:@"Accept"];

    [self postProcessRequest:request];

    NSNumber* requestId = [DSApiClient queueRequest];
    if ([responseType isEqualToString:@"NSURL*"] || [responseType isEqualToString:@"NSURL"]) {
        [self downloadOperationWithCompletionBlock:request requestId:requestId completionBlock:^(id data, NSError *error) {
            completionBlock(data, error);
        }];
    }
    else {
        [self operationWithCompletionBlock:request requestId:requestId completionBlock:^(id data, NSError *error) {
            NSError * serializationError;
            id response = [self.responseDeserializer deserialize:data class:responseType error:&serializationError];
            if(!response && !error){
                error = serializationError;
            }
            completionBlock(response, error);
        }];
    }
    return requestId;
}

//Added for easier override to modify request
-(void)postProcessRequest:(NSMutableURLRequest *)request {
    // Always disable cookies!
    [request setHTTPShouldHandleCookies:NO];
}

#pragma mark -

- (NSString*) pathWithQueryParamsToString:(NSString*) path
                              queryParams:(NSDictionary*) queryParams {
    if(queryParams.count == 0) {
        return path;
    }
    NSString * separator = nil;
    NSUInteger counter = 0;

    NSMutableString * requestUrl = [NSMutableString stringWithFormat:@"%@", path];

    NSDictionary *separatorStyles = @{@"csv" : @",",
            @"tsv" : @"\t",
            @"pipes": @"|"
    };
    for(NSString * key in [queryParams keyEnumerator]){
        if (counter == 0) {
            separator = @"?";
        } else {
            separator = @"&";
        }
        id queryParam = [queryParams valueForKey:key];
        if(!queryParam) {
            continue;
        }
        NSString *safeKey = DSPercentEscapedStringFromString(key);
        if ([queryParam isKindOfClass:[NSString class]]){
            [requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator, safeKey, DSPercentEscapedStringFromString(queryParam)]];

        } else if ([queryParam isKindOfClass:[DSQueryParamCollection class]]){
            DSQueryParamCollection * coll = (DSQueryParamCollection*) queryParam;
            NSArray* values = [coll values];
            NSString* format = [coll format];

            if([format isEqualToString:@"multi"]) {
                for(id obj in values) {
                    if (counter > 0) {
                        separator = @"&";
                    }
                    NSString * safeValue = DSPercentEscapedStringFromString([NSString stringWithFormat:@"%@",obj]);
                    [requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator, safeKey, safeValue]];
                    counter += 1;
                }
                continue;
            }
            NSString * separatorStyle = separatorStyles[format];
            NSString * safeValue = DSPercentEscapedStringFromString([values componentsJoinedByString:separatorStyle]);
            [requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator, safeKey, safeValue]];
        } else {
            NSString * safeValue = DSPercentEscapedStringFromString([NSString stringWithFormat:@"%@",queryParam]);
            [requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator, safeKey, safeValue]];
        }
        counter += 1;
    }
    return requestUrl;
}

/**
 * Update header and query params based on authentication settings
 */
- (void) updateHeaderParams:(NSDictionary *__autoreleasing *)headers
                queryParams:(NSDictionary *__autoreleasing *)querys
           WithAuthSettings:(NSArray *)authSettings {

    if ([authSettings count] == 0) {
        return;
    }

    NSMutableDictionary *headersWithAuth = [NSMutableDictionary dictionaryWithDictionary:*headers];
    NSMutableDictionary *querysWithAuth = [NSMutableDictionary dictionaryWithDictionary:*querys];

    NSDictionary* configurationAuthSettings = [[self configuration] authSettings];
    for (NSString *auth in authSettings) {
        NSDictionary *authSetting = configurationAuthSettings[auth];
        if(!authSetting) { // auth setting is set only if the key is non-empty
            continue;
        }
        NSString *type = authSetting[@"in"];
        NSString *key = authSetting[@"key"];
        NSString *value = authSetting[@"value"];
        if ([type isEqualToString:@"header"] && [key length] > 0 ) {
            headersWithAuth[key] = value;
        } else if ([type isEqualToString:@"query"] && [key length] != 0) {
            querysWithAuth[key] = value;
        }
    }

    *headers = [NSDictionary dictionaryWithDictionary:headersWithAuth];
    *querys = [NSDictionary dictionaryWithDictionary:querysWithAuth];
}

- (AFSecurityPolicy *) customSecurityPolicy {
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];

    DSConfiguration *config = [self configuration];

    if (config.sslCaCert) {
        NSData *certData = [NSData dataWithContentsOfFile:config.sslCaCert];
        [securityPolicy setPinnedCertificates:[NSSet setWithObject:certData]];
    }

    if (config.verifySSL) {
        [securityPolicy setAllowInvalidCertificates:NO];
    }
    else {
        [securityPolicy setAllowInvalidCertificates:YES];
        [securityPolicy setValidatesDomainName:NO];
    }

    return securityPolicy;
}

- (DSConfiguration*) configuration {
    return [DSConfiguration sharedConfig];
}

/**
 * Sets up the ApiClient for JWT auth work flow
 *
 * @param client id.
 * @param user id.
 * @param oauth base path.
 * @param private key filename.
 * @param expires in seconds.
 */
-(void) configure_jwt_authorization_flow:(NSString*) clientId
                                  userId:(NSString*) userId
                           oauthBasePath:(NSString*) oauthBasePath
                      privateKeyFilename:(NSString*) privateKeyFilename
                               expiresIn:(NSInteger) expiresIn {

    long now = [[NSNumber numberWithDouble: [[NSDate date] timeIntervalSince1970]] integerValue];
    long later = [[NSNumber numberWithDouble: [[[NSDate date] dateByAddingTimeInterval:expiresIn] timeIntervalSince1970]] integerValue];
    
    NSString *scope = @"signature";
    NSString *algorithmName = @"RS256";
    NSString *privatePemEncodedString = [JWTCryptoSecurity keyFromPemFileWithName:privateKeyFilename];
    
    NSDictionary *payload = @{
                              @"iss": clientId,
                              @"sub": userId,
                              @"aud": oauthBasePath,
                              @"iat": @(now),
                              @"exp": @(later),
                              @"scope": scope
                              };
    
    id<JWTAlgorithmDataHolderProtocol> dataHolder = [JWTAlgorithmRSFamilyDataHolder new].keyExtractorType([JWTCryptoKeyExtractor privateKeyWithPEMBase64].type).algorithmName(algorithmName).secret(privatePemEncodedString);
    
    JWTCodingBuilder *newBuilder = [JWTEncodingBuilder encodePayload:payload].addHolder(dataHolder);
    JWTCodingResultType *result = newBuilder.result;
    if (result.successResult) {
        NSString *jwtToken = result.successResult.encoded;
        
        NSMutableString *resourcePath = [NSMutableString stringWithFormat:@"%@%@%@", @"https://", oauthBasePath, @"/oauth/token"];
        
        NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
        
        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
        
        NSDictionary *headers = @{ @"Content-Type": @"application/x-www-form-urlencoded" };
        NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.configuration.defaultHeaders];
        [headerParams addEntriesFromDictionary:headers];
        // HTTP header `Accept`
        NSString *acceptHeader = [self.sanitizer selectHeaderAccept:@[@"application/json"]];
        if(acceptHeader.length > 0) {
            headerParams[@"Accept"] = acceptHeader;
        }
        
        // response content type
        NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";
        
        // request content type
        NSString *requestContentType = [self.sanitizer selectHeaderContentType:@[]];
        
        // Authentication setting
        NSArray *authSettings = @[];
        
        id bodyParam = nil;
        NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
        
        NSMutableData *body = [[NSMutableData alloc] initWithData:[@"grant_type=urn:ietf:params:oauth:grant-type:jwt-bearer" dataUsingEncoding:NSUTF8StringEncoding]];
        [body appendData:[[NSMutableString stringWithFormat:@"&assertion=%@",jwtToken] dataUsingEncoding:NSUTF8StringEncoding]];
        bodyParam = body;

        __block BOOL isRunLoopNested = NO;
        __block BOOL isOperationCompleted = NO;
        
        [self requestWithPath: resourcePath
                       method: @"POST"
                   pathParams: pathParams
                  queryParams: queryParams
                   formParams: formParams
                        files: localVarFiles
                         body: bodyParam
                 headerParams: headerParams
                 authSettings: authSettings
           requestContentType: requestContentType
          responseContentType: responseContentType
                 responseType: @"NSObject"
              completionBlock: ^(id data, NSError *error) {
                  if(data) {
                      NSString *authHeader = [NSMutableString stringWithFormat:@"%@ %@", data[@"token_type"], data[@"access_token"]];
                      [self.configuration setDefaultHeaderValue:authHeader forKey:@"Authorization"];
                  }

                  isOperationCompleted = YES;
                  if (isRunLoopNested) {
                      CFRunLoopStop(CFRunLoopGetCurrent()); // CFRunLoopRun() returns
                  }
            
              }
        ];

        if (!isOperationCompleted) {
            isRunLoopNested = YES;
            CFRunLoopRun();
            isRunLoopNested = NO;
        }
    }
}

@end
