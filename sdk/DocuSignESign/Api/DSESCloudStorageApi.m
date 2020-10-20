#import <DSESCloudStorageApi.h>
#import <DSESQueryParamCollection.h>
#import <DSESApiClient.h>
#import <DSESCloudStorageProviders.h>
#import <DSESErrorDetails.h>
#import <DSESExternalFolder.h>



@implementation DSESCloudStorageApi_GetProviderOptions
@end


@implementation DSESCloudStorageApi_ListOptions
@end


@implementation DSESCloudStorageApi_ListFoldersOptions
@end


@implementation DSESCloudStorageApi_ListProvidersOptions
@end



@interface DSESCloudStorageApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation DSESCloudStorageApi

NSString* kDSESCloudStorageApiErrorDomain = @"DSESCloudStorageApiErrorDomain";
NSInteger kDSESCloudStorageApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[DSESApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(DSESApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Configures the redirect URL information  for one or more cloud storage providers for the specified user.
/// Configures the redirect URL information  for one or more cloud storage providers for the specified user. The redirect URL is added to the authentication URL to complete the return route.
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
///
/// @param cloudStorageProviders  
///
/// @returns DSESCloudStorageProviders*
///
-(NSURLSessionTask*) createProviderWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    cloudStorageProviders:(DSESCloudStorageProviders*) cloudStorageProviders
    completionHandler: (void (^)(DSESCloudStorageProviders* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/users/{userId}/cloud_storage"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];



    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = cloudStorageProviders;

    return [self.apiClient requestWithPath: resourcePath
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
                              responseType: @"DSESCloudStorageProviders*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCloudStorageProviders*)data, error);
                                }
                            }];
}

///
/// Deletes the user authentication information for the specified cloud storage provider.
/// Deletes the user authentication information for the specified cloud storage provider. The next time the user tries to access the cloud storage provider, they must pass normal authentication for this cloud storage provider.
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
/// @param serviceId The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;).
///
///
///
/// @returns DSESCloudStorageProviders*
///
-(NSURLSessionTask*) deleteProviderWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    serviceId:(NSString*) serviceId 
    completionHandler: (void (^)(DSESCloudStorageProviders* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'serviceId' is set
    if (serviceId == nil) {
        NSParameterAssert(serviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"serviceId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }
    if (serviceId != nil) {
        pathParams[@"serviceId"] = serviceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];



    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSESCloudStorageProviders*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCloudStorageProviders*)data, error);
                                }
                            }];
}

///
/// Deletes the user authentication information for one or more cloud storage providers.
/// Deletes the user authentication information for one or more cloud storage providers. The next time the user tries to access the cloud storage provider, they must pass normal authentication.
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
///
/// @param cloudStorageProviders  
///
/// @returns DSESCloudStorageProviders*
///
-(NSURLSessionTask*) deleteProvidersWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    cloudStorageProviders:(DSESCloudStorageProviders*) cloudStorageProviders
    completionHandler: (void (^)(DSESCloudStorageProviders* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/users/{userId}/cloud_storage"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];



    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = cloudStorageProviders;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSESCloudStorageProviders*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCloudStorageProviders*)data, error);
                                }
                            }];
}

///
/// Gets the specified Cloud Storage Provider configuration for the User.
/// Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
/// @param serviceId The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;).
///
///
/// @param DSESCloudStorageApi_GetProviderOptions Options for modifying the request.
/// @returns DSESCloudStorageProviders*
///
-(NSURLSessionTask*) getProviderWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    serviceId:(NSString*) serviceId 
    options:(DSESCloudStorageApi_GetProviderOptions*) options
    completionHandler: (void (^)(DSESCloudStorageProviders* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'serviceId' is set
    if (serviceId == nil) {
        NSParameterAssert(serviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"serviceId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }
    if (serviceId != nil) {
        pathParams[@"serviceId"] = serviceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.redirectUrl != nil) {
            queryParams[@"redirectUrl"] = options.redirectUrl;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSESCloudStorageProviders*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCloudStorageProviders*)data, error);
                                }
                            }];
}

///
/// Gets a list of all the items from the specified cloud storage provider.
/// Retrieves a list of all the items in all  the folders associated with the user from the specified cloud storage provider. You can limit the scope of the returned items by providing a comma separated list of folder IDs in the request.
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
/// @param serviceId The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;).
/// @param folderId The ID of the folder being accessed.
///
///
/// @param DSESCloudStorageApi_ListOptions Options for modifying the request.
/// @returns DSESExternalFolder*
///
-(NSURLSessionTask*) listWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    serviceId:(NSString*) serviceId 
    folderId:(NSString*) folderId 
    options:(DSESCloudStorageApi_ListOptions*) options
    completionHandler: (void (^)(DSESExternalFolder* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'serviceId' is set
    if (serviceId == nil) {
        NSParameterAssert(serviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"serviceId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders/{folderId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }
    if (serviceId != nil) {
        pathParams[@"serviceId"] = serviceId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.cloudStorageFolderPath != nil) {
            queryParams[@"cloud_storage_folder_path"] = options.cloudStorageFolderPath;
        }
        if(options.cloudStorageFolderidPlain != nil) {
            queryParams[@"cloud_storage_folderid_plain"] = options.cloudStorageFolderidPlain;
        }
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.order != nil) {
            queryParams[@"order"] = options.order;
        }
        if(options.orderBy != nil) {
            queryParams[@"order_by"] = options.orderBy;
        }
        if(options.searchText != nil) {
            queryParams[@"search_text"] = options.searchText;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSESExternalFolder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESExternalFolder*)data, error);
                                }
                            }];
}

///
/// Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
/// Retrieves a list of all the items in a specified folder from the specified cloud storage provider. 
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
/// @param serviceId The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;).
///
///
/// @param DSESCloudStorageApi_ListFoldersOptions Options for modifying the request.
/// @returns DSESExternalFolder*
///
-(NSURLSessionTask*) listFoldersWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    serviceId:(NSString*) serviceId 
    options:(DSESCloudStorageApi_ListFoldersOptions*) options
    completionHandler: (void (^)(DSESExternalFolder* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'serviceId' is set
    if (serviceId == nil) {
        NSParameterAssert(serviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"serviceId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }
    if (serviceId != nil) {
        pathParams[@"serviceId"] = serviceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.cloudStorageFolderPath != nil) {
            queryParams[@"cloud_storage_folder_path"] = options.cloudStorageFolderPath;
        }
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.order != nil) {
            queryParams[@"order"] = options.order;
        }
        if(options.orderBy != nil) {
            queryParams[@"order_by"] = options.orderBy;
        }
        if(options.searchText != nil) {
            queryParams[@"search_text"] = options.searchText;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSESExternalFolder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESExternalFolder*)data, error);
                                }
                            }];
}

///
/// Get the Cloud Storage Provider configuration for the specified user.
/// Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.  The {serviceId} parameter can be either the service name or serviceId.
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
///
///
/// @param DSESCloudStorageApi_ListProvidersOptions Options for modifying the request.
/// @returns DSESCloudStorageProviders*
///
-(NSURLSessionTask*) listProvidersWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    options:(DSESCloudStorageApi_ListProvidersOptions*) options
    completionHandler: (void (^)(DSESCloudStorageProviders* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'userId' is set
    if (userId == nil) {
        NSParameterAssert(userId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"userId"] };
            NSError* error = [NSError errorWithDomain:kDSESCloudStorageApiErrorDomain code:kDSESCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/users/{userId}/cloud_storage"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (userId != nil) {
        pathParams[@"userId"] = userId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.redirectUrl != nil) {
            queryParams[@"redirectUrl"] = options.redirectUrl;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSESCloudStorageProviders*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCloudStorageProviders*)data, error);
                                }
                            }];
}



@end
