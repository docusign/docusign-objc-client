#import <DSESWorkspacesApi.h>
#import <DSESQueryParamCollection.h>
#import <DSESApiClient.h>
#import <DSESErrorDetails.h>
#import <DSESPageImages.h>
#import <DSESWorkspace.h>
#import <DSESWorkspaceFolderContents.h>
#import <DSESWorkspaceItem.h>
#import <DSESWorkspaceItemList.h>
#import <DSESWorkspaceList.h>



@implementation DSESWorkspacesApi_GetWorkspaceFileOptions
@end


@implementation DSESWorkspacesApi_ListWorkspaceFilePagesOptions
@end


@implementation DSESWorkspacesApi_ListWorkspaceFolderItemsOptions
@end



@interface DSESWorkspacesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation DSESWorkspacesApi

NSString* kDSESWorkspacesApiErrorDomain = @"DSESWorkspacesApiErrorDomain";
NSInteger kDSESWorkspacesApiMissingParamErrorCode = 234513;

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
/// Create a Workspace
/// Creates a new workspace.
/// @param accountId The external account number (int) or account ID Guid.
///
/// @param workspace  
///
/// @returns DSESWorkspace*
///
-(NSURLSessionTask*) createWorkspaceWithAccountId:
    (NSString*) accountId 
    workspace:(DSESWorkspace*) workspace
    completionHandler: (void (^)(DSESWorkspace* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
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
    bodyParam = workspace;

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
                              responseType: @"DSESWorkspace*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESWorkspace*)data, error);
                                }
                            }];
}

///
/// Creates a workspace file.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
/// @param folderId The ID of the folder being accessed.
///
///
///
/// @returns DSESWorkspaceItem*
///
-(NSURLSessionTask*) createWorkspaceFileWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    folderId:(NSString*) folderId 
    completionHandler: (void (^)(DSESWorkspaceItem* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
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
                              responseType: @"DSESWorkspaceItem*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESWorkspaceItem*)data, error);
                                }
                            }];
}

///
/// Delete Workspace
/// Deletes an existing workspace (logically).
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
///
///
///
/// @returns DSESWorkspace*
///
-(NSURLSessionTask*) deleteWorkspaceWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    completionHandler: (void (^)(DSESWorkspace* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
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
                              responseType: @"DSESWorkspace*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESWorkspace*)data, error);
                                }
                            }];
}

///
/// Deletes workspace one or more specific files/folders from the given folder or root.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
/// @param folderId The ID of the folder being accessed.
///
/// @param workspaceItemList  
///
/// @returns void
///
-(NSURLSessionTask*) deleteWorkspaceFolderItemsWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    folderId:(NSString*) folderId 
    workspaceItemList:(DSESWorkspaceItemList*) workspaceItemList
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
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
    bodyParam = workspaceItemList;

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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get Workspace
/// Retrives properties about a workspace given a unique workspaceId. 
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
///
///
///
/// @returns DSESWorkspace*
///
-(NSURLSessionTask*) getWorkspaceWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    completionHandler: (void (^)(DSESWorkspace* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
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
                              responseType: @"DSESWorkspace*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESWorkspace*)data, error);
                                }
                            }];
}

///
/// Get Workspace File
/// Retrieves a workspace file (the binary).
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
/// @param folderId The ID of the folder being accessed.
/// @param fileId Specifies the room file ID GUID.
///
///
/// @param DSESWorkspacesApi_GetWorkspaceFileOptions Options for modifying the request.
/// @returns void
///
-(NSURLSessionTask*) getWorkspaceFileWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    folderId:(NSString*) folderId 
    fileId:(NSString*) fileId 
    options:(DSESWorkspacesApi_GetWorkspaceFileOptions*) options
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'fileId' is set
    if (fileId == nil) {
        NSParameterAssert(fileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
    }
    if (fileId != nil) {
        pathParams[@"fileId"] = fileId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.isDownload != nil) {
            queryParams[@"is_download"] = options.isDownload;
        }
        if(options.pdfVersion != nil) {
            queryParams[@"pdf_version"] = options.pdfVersion;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// List File Pages
/// Retrieves a workspace file as rasterized pages.
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
/// @param folderId The ID of the folder being accessed.
/// @param fileId Specifies the room file ID GUID.
///
///
/// @param DSESWorkspacesApi_ListWorkspaceFilePagesOptions Options for modifying the request.
/// @returns DSESPageImages*
///
-(NSURLSessionTask*) listWorkspaceFilePagesWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    folderId:(NSString*) folderId 
    fileId:(NSString*) fileId 
    options:(DSESWorkspacesApi_ListWorkspaceFilePagesOptions*) options
    completionHandler: (void (^)(DSESPageImages* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'fileId' is set
    if (fileId == nil) {
        NSParameterAssert(fileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}/pages"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
    }
    if (fileId != nil) {
        pathParams[@"fileId"] = fileId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.dpi != nil) {
            queryParams[@"dpi"] = options.dpi;
        }
        if(options.maxHeight != nil) {
            queryParams[@"max_height"] = options.maxHeight;
        }
        if(options.maxWidth != nil) {
            queryParams[@"max_width"] = options.maxWidth;
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
                              responseType: @"DSESPageImages*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESPageImages*)data, error);
                                }
                            }];
}

///
/// List Workspace Folder Contents
/// Retrieves workspace folder contents, which can include sub folders and files.
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
/// @param folderId The ID of the folder being accessed.
///
///
/// @param DSESWorkspacesApi_ListWorkspaceFolderItemsOptions Options for modifying the request.
/// @returns DSESWorkspaceFolderContents*
///
-(NSURLSessionTask*) listWorkspaceFolderItemsWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    folderId:(NSString*) folderId 
    options:(DSESWorkspacesApi_ListWorkspaceFolderItemsOptions*) options
    completionHandler: (void (^)(DSESWorkspaceFolderContents* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.includeFiles != nil) {
            queryParams[@"include_files"] = options.includeFiles;
        }
        if(options.includeSubFolders != nil) {
            queryParams[@"include_sub_folders"] = options.includeSubFolders;
        }
        if(options.includeThumbnails != nil) {
            queryParams[@"include_thumbnails"] = options.includeThumbnails;
        }
        if(options.includeUserDetail != nil) {
            queryParams[@"include_user_detail"] = options.includeUserDetail;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
        }
        if(options.workspaceUserId != nil) {
            queryParams[@"workspace_user_id"] = options.workspaceUserId;
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
                              responseType: @"DSESWorkspaceFolderContents*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESWorkspaceFolderContents*)data, error);
                                }
                            }];
}

///
/// List Workspaces
/// Gets information about the Workspaces that have been created.
/// @param accountId The external account number (int) or account ID Guid.
///
///
///
/// @returns DSESWorkspaceList*
///
-(NSURLSessionTask*) listWorkspacesWithAccountId:
    (NSString*) accountId 
    completionHandler: (void (^)(DSESWorkspaceList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
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
                              responseType: @"DSESWorkspaceList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESWorkspaceList*)data, error);
                                }
                            }];
}

///
/// Update Workspace
/// Updates information about a specific workspace.
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
///
/// @param workspace  
///
/// @returns DSESWorkspace*
///
-(NSURLSessionTask*) updateWorkspaceWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    workspace:(DSESWorkspace*) workspace
    completionHandler: (void (^)(DSESWorkspace* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
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
    bodyParam = workspace;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSESWorkspace*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESWorkspace*)data, error);
                                }
                            }];
}

///
/// Update Workspace File Metadata
/// Updates workspace item metadata for one or more specific files/folders.
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspaceId Specifies the workspace ID GUID.
/// @param folderId The ID of the folder being accessed.
/// @param fileId Specifies the room file ID GUID.
///
///
///
/// @returns DSESWorkspaceItem*
///
-(NSURLSessionTask*) updateWorkspaceFileWithAccountId:
    (NSString*) accountId 
    workspaceId:(NSString*) workspaceId 
    folderId:(NSString*) folderId 
    fileId:(NSString*) fileId 
    completionHandler: (void (^)(DSESWorkspaceItem* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'fileId' is set
    if (fileId == nil) {
        NSParameterAssert(fileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileId"] };
            NSError* error = [NSError errorWithDomain:kDSESWorkspacesApiErrorDomain code:kDSESWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (workspaceId != nil) {
        pathParams[@"workspaceId"] = workspaceId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
    }
    if (fileId != nil) {
        pathParams[@"fileId"] = fileId;
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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSESWorkspaceItem*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESWorkspaceItem*)data, error);
                                }
                            }];
}



@end
