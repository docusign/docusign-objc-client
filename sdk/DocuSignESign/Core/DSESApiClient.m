#import <DSESLogger.h>
#import <DSESApiClient.h>
#import <DSESJSONRequestSerializer.h>
#import <DSESQueryParamCollection.h>
#import <DSESDefaultConfiguration.h>
#import <JWT/JWT.h>
#import <JWT/JWTAlgorithmFactory.h>
#import <JWT/JWTAlgorithmNone.h>

NSString *const DSESResponseObjectErrorKey = @"DSESResponseObject";

static NSString * const kDSESContentDispositionKey = @"Content-Disposition";

static NSDictionary * DSES__headerFieldsForResponse(NSURLResponse *response) {
    if(![response isKindOfClass:[NSHTTPURLResponse class]]) {
        return nil;
    }
    return ((NSHTTPURLResponse*)response).allHeaderFields;
}

static NSString * DSES__fileNameForResponse(NSURLResponse *response) {
    NSDictionary * headers = DSES__headerFieldsForResponse(response);
    if(!headers[kDSESContentDispositionKey]) {
        return [NSString stringWithFormat:@"%@", [[NSProcessInfo processInfo] globallyUniqueString]];
    }
    NSString *pattern = @"filename=['\"]?([^'\"\\s]+)['\"]?";
    NSRegularExpression *regexp = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
    NSString *contentDispositionHeader = headers[kDSESContentDispositionKey];
    NSTextCheckingResult *match = [regexp firstMatchInString:contentDispositionHeader options:0 range:NSMakeRange(0, [contentDispositionHeader length])];
    return [contentDispositionHeader substringWithRange:[match rangeAtIndex:1]];
}


@interface DSESApiClient ()

@property (nonatomic, strong, readwrite) id<DSESConfiguration> configuration;

@property (nonatomic, strong) NSArray<NSString*>* downloadTaskResponseTypes;

@end

@implementation DSESApiClient

#pragma mark - Singleton Methods

+ (instancetype) sharedClient {
    static DSESApiClient *sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClient = [[self alloc] init];
    });
    return sharedClient;
}

#pragma mark - Initialize Methods

- (instancetype)init {
    return [self initWithConfiguration:[DSESDefaultConfiguration sharedConfig]];
}

- (instancetype)initWithBaseURL:(NSURL *)url {
    return [self initWithBaseURL:url configuration:[DSESDefaultConfiguration sharedConfig]];
}

- (instancetype)initWithConfiguration:(id<DSESConfiguration>)configuration {
    return [self initWithBaseURL:[NSURL URLWithString:configuration.host] configuration:configuration];
}

- (instancetype)initWithBaseURL:(NSURL *)url configuration:(id<DSESConfiguration>)configuration {
    self = [super initWithBaseURL:url];
    if (self) {
        _configuration = configuration;
        _timeoutInterval = 60;
        _responseDeserializer = [[DSESResponseDeserializer alloc] init];
        _sanitizer = [[DSESSanitizer alloc] init];

        _downloadTaskResponseTypes = @[@"NSURL*", @"NSURL"];

        AFHTTPRequestSerializer* afhttpRequestSerializer = [AFHTTPRequestSerializer serializer];
        DSESJSONRequestSerializer * swgjsonRequestSerializer = [DSESJSONRequestSerializer serializer];
        _requestSerializerForContentType = @{kDSESApplicationJSONType : swgjsonRequestSerializer,
            @"application/x-www-form-urlencoded": afhttpRequestSerializer,
            @"multipart/form-data": afhttpRequestSerializer
        };
        self.securityPolicy = [self createSecurityPolicy];
        self.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
    return self;
}

#pragma mark - Task Methods

- (NSURLSessionDataTask*) taskWithCompletionBlock: (NSURLRequest *)request completionBlock: (void (^)(id, NSError *))completionBlock {

    NSURLSessionDataTask *task = [self dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        DSESDebugLogResponse(response, responseObject,request,error);
        if(!error) {
            completionBlock(responseObject, nil);
            return;
        }
        NSMutableDictionary *userInfo = [error.userInfo mutableCopy];
        if (responseObject) {
            // Add in the (parsed) response body.
            userInfo[DSESResponseObjectErrorKey] = responseObject;
        }
        NSError *augmentedError = [error initWithDomain:error.domain code:error.code userInfo:userInfo];
        completionBlock(nil, augmentedError);
    }];

    return task;
}

- (NSURLSessionDataTask*) downloadTaskWithCompletionBlock: (NSURLRequest *)request completionBlock: (void (^)(id, NSError *))completionBlock {

    __block NSString * tempFolderPath = [self.configuration.tempFolderPath copy];

    NSURLSessionDataTask* task = [self dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        DSESDebugLogResponse(response, responseObject,request,error);

        if(error) {
            NSMutableDictionary *userInfo = [error.userInfo mutableCopy];
            if (responseObject) {
                userInfo[DSESResponseObjectErrorKey] = responseObject;
            }
            NSError *augmentedError = [error initWithDomain:error.domain code:error.code userInfo:userInfo];
            completionBlock(nil, augmentedError);
            return;
        }

        NSString *directory = tempFolderPath ?: NSTemporaryDirectory();
        NSString *filename = DSES__fileNameForResponse(response);

        NSString *filepath = [directory stringByAppendingPathComponent:filename];
        NSURL *file = [NSURL fileURLWithPath:filepath];

        [responseObject writeToURL:file atomically:YES];

        completionBlock(file, nil);
    }];

    return task;
}

#pragma mark - Perform Request Methods

- (NSURLSessionTask*) requestWithPath: (NSString*) path
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

    AFHTTPRequestSerializer <AFURLRequestSerialization> * requestSerializer = [self requestSerializerForRequestContentType:requestContentType];

    __weak id<DSESSanitizer> sanitizer = self.sanitizer;

    // sanitize parameters
    pathParams = [sanitizer sanitizeForSerialization:pathParams];
    queryParams = [sanitizer sanitizeForSerialization:queryParams];
    headerParams = [sanitizer sanitizeForSerialization:headerParams];
    formParams = [sanitizer sanitizeForSerialization:formParams];
    if(![body isKindOfClass:[NSData class]]) {
        body = [sanitizer sanitizeForSerialization:body];
    }

    // auth setting
    [self updateHeaderParams:&headerParams queryParams:&queryParams WithAuthSettings:authSettings];

    NSMutableString *resourcePath = [NSMutableString stringWithString:path];
    [pathParams enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSString * safeString = ([obj isKindOfClass:[NSString class]]) ? obj : [NSString stringWithFormat:@"%@", obj];
        safeString = DSESPercentEscapedStringFromString(safeString);
        [resourcePath replaceCharactersInRange:[resourcePath rangeOfString:[NSString stringWithFormat:@"{%@}", key]] withString:safeString];
    }];

    NSString* pathWithQueryParams = [self pathWithQueryParamsToString:resourcePath queryParams:queryParams];
    if ([pathWithQueryParams hasPrefix:@"/"]) {
        pathWithQueryParams = [pathWithQueryParams substringFromIndex:1];
    }

    NSString* urlString = [[NSURL URLWithString:pathWithQueryParams relativeToURL:self.baseURL] absoluteString];

    NSError *requestCreateError = nil;
    NSMutableURLRequest * request = nil;
    if (files.count > 0) {
        request = [requestSerializer multipartFormRequestWithMethod:@"POST" URLString:urlString parameters:nil constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
                                                   [formParams enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                                                       NSString *objString = [sanitizer parameterToString:obj];
                                                       NSData *data = [objString dataUsingEncoding:NSUTF8StringEncoding];
                                                       [formData appendPartWithFormData:data name:key];
                                                   }];
                                                   [files enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                                                       NSURL *filePath = (NSURL *)obj;
                                                       [formData appendPartWithFileURL:filePath name:key error:nil];
                                                   }];
                        } error:&requestCreateError];
    }
    else {
        if (formParams) {
            request = [requestSerializer requestWithMethod:method URLString:urlString parameters:formParams error:&requestCreateError];
        }
        if (body) {
            request = [requestSerializer requestWithMethod:method URLString:urlString parameters:body error:&requestCreateError];
        }
    }
    if(!request) {
        completionBlock(nil, requestCreateError);
        return nil;
    }

    if ([headerParams count] > 0){
        for(NSString * key in [headerParams keyEnumerator]){
            [request setValue:[headerParams valueForKey:key] forHTTPHeaderField:key];
        }
    }
    [requestSerializer setValue:responseContentType forHTTPHeaderField:@"Accept"];

    [self postProcessRequest:request];


    NSURLSessionTask *task = nil;

    if ([self.downloadTaskResponseTypes containsObject:responseType]) {
        task = [self downloadTaskWithCompletionBlock:request completionBlock:^(id data, NSError *error) {
            completionBlock(data, error);
        }];
    } else {
        __weak typeof(self) weakSelf = self;
        task = [self taskWithCompletionBlock:request completionBlock:^(id data, NSError *error) {
            NSError * serializationError;
            id response = [weakSelf.responseDeserializer deserialize:data class:responseType error:&serializationError];

            if(!response && !error){
                error = serializationError;
            }
            completionBlock(response, error);
        }];
    }

    [task resume];

    return task;
}

-(AFHTTPRequestSerializer <AFURLRequestSerialization> *)requestSerializerForRequestContentType:(NSString *)requestContentType {
    AFHTTPRequestSerializer <AFURLRequestSerialization> * serializer = self.requestSerializerForContentType[requestContentType];
    if(!serializer) {
        NSAssert(NO, @"Unsupported request content type %@", requestContentType);
        serializer = [AFHTTPRequestSerializer serializer];
    }
    serializer.timeoutInterval = self.timeoutInterval;
    return serializer;
}

//Added for easier override to modify request
-(void)postProcessRequest:(NSMutableURLRequest *)request {

}

#pragma mark -

- (NSString*) pathWithQueryParamsToString:(NSString*) path queryParams:(NSDictionary*) queryParams {
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
        NSString *safeKey = DSESPercentEscapedStringFromString(key);
        if ([queryParam isKindOfClass:[NSString class]]){
            [requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator, safeKey, DSESPercentEscapedStringFromString(queryParam)]];

        } else if ([queryParam isKindOfClass:[DSESQueryParamCollection class]]){
            DSESQueryParamCollection * coll = (DSESQueryParamCollection*) queryParam;
            NSArray* values = [coll values];
            NSString* format = [coll format];

            if([format isEqualToString:@"multi"]) {
                for(id obj in values) {
                    if (counter > 0) {
                        separator = @"&";
                    }
                    NSString * safeValue = DSESPercentEscapedStringFromString([NSString stringWithFormat:@"%@",obj]);
                    [requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator, safeKey, safeValue]];
                    counter += 1;
                }
                continue;
            }
            NSString * separatorStyle = separatorStyles[format];
            NSString * safeValue = DSESPercentEscapedStringFromString([values componentsJoinedByString:separatorStyle]);
            [requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator, safeKey, safeValue]];
        } else {
            NSString * safeValue = DSESPercentEscapedStringFromString([NSString stringWithFormat:@"%@",queryParam]);
            [requestUrl appendString:[NSString stringWithFormat:@"%@%@=%@", separator, safeKey, safeValue]];
        }
        counter += 1;
    }
    return requestUrl;
}

/**
 * Update header and query params based on authentication settings
 */
- (void) updateHeaderParams:(NSDictionary * *)headers queryParams:(NSDictionary * *)querys WithAuthSettings:(NSArray *)authSettings {

    if ([authSettings count] == 0) {
        return;
    }

    NSMutableDictionary *headersWithAuth = [NSMutableDictionary dictionaryWithDictionary:*headers];
    NSMutableDictionary *querysWithAuth = [NSMutableDictionary dictionaryWithDictionary:*querys];

    id<DSESConfiguration> config = self.configuration;
    for (NSString *auth in authSettings) {
        NSDictionary *authSetting = config.authSettings[auth];

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

- (AFSecurityPolicy *) createSecurityPolicy {
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];

    id<DSESConfiguration> config = self.configuration;

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

/**
 * Sets up the ApiClient for JWT auth work flow
 *
 * @param client id.
 * @param user id.
 * @param oauth base path.
 * @param privatekey file url.
 * @param expires in seconds.
 */
-(void) configure_jwt_authorization_flow:(NSString*) clientId
                                  userId:(NSString*) userId
                           oauthBasePath:(NSString*) oauthBasePath
                       privateKeyFileURL:(NSURL*) privateKeyFileURL
                               expiresIn:(NSInteger) expiresIn {

    long now = [[NSNumber numberWithDouble: [[NSDate date] timeIntervalSince1970]] integerValue];
    long later = [[NSNumber numberWithDouble: [[[NSDate date] dateByAddingTimeInterval:expiresIn] timeIntervalSince1970]] integerValue];
    
    NSString *scope = @"signature";
    NSString *algorithmName = @"RS256";
//    NSString *privatePemEncodedString = [JWTCryptoSecurity keyFromPemFileWithName:privateKeyFilename];
    
    JWTCryptoSecurityComponent * content = [[JWTCryptoSecurity componentsFromFile:privateKeyFileURL] componentsOfType:JWTCryptoSecurityComponents.PrivateKey].firstObject;
    NSString *privatePemEncodedString = content.content;
    
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
                      
                      if ([self.configuration respondsToSelector:@selector(setDefaultHeaderValue:forKey:)]) {
                          DSESDefaultConfiguration *defaultConfig = (DSESDefaultConfiguration *)self.configuration;
                          [defaultConfig setDefaultHeaderValue:authHeader forKey:@"Authorization"];
                      }
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
