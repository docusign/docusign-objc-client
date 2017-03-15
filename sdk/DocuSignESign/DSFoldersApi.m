#import "DSFoldersApi.h"
#import "DSQueryParamCollection.h"
#import "DSErrorDetails.h"
#import "DSFolderItemResponse.h"
#import "DSFolderItemsResponse.h"
#import "DSFoldersRequest.h"
#import "DSFoldersResponse.h"


@implementation DSFoldersApi_ListOptions
@end
@implementation DSFoldersApi_ListItemsOptions
@end
@implementation DSFoldersApi_SearchOptions
@end

@interface DSFoldersApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation DSFoldersApi

NSString* kDSFoldersApiErrorDomain = @"DSFoldersApiErrorDomain";
NSInteger kDSFoldersApiMissingParamErrorCode = 234513;

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
    static DSFoldersApi *sharedAPI;
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
/// Gets a list of the folders for the account.
/// Retrieves a list of the folders for the account, including the folder hierarchy. You can specify whether to return just the template folder or template folder and normal folders by setting the `template` query string parameter.
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSFoldersApi_ListOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSFoldersResponse*
-(NSNumber*) listWithAccountId:
(NSString*) accountId 

 options:(DSFoldersApi_ListOptions*) options
 completionHandler: (void (^)(DSFoldersResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSFoldersApiErrorDomain code:kDSFoldersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/folders"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
        }
        if(options.includeItems != nil) {
            queryParams[@"include_items"] = options.includeItems;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
        }
        if(options.template != nil) {
            queryParams[@"template"] = options.template;
        }
        if(options.userFilter != nil) {
            queryParams[@"user_filter"] = options.userFilter;
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
                              responseType: @"DSFoldersResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSFoldersResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets a list of the envelopes in the specified folder.
/// Retrieves a list of the envelopes in the specified folder. You can narrow the query by specifying search criteria in the query string parameters.
/// @param accountId The external account number (int) or account ID Guid./// @param folderId The ID of the folder being accessed.

/// @param DSFoldersApi_ListItemsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSFolderItemsResponse*
-(NSNumber*) listItemsWithAccountId:
(NSString*) accountId  folderId:(NSString*) folderId 

 options:(DSFoldersApi_ListItemsOptions*) options
 completionHandler: (void (^)(DSFolderItemsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSFoldersApiErrorDomain code:kDSFoldersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSFoldersApiErrorDomain code:kDSFoldersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/folders/{folderId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.fromDate != nil) {
            queryParams[@"from_date"] = options.fromDate;
        }
        if(options.includeItems != nil) {
            queryParams[@"include_items"] = options.includeItems;
        }
        if(options.ownerEmail != nil) {
            queryParams[@"owner_email"] = options.ownerEmail;
        }
        if(options.ownerName != nil) {
            queryParams[@"owner_name"] = options.ownerName;
        }
        if(options.searchText != nil) {
            queryParams[@"search_text"] = options.searchText;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
        }
        if(options.status != nil) {
            queryParams[@"status"] = options.status;
        }
        if(options.toDate != nil) {
            queryParams[@"to_date"] = options.toDate;
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
                              responseType: @"DSFolderItemsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSFolderItemsResponse*)data, error);
                                }
                           }
          ];
}

///
/// Moves an envelope from its current folder to the specified folder.
/// Moves envelopes to the specified folder.
/// @param accountId The external account number (int) or account ID Guid./// @param folderId The ID of the folder being accessed.
/// @param foldersRequest  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSFoldersResponse*
-(NSNumber*) moveEnvelopesWithAccountId:
(NSString*) accountId  folderId:(NSString*) folderId 
 foldersRequest:(DSFoldersRequest*) foldersRequest

 completionHandler: (void (^)(DSFoldersResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSFoldersApiErrorDomain code:kDSFoldersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        NSParameterAssert(folderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folderId"] };
            NSError* error = [NSError errorWithDomain:kDSFoldersApiErrorDomain code:kDSFoldersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/folders/{folderId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
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
    bodyParam = foldersRequest;

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
                              responseType: @"DSFoldersResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSFoldersResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets a list of envelopes in folders matching the specified criteria.
/// Retrieves a list of envelopes that match the criteria specified in the query.  If the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.
/// @param accountId The external account number (int) or account ID Guid./// @param searchFolderId Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature.

/// @param DSFoldersApi_SearchOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSFolderItemResponse*
-(NSNumber*) searchWithAccountId:
(NSString*) accountId  searchFolderId:(NSString*) searchFolderId 

 options:(DSFoldersApi_SearchOptions*) options
 completionHandler: (void (^)(DSFolderItemResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSFoldersApiErrorDomain code:kDSFoldersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'searchFolderId' is set
    if (searchFolderId == nil) {
        NSParameterAssert(searchFolderId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"searchFolderId"] };
            NSError* error = [NSError errorWithDomain:kDSFoldersApiErrorDomain code:kDSFoldersApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/search_folders/{searchFolderId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (searchFolderId != nil) {
        pathParams[@"searchFolderId"] = searchFolderId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.all != nil) {
            queryParams[@"all"] = options.all;
        }
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.fromDate != nil) {
            queryParams[@"from_date"] = options.fromDate;
        }
        if(options.includeRecipients != nil) {
            queryParams[@"include_recipients"] = options.includeRecipients;
        }
        if(options.order != nil) {
            queryParams[@"order"] = options.order;
        }
        if(options.orderBy != nil) {
            queryParams[@"order_by"] = options.orderBy;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
        }
        if(options.toDate != nil) {
            queryParams[@"to_date"] = options.toDate;
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
                              responseType: @"DSFolderItemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSFolderItemResponse*)data, error);
                                }
                           }
          ];
}


@end
