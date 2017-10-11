#import "DSWorkspacesApi.h"
#import "DSQueryParamCollection.h"
#import "DSErrorDetails.h"
#import "DSPageImages.h"
#import "DSWorkspace.h"
#import "DSWorkspaceFolderContents.h"
#import "DSWorkspaceItem.h"
#import "DSWorkspaceItemList.h"
#import "DSWorkspaceList.h"


@implementation DSWorkspacesApi_GetWorkspaceFileOptions
@end
@implementation DSWorkspacesApi_ListWorkspaceFilePagesOptions
@end
@implementation DSWorkspacesApi_ListWorkspaceFolderItemsOptions
@end

@interface DSWorkspacesApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation DSWorkspacesApi

NSString* kDSWorkspacesApiErrorDomain = @"DSWorkspacesApiErrorDomain";
NSInteger kDSWorkspacesApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        DSConfiguration *config = [DSConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[DSApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(DSApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static DSWorkspacesApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [DSApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Create a Workspace
/// Creates a new workspace.
/// @param accountId The external account number (int) or account ID Guid.
/// @param workspace  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSWorkspace*
-(NSNumber*) createWorkspaceWithAccountId:
(NSString*) accountId 
 workspace:(DSWorkspace*) workspace

 completionHandler: (void (^)(DSWorkspace* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSWorkspace*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSWorkspace*)data, error);
                                }
                           }
          ];
}

///
/// Creates a workspace file.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID./// @param folderId The ID of the folder being accessed.


///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSWorkspaceItem*
-(NSNumber*) createWorkspaceFileWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId  folderId:(NSString*) folderId 


 completionHandler: (void (^)(DSWorkspaceItem* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSWorkspaceItem*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSWorkspaceItem*)data, error);
                                }
                           }
          ];
}

///
/// Delete Workspace
/// Deletes an existing workspace (logically).
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSWorkspace*
-(NSNumber*) deleteWorkspaceWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId 


 completionHandler: (void (^)(DSWorkspace* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSWorkspace*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSWorkspace*)data, error);
                                }
                           }
          ];
}

///
/// Deletes workspace one or more specific files/folders from the given folder or root.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID./// @param folderId The ID of the folder being accessed.
/// @param workspaceItemList  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) deleteWorkspaceFolderItemsWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId  folderId:(NSString*) folderId 
 workspaceItemList:(DSWorkspaceItemList*) workspaceItemList

 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                           }
          ];
}

///
/// Get Workspace
/// Retrives properties about a workspace given a unique workspaceId. 
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSWorkspace*
-(NSNumber*) getWorkspaceWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId 


 completionHandler: (void (^)(DSWorkspace* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSWorkspace*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSWorkspace*)data, error);
                                }
                           }
          ];
}

///
/// Get Workspace File
/// Retrieves a workspace file (the binary).
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID./// @param folderId The ID of the folder being accessed./// @param fileId Specifies the room file ID GUID.

/// @param DSWorkspacesApi_GetWorkspaceFileOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) getWorkspaceFileWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId  folderId:(NSString*) folderId  fileId:(NSString*) fileId 

 options:(DSWorkspacesApi_GetWorkspaceFileOptions*) options
 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'fileId' is set
    if (fileId == nil) {
        NSParameterAssert(fileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                           }
          ];
}

///
/// List File Pages
/// Retrieves a workspace file as rasterized pages.
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID./// @param folderId The ID of the folder being accessed./// @param fileId Specifies the room file ID GUID.

/// @param DSWorkspacesApi_ListWorkspaceFilePagesOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSPageImages*
-(NSNumber*) listWorkspaceFilePagesWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId  folderId:(NSString*) folderId  fileId:(NSString*) fileId 

 options:(DSWorkspacesApi_ListWorkspaceFilePagesOptions*) options
 completionHandler: (void (^)(DSPageImages* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'fileId' is set
    if (fileId == nil) {
        NSParameterAssert(fileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}/pages"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSPageImages*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSPageImages*)data, error);
                                }
                           }
          ];
}

///
/// List Workspace Folder Contents
/// Retrieves workspace folder contents, which can include sub folders and files.
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID./// @param folderId The ID of the folder being accessed.

/// @param DSWorkspacesApi_ListWorkspaceFolderItemsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSWorkspaceFolderContents*
-(NSNumber*) listWorkspaceFolderItemsWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId  folderId:(NSString*) folderId 

 options:(DSWorkspacesApi_ListWorkspaceFolderItemsOptions*) options
 completionHandler: (void (^)(DSWorkspaceFolderContents* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSWorkspaceFolderContents*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSWorkspaceFolderContents*)data, error);
                                }
                           }
          ];
}

///
/// List Workspaces
/// Gets information about the Workspaces that have been created.
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSWorkspaceList*
-(NSNumber*) listWorkspacesWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(DSWorkspaceList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSWorkspaceList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSWorkspaceList*)data, error);
                                }
                           }
          ];
}

///
/// Update Workspace
/// Updates information about a specific workspace.
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID.
/// @param workspace  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSWorkspace*
-(NSNumber*) updateWorkspaceWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId 
 workspace:(DSWorkspace*) workspace

 completionHandler: (void (^)(DSWorkspace* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSWorkspace*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSWorkspace*)data, error);
                                }
                           }
          ];
}

///
/// Update Workspace File Metadata
/// Updates workspace item metadata for one or more specific files/folders.
/// @param accountId The external account number (int) or account ID Guid./// @param workspaceId Specifies the workspace ID GUID./// @param folderId The ID of the folder being accessed./// @param fileId Specifies the room file ID GUID.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSWorkspaceItem*
-(NSNumber*) updateWorkspaceFileWithAccountId:
(NSString*) accountId  workspaceId:(NSString*) workspaceId  folderId:(NSString*) folderId  fileId:(NSString*) fileId 


 completionHandler: (void (^)(DSWorkspaceItem* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'workspaceId' is set
    if (workspaceId == nil) {
        NSParameterAssert(workspaceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"workspaceId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'fileId' is set
    if (fileId == nil) {
        NSParameterAssert(fileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileId"] };
            NSError* error = [NSError errorWithDomain:kDSWorkspacesApiErrorDomain code:kDSWorkspacesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"DSWorkspaceItem*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSWorkspaceItem*)data, error);
                                }
                           }
          ];
}


@end
