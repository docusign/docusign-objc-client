#import <DSESBulkEnvelopesApi.h>
#import <DSESQueryParamCollection.h>
#import <DSESApiClient.h>
#import <DSESBulkEnvelopeStatus.h>
#import <DSESBulkEnvelopesResponse.h>
#import <DSESBulkRecipientsRequest.h>
#import <DSESBulkRecipientsResponse.h>
#import <DSESBulkRecipientsSummaryResponse.h>
#import <DSESBulkRecipientsUpdateResponse.h>
#import <DSESErrorDetails.h>



@implementation DSESBulkEnvelopesApi_GetOptions
@end


@implementation DSESBulkEnvelopesApi_GetRecipientsOptions
@end


@implementation DSESBulkEnvelopesApi_ListOptions
@end



@interface DSESBulkEnvelopesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation DSESBulkEnvelopesApi

NSString* kDSESBulkEnvelopesApiErrorDomain = @"DSESBulkEnvelopesApiErrorDomain";
NSInteger kDSESBulkEnvelopesApiMissingParamErrorCode = 234513;

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
/// Deletes the bulk recipient file from an envelope.
/// Deletes the bulk recipient file from an envelope. This cannot be used if the envelope has been sent.  After using this, the `bulkRecipientsUri` property is not returned in subsequent GET calls for the envelope, but the recipient will remain as a bulk recipient.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
///
/// @returns DSESBulkRecipientsUpdateResponse*
///
-(NSURLSessionTask*) deleteRecipientsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    completionHandler: (void (^)(DSESBulkRecipientsUpdateResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (recipientId != nil) {
        pathParams[@"recipientId"] = recipientId;
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
                              responseType: @"DSESBulkRecipientsUpdateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESBulkRecipientsUpdateResponse*)data, error);
                                }
                            }];
}

///
/// Gets the status of a specified bulk send operation.
/// Retrieves the status information of a single bulk recipient batch. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. 
/// @param accountId The external account number (int) or account ID Guid.
/// @param batchId 
///
///
/// @param DSESBulkEnvelopesApi_GetOptions Options for modifying the request.
/// @returns DSESBulkEnvelopeStatus*
///
-(NSURLSessionTask*) getWithAccountId:
    (NSString*) accountId 
    batchId:(NSString*) batchId 
    options:(DSESBulkEnvelopesApi_GetOptions*) options
    completionHandler: (void (^)(DSESBulkEnvelopeStatus* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'batchId' is set
    if (batchId == nil) {
        NSParameterAssert(batchId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"batchId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/bulk_envelopes/{batchId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (batchId != nil) {
        pathParams[@"batchId"] = batchId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
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
                              responseType: @"DSESBulkEnvelopeStatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESBulkEnvelopeStatus*)data, error);
                                }
                            }];
}

///
/// Gets the bulk recipient file from an envelope.
/// Retrieves the bulk recipient file information from an envelope that has a bulk recipient.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
/// @param DSESBulkEnvelopesApi_GetRecipientsOptions Options for modifying the request.
/// @returns DSESBulkRecipientsResponse*
///
-(NSURLSessionTask*) getRecipientsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    options:(DSESBulkEnvelopesApi_GetRecipientsOptions*) options
    completionHandler: (void (^)(DSESBulkRecipientsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (recipientId != nil) {
        pathParams[@"recipientId"] = recipientId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.includeTabs != nil) {
            queryParams[@"include_tabs"] = options.includeTabs;
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
                              responseType: @"DSESBulkRecipientsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESBulkRecipientsResponse*)data, error);
                                }
                            }];
}

///
/// Gets status information about bulk recipient batches.
/// Retrieves status information about all the bulk recipient batches. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. The response includes general information about each bulk recipient batch.   The response returns information about the envelopes sent with bulk recipient batches, including the `batchId` property, which can be used to retrieve a more detailed status of individual bulk recipient batches.
/// @param accountId The external account number (int) or account ID Guid.
///
///
/// @param DSESBulkEnvelopesApi_ListOptions Options for modifying the request.
/// @returns DSESBulkEnvelopesResponse*
///
-(NSURLSessionTask*) listWithAccountId:
    (NSString*) accountId 
    options:(DSESBulkEnvelopesApi_ListOptions*) options
    completionHandler: (void (^)(DSESBulkEnvelopesResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/bulk_envelopes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
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
                              responseType: @"DSESBulkEnvelopesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESBulkEnvelopesResponse*)data, error);
                                }
                            }];
}

///
/// Adds or replaces envelope bulk recipients.
/// Updates the bulk recipients in a draft envelope using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param bulkRecipientsRequest  
///
/// @returns DSESBulkRecipientsSummaryResponse*
///
-(NSURLSessionTask*) updateRecipientsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    bulkRecipientsRequest:(DSESBulkRecipientsRequest*) bulkRecipientsRequest
    completionHandler: (void (^)(DSESBulkRecipientsSummaryResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESBulkEnvelopesApiErrorDomain code:kDSESBulkEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (recipientId != nil) {
        pathParams[@"recipientId"] = recipientId;
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
    bodyParam = bulkRecipientsRequest;

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
                              responseType: @"DSESBulkRecipientsSummaryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESBulkRecipientsSummaryResponse*)data, error);
                                }
                            }];
}



@end
