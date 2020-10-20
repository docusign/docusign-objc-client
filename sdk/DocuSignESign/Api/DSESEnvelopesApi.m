#import <DSESEnvelopesApi.h>
#import <DSESQueryParamCollection.h>
#import <DSESApiClient.h>
#import <DSESAttachment.h>
#import <DSESChunkedUploadRequest.h>
#import <DSESChunkedUploadResponse.h>
#import <DSESConsoleViewRequest.h>
#import <DSESConsumerDisclosure.h>
#import <DSESCorrectViewRequest.h>
#import <DSESCustomFields.h>
#import <DSESCustomFieldsEnvelope.h>
#import <DSESDocumentFieldsInformation.h>
#import <DSESDocumentTemplateList.h>
#import <DSESDocumentVisibilityList.h>
#import <DSESEmailSettings.h>
#import <DSESEnvelope.h>
#import <DSESEnvelopeAttachmentsRequest.h>
#import <DSESEnvelopeAttachmentsResult.h>
#import <DSESEnvelopeAuditEventResponse.h>
#import <DSESEnvelopeDefinition.h>
#import <DSESEnvelopeDocument.h>
#import <DSESEnvelopeDocumentsResult.h>
#import <DSESEnvelopeFormData.h>
#import <DSESEnvelopeIdsRequest.h>
#import <DSESEnvelopeNotificationRequest.h>
#import <DSESEnvelopeSummary.h>
#import <DSESEnvelopeUpdateSummary.h>
#import <DSESEnvelopesInformation.h>
#import <DSESErrorDetails.h>
#import <DSESLockInformation.h>
#import <DSESLockRequest.h>
#import <DSESNotification.h>
#import <DSESPageImages.h>
#import <DSESPageRequest.h>
#import <DSESRecipientViewRequest.h>
#import <DSESRecipients.h>
#import <DSESRecipientsUpdateSummary.h>
#import <DSESReturnUrlRequest.h>
#import <DSESTabs.h>
#import <DSESTemplateDocumentVisibilityList.h>
#import <DSESTemplateInformation.h>
#import <DSESUserSignature.h>
#import <DSESViewUrl.h>



@implementation DSESEnvelopesApi_ApplyTemplateOptions
@end


@implementation DSESEnvelopesApi_ApplyTemplateToDocumentOptions
@end


@implementation DSESEnvelopesApi_CreateEnvelopeOptions
@end


@implementation DSESEnvelopesApi_CreateRecipientOptions
@end


@implementation DSESEnvelopesApi_GetChunkedUploadOptions
@end


@implementation DSESEnvelopesApi_GetConsumerDisclosureOptions
@end


@implementation DSESEnvelopesApi_GetConsumerDisclosureDefaultOptions
@end


@implementation DSESEnvelopesApi_GetDocumentOptions
@end


@implementation DSESEnvelopesApi_GetDocumentPageImageOptions
@end


@implementation DSESEnvelopesApi_GetDocumentTabsOptions
@end


@implementation DSESEnvelopesApi_GetEnvelopeOptions
@end


@implementation DSESEnvelopesApi_GetPagesOptions
@end


@implementation DSESEnvelopesApi_GetRecipientInitialsImageOptions
@end


@implementation DSESEnvelopesApi_GetRecipientSignatureImageOptions
@end


@implementation DSESEnvelopesApi_ListDocumentsOptions
@end


@implementation DSESEnvelopesApi_ListRecipientsOptions
@end


@implementation DSESEnvelopesApi_ListStatusOptions
@end


@implementation DSESEnvelopesApi_ListStatusChangesOptions
@end


@implementation DSESEnvelopesApi_ListTabsOptions
@end


@implementation DSESEnvelopesApi_ListTemplatesOptions
@end


@implementation DSESEnvelopesApi_ListTemplatesForDocumentOptions
@end


@implementation DSESEnvelopesApi_UpdateOptions
@end


@implementation DSESEnvelopesApi_UpdateChunkedUploadOptions
@end


@implementation DSESEnvelopesApi_UpdateRecipientsOptions
@end



@interface DSESEnvelopesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation DSESEnvelopesApi

NSString* kDSESEnvelopesApiErrorDomain = @"DSESEnvelopesApiErrorDomain";
NSInteger kDSESEnvelopesApiMissingParamErrorCode = 234513;

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
/// Adds templates to an envelope.
/// Adds templates to the specified envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param documentTemplateList  
/// @param DSESEnvelopesApi_ApplyTemplateOptions Options for modifying the request.
/// @returns DSESDocumentTemplateList*
///
-(NSURLSessionTask*) applyTemplateWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentTemplateList:(DSESDocumentTemplateList*) documentTemplateList
    options:(DSESEnvelopesApi_ApplyTemplateOptions*) options
    completionHandler: (void (^)(DSESDocumentTemplateList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/templates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.preserveTemplateRecipient != nil) {
            queryParams[@"preserve_template_recipient"] = options.preserveTemplateRecipient;
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
    bodyParam = documentTemplateList;

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
                              responseType: @"DSESDocumentTemplateList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentTemplateList*)data, error);
                                }
                            }];
}

///
/// Adds templates to a document in an  envelope.
/// Adds templates to a document in the specified envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
/// @param documentTemplateList  
/// @param DSESEnvelopesApi_ApplyTemplateToDocumentOptions Options for modifying the request.
/// @returns DSESDocumentTemplateList*
///
-(NSURLSessionTask*) applyTemplateToDocumentWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    documentTemplateList:(DSESDocumentTemplateList*) documentTemplateList
    options:(DSESEnvelopesApi_ApplyTemplateToDocumentOptions*) options
    completionHandler: (void (^)(DSESDocumentTemplateList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.preserveTemplateRecipient != nil) {
            queryParams[@"preserve_template_recipient"] = options.preserveTemplateRecipient;
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
    bodyParam = documentTemplateList;

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
                              responseType: @"DSESDocumentTemplateList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentTemplateList*)data, error);
                                }
                            }];
}

///
/// Initiate a new ChunkedUpload.
/// 
/// @param accountId The external account number (int) or account ID Guid.
///
/// @param chunkedUploadRequest  
///
/// @returns DSESChunkedUploadResponse*
///
-(NSURLSessionTask*) createChunkedUploadWithAccountId:
    (NSString*) accountId 
    chunkedUploadRequest:(DSESChunkedUploadRequest*) chunkedUploadRequest
    completionHandler: (void (^)(DSESChunkedUploadResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/chunked_uploads"];

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
    bodyParam = chunkedUploadRequest;

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
                              responseType: @"DSESChunkedUploadResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESChunkedUploadResponse*)data, error);
                                }
                            }];
}

///
/// Returns a URL to the authentication view UI.
/// Returns a URL that allows you to embed the authentication view of the DocuSign UI in your applications.
/// @param accountId The external account number (int) or account ID Guid.
///
/// @param consoleViewRequest  
///
/// @returns DSESViewUrl*
///
-(NSURLSessionTask*) createConsoleViewWithAccountId:
    (NSString*) accountId 
    consoleViewRequest:(DSESConsoleViewRequest*) consoleViewRequest
    completionHandler: (void (^)(DSESViewUrl* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/views/console"];

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
    bodyParam = consoleViewRequest;

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
                              responseType: @"DSESViewUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESViewUrl*)data, error);
                                }
                            }];
}

///
/// Returns a URL to the envelope correction UI.
/// Returns a URL that allows you to embed the envelope correction view of the DocuSign UI in your applications.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param correctViewRequest  
///
/// @returns DSESViewUrl*
///
-(NSURLSessionTask*) createCorrectViewWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    correctViewRequest:(DSESCorrectViewRequest*) correctViewRequest
    completionHandler: (void (^)(DSESViewUrl* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/correct"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = correctViewRequest;

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
                              responseType: @"DSESViewUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESViewUrl*)data, error);
                                }
                            }];
}

///
/// Updates envelope custom fields for an envelope.
/// Updates the envelope custom fields for draft and in-process envelopes.  Each custom field used in an envelope must have a unique name.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param customFields  
///
/// @returns DSESCustomFields*
///
-(NSURLSessionTask*) createCustomFieldsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    customFields:(DSESCustomFields*) customFields
    completionHandler: (void (^)(DSESCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/custom_fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = customFields;

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
                              responseType: @"DSESCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCustomFields*)data, error);
                                }
                            }];
}

///
/// Creates custom document fields in an existing envelope document.
/// Creates custom document fields in an existing envelope document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation  
///
/// @returns DSESDocumentFieldsInformation*
///
-(NSURLSessionTask*) createDocumentFieldsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    documentFieldsInformation:(DSESDocumentFieldsInformation*) documentFieldsInformation
    completionHandler: (void (^)(DSESDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
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
    bodyParam = documentFieldsInformation;

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
                              responseType: @"DSESDocumentFieldsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentFieldsInformation*)data, error);
                                }
                            }];
}

///
/// Returns a URL to the edit view UI.
/// Returns a URL that allows you to embed the edit view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign editing view.   Upon sending completion, the user is returned to the return URL provided by the API application.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param returnUrlRequest  
///
/// @returns DSESViewUrl*
///
-(NSURLSessionTask*) createEditViewWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    returnUrlRequest:(DSESReturnUrlRequest*) returnUrlRequest
    completionHandler: (void (^)(DSESViewUrl* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/edit"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = returnUrlRequest;

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
                              responseType: @"DSESViewUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESViewUrl*)data, error);
                                }
                            }];
}

///
/// Adds email setting overrides to an envelope.
/// Adds email override settings, changing the email address to reply to an email address, name, or the BCC for email archive information, for the envelope. Note that adding email settings will only affect email communications that occur after the addition was made.  ### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copies or Certified Deliveries Recipient Type.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param emailSettings  
///
/// @returns DSESEmailSettings*
///
-(NSURLSessionTask*) createEmailSettingsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    emailSettings:(DSESEmailSettings*) emailSettings
    completionHandler: (void (^)(DSESEmailSettings* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = emailSettings;

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
                              responseType: @"DSESEmailSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEmailSettings*)data, error);
                                }
                            }];
}

///
/// Creates an envelope.
/// Creates an envelope.   Using this function you can: * Create an envelope and send it. * Create an envelope from an existing template and send it.  In either case, you can choose to save the envelope as a draft envelope instead of sending it by setting the request's `status` property to `created` instead of `sent`.  ## Sending Envelopes  Documents can be included with the Envelopes::create call itself or a template can include documents. Documents can be added by using a multi-part/form request or by using the `documentBase64` field of the [`document` object](#/definitions/document)  ### Recipient Types An [`envelopeDefinition` object](#/definitions/envelopeDefinition) is used as the method's body. Envelope recipients can be defined in the envelope or in templates. The `envelopeDefinition` object's `recipients` field is an [`EnvelopeRecipients` resource object](#/definitions/EnvelopeRecipients). It includes arrays of the seven types of recipients defined by DocuSign:  Recipient type | Object definition -------------- | ----------------- agent (can add name and email information for later recipients/signers) | [`agent`](#/definitions/agent) carbon copy (receives a copy of the documents) | [`carbonCopy`](#/definitions/carbonCopy) certified delivery  (receives a copy of the documents and must acknowledge receipt) | [`certifiedDelivery`](#/definitions/certifiedDelivery) editor (can change recipients and document fields for later recipients/signers) | [`editor`](#/definitions/editor) in-person signer (\"hosts\" someone who signs in-person) | [`inPersonSigner`](#/definitions/inPersonSigner) intermediary (can add name and email information for some later recipients/signers.) | [`intermediary`](#/definitions/intermediary) signer (signs and/or updates document fields) | [`signer`](#/definitions/signer)  Additional information about the different types of recipients is available from the [`EnvelopeRecipients` resource page](../../EnvelopeRecipients) and from the [Developer Center](https://www.docusign.com/developer-center/explore/features/recipients)  ### Tabs Tabs (also referred to as `tags` and as `fields` in the web sending user interface), can be defined in the `envelopeDefinition`, in templates, by transforming PDF Form Fields, or by using Composite Templates (see below).  Defining tabs: the `inPersonSigner`, and `signer` recipient objects include a `tabs` field. It is an [`EnvelopeTabs` resource object](#/definitions/EnvelopeTabs). It includes arrays of the 24 different tab types available. See the [`EnvelopeTabs` resource](../../EnvelopeTabs) for more information.  ## Using Templates Envelopes use specific people or groups as recipients. Templates can specify a role, eg `account_manager.` When a template is used in an envelope, the roles must be replaced with specific people or groups.  When you create an envelope using a `templateId`, the different recipient type objects within the [`EnvelopeRecipients` object](#/definitions/EnvelopeRecipients) are used to assign recipients to the template's roles via the `roleName` property. The recipient objects can also override settings that were specified in the template, and set values for tab fields that were defined in the template.  ### Message Lock When a template is added or applied to an envelope and the template has a locked email subject and message, that subject and message are used for the envelope and cannot be changed even if another locked template is subsequently added or applied to the envelope. The field `messageLock` is used to lock the email subject and message.  If an email subject or message is entered before adding or applying a template with `messageLock` **true**, the email subject and message is overwritten with the locked email subject and message from the template.  ## Envelope Status The status of sent envelopes can be determined through the DocuSign webhook system or by polling. Webhooks are highly recommended: they provide your application with the quickest updates when an envelope's status changes. DocuSign limits polling to once every 15 minutes or less frequently.  When a webhook is used, DocuSign calls your application, via the URL you provide, with a notification XML message.   See the [Webhook recipe](https://www.docusign.com/developer-center/recipes/webhook-status) for examples and live demos of using webhooks.  ## Webhook Options The two webhook options, *eventNotification* and *Connect* use the same notification mechanism and message formats. eventNotification is used to create a webhook for a specific envelope sent via the API. Connect webhooks can be used for any envelope sent from an account, from any user, from any client.   ### eventNotification Webhooks The Envelopes::create method includes an optional [eventNotification object](#definition-eventNotification) that adds a webhook to the envelope. eventNotification webhooks are available for all DocuSign accounts with API access.  ### Connect Webhooks Connect can be used to create a webhook for all envelopes sent by all users in an account, either through the API or via other DocuSign clients (web, mobile, etc). Connect configurations are independent of specific envelopes. A Connect configuration includes a filter that may be used to limit the webhook to specific users, envelope statuses, etc.   Connect configurations may be created and managed using the [ConnectConfigurations resource](../../Connect/ConnectConfigurations). Configurations can also be created and managed from the Administration tool accessed by selecting \"Go to Admin\" from the menu next to your picture on the DocuSign web app. See the Integrations/Connect section of the Admin tool. For repeatability, and to minimize support questions, creating Connect configurations via the API is recommended, especially for ISVs.  Connect is available for some DocuSign account types. Please contact DocuSign Sales for more information.  ## Composite Templates  The Composite Templates feature, like [compositing in film production](https://en.wikipedia.org/wiki/Compositing), enables you to *overlay* document, recipient, and tab definitions from multiple sources, including PDF Form Field definitions, templates defined on the server, and more.  Each Composite Template consists of optional elements: server templates, inline templates, PDF Metadata templates, and documents.  * The Composite Template ID is an optional element used to identify the composite template. It is used as a reference when adding document object information via a multi-part HTTP message. If used, the document content-disposition must include the `compositeTemplateId` to which the document should be added. If `compositeTemplateId` is not specified in the content-disposition, the document is applied based on the `documentId` only. If no document object is specified, the composite template inherits the first document.  * Server Templates are server-side templates stored on the DocuSign platform. If supplied, they are overlaid into the envelope in the order of their Sequence value.  * Inline Templates provide a container to add documents, recipients, tabs, and custom fields. If inline templates are supplied, they are overlaid into the envelope in the order of their Sequence value.  * Document objects are optional structures that provide a container to pass in a document or form. If this object is not included, the composite template inherits the *first* document it finds from a server template or inline template, starting with the lowest sequence value.  PDF Form objects are only transformed from the document object. DocuSign does not derive PDF form properties from server templates or inline templates. To instruct DocuSign to transform fields from the PDF form, set `transformPdfFields` to \"true\" for the document. See the Transform PDF Fields section for more information about process.  * PDF Metadata Templates provide a container to embed design-time template information into a PDF document. DocuSign uses this information when processing the Envelope. This convention allows the document to carry the signing instructions with it, so that less information needs to be provided at run-time through an inline template or synchronized with an external structure like a server template. PDF Metadata templates are stored in the Metadata layer of a PDF in accordance with Acrobat's XMP specification. DocuSign will only find PDF Metadata templates inside documents passed in the Document object (see below). If supplied, the PDF metadata template will be overlaid into the envelope in the order of its Sequence value.  ### Compositing the definitions Each Composite Template adds a new document and templates overlay into the envelope. For each Composite Template these rules are applied:  * Templates are overlaid in the order of their Sequence value. * If Document is not passed into the Composite Template's `document` field, the *first* template's document (based on the template's Sequence value) is used. * Last in wins in all cases except for the document (i.e. envelope information, recipient information, secure field information). There is no special casing.  For example, if you want higher security on a tab, then that needs to be specified in a later template (by sequence number) then where the tab is included. If you want higher security on a role recipient, then it needs to be in a later template then where that role recipient is specified.  * Recipient matching is based on Recipient Role and Routing Order. If there are matches, the recipient information is merged together. A final pass is done on all Composite Templates, after all template overlays have been applied, to collapse recipients with the same email, username and routing order. This prevents having the same recipients at the same routing order.  * If you specify in a template that a recipient is locked, once that recipient is overlaid the recipient attributes can no longer be changed. The only items that can be changed for the recipient in this case are the email, username, access code and IDCheckInformationInput.  * Tab matching is based on Tab Labels, Tab Types and Documents. If a Tab Label matches but the Document is not supplied, the Tab is overlaid for all the Documents.  For example, if you have a simple inline template with only one tab in it with a label and a value, the Signature, Initial, Company, Envelope ID, User Name tabs will only be matched and collapsed if they fall in the exact same X and Y locations.  * roleName and tabLabel matching is case sensitive.  * The defaultRecipient field enables you to specify which recipient the generated tabs from a PDF form are mapped to. You can also set PDF form generated tabs to a recipient other than the DefaultRecipient by specifying the mapping of the tab label that is created to one of the template recipients.  * You can use tabLabel wild carding to map a series of tabs from the PDF form. To use this you must end a tab label with \"\\*\" and then the system matches tabs that start with the label.  * If no DefaultRecipient is specified, tabs must be explicitly mapped to recipients in order to be generated from the form. Unmapped form objects will not be generated into their DocuSign equivalents. (In the case of Signature/Initials, the tabs will be disregarded entirely; in the case of pdf text fields, the field data will be flattened on the Envelope document, but there will not be a corresponding DocuSign data tab.)  ### Including the Document Content for Composite Templates Document content can be supplied inline, using the `documentBase64` or can be included in a multi-part HTTP message.  If a multi-part message is used and there are multiple Composite Templates, the document content-disposition can include the `compositeTemplateId` to which the document should be added. Using the `compositeTemplateId` sets which documents are associated with particular composite templates. An example of this usage is:  ```    --5cd3320a-5aac-4453-b3a4-cbb52a4cba5d    Content-Type: application/pdf    Content-Disposition: file; filename=\"eula.pdf\"; documentId=1; compositeTemplateId=\"1\"    Content-Transfer-Encoding: base64 ```  ### PDF Form Field Transformation Only the following PDF Form FieldTypes will be transformed to DocuSign tabs: CheckBox, DateTime, ListBox, Numeric, Password, Radio, Signature, and Text  Field Properties that will be transformed: Read Only, Required, Max Length, Positions, and Initial Data.  When transforming a *PDF Form Digital Signature Field,* the following rules are used:  If the PDF Field Name Contains | Then the DocuSign Tab Will be ------- | -------- DocuSignSignHere or eSignSignHere | Signature DocuSignSignHereOptional or eSignSignHereOptional | Optional Signature DocuSignInitialHere or eSignInitialHere | Initials DocuSignInitialHereOptional or eSignInitialHereOptional | Optional Initials  Any other PDF Form Digital Signature Field will be transformed to a DocuSign Signature tab  When transforming *PDF Form Text Fields,* the following rules are used:  If the PDF Field Name Contains | Then the DocuSign Tab Will be ------- | -------- DocuSignSignHere or eSignSignHere | Signature DocuSignSignHereOptional or eSignSignHereOptional | Optional Signature DocuSignInitialHere or eSignInitialHere | Initials DocuSignInitialHereOptional or eSignInitialHereOptional | Optional Initials DocuSignEnvelopeID or eSignEnvelopeID | EnvelopeID DocuSignCompany or eSignCompany | Company DocuSignDateSigned or eSignDateSigned | Date Signed DocuSignTitle or eSignTitle | Title DocuSignFullName or eSignFullName |  Full Name DocuSignSignerAttachmentOptional or eSignSignerAttachmentOptional | Optional Signer Attachment  Any other PDF Form Text Field will be transformed to a DocuSign data (text) tab.  PDF Form Field Names that include \"DocuSignIgnoreTransform\" or \"eSignIgnoreTransform\" will not be transformed.  PDF Form Date fields will be transformed to Date Signed fields if their name includes DocuSignDateSigned or eSignDateSigned.  ## Template Email Subject Merge Fields This feature enables you to insert recipient name and email address merge fields into the email subject line when creating or sending from a template.  The merge fields, based on the recipient's `roleName`, are added to the `emailSubject` when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient.  If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.  * To add a recipient's name in the subject line add the following text in the `emailSubject` when creating the template or when sending an envelope from a template:     [[<roleName>_UserName]]     Example:     `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`  * To add a recipient's email address in the subject line add the following text in the emailSubject when creating the template or when sending an envelope from a template:     [[<roleName>_Email]]     Example:     `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`  In both cases the <roleName> is the recipient's `roleName` in the template.  For cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.  ## Branding an envelope The following rules are used to determine the `brandId` used in an envelope:  * If a `brandId` is specified in the envelope/template and that brandId is available to the account, that brand is used in the envelope. * If more than one template is used in an envelope and more than one `brandId` is specified, the first `brandId` specified is used throughout the envelope. * In cases where no brand is specified and the sender belongs to a Group; if there is only one brand associated with the Group, then that brand is used in the envelope. Otherwise, the account's default signing brand is used. * For envelopes that do not meet any of the previous criteria, the account's default signing brand is used for the envelope.  ## BCC Email address feature  The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, don't use the BCC Email field. Use a Carbon Copy or Certified Delivery Recipient type.  ## Merge Recipient Roles for Draft Envelopes When an envelope with multiple templates is sent, the recipients from the templates are merged according to the template roles, and empty recipients are removed. When creating an envelope with multiple templates, but not sending it (keeping it in a created state), duplicate recipients are not merged, which could cause leave duplicate recipients in the envelope.  To prevent this, the query parameter `merge_roles_on_draft` should be added when posting a draft envelope (status=created) with multiple templates. Doing this will merge template roles and remove empty recipients.  ###### Note: DocuSign recommends that the `merge_roles_on_draft` query parameter be used anytime you are creating an envelope with multiple templates and keeping it in draft (created) status.
/// @param accountId The external account number (int) or account ID Guid.
///
/// @param envelopeDefinition  
/// @param DSESEnvelopesApi_CreateEnvelopeOptions Options for modifying the request.
/// @returns DSESEnvelopeSummary*
///
-(NSURLSessionTask*) createEnvelopeWithAccountId:
    (NSString*) accountId 
    envelopeDefinition:(DSESEnvelopeDefinition*) envelopeDefinition
    options:(DSESEnvelopesApi_CreateEnvelopeOptions*) options
    completionHandler: (void (^)(DSESEnvelopeSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.cdseMode != nil) {
            queryParams[@"cdse_mode"] = options.cdseMode;
        }
        if(options.changeRoutingOrder != nil) {
            queryParams[@"change_routing_order"] = options.changeRoutingOrder;
        }
        if(options.completedDocumentsOnly != nil) {
            queryParams[@"completed_documents_only"] = options.completedDocumentsOnly;
        }
        if(options.mergeRolesOnDraft != nil) {
            queryParams[@"merge_roles_on_draft"] = options.mergeRolesOnDraft;
        }
        if(options.tabLabelExactMatches != nil) {
            queryParams[@"tab_label_exact_matches"] = options.tabLabelExactMatches;
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
    bodyParam = envelopeDefinition;

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
                              responseType: @"DSESEnvelopeSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeSummary*)data, error);
                                }
                            }];
}

///
/// Lock an envelope.
/// Locks the specified envelope, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the envelope.  ###### Note: Users must have envelope locking capability enabled to use this function (userSetting `canLockEnvelopes` must be  set to true for the user).
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param lockRequest  
///
/// @returns DSESLockInformation*
///
-(NSURLSessionTask*) createLockWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    lockRequest:(DSESLockRequest*) lockRequest
    completionHandler: (void (^)(DSESLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/lock"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = lockRequest;

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
                              responseType: @"DSESLockInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESLockInformation*)data, error);
                                }
                            }];
}

///
/// Adds one or more recipients to an envelope.
/// Adds one or more recipients to an envelope.  For an in process envelope, one that has been sent and has not been completed or voided, an email is sent to a new recipient when they are reached in the routing order. If the new recipient's routing order is before or the same as the envelope's next recipient, an email is only sent if the optional `resend_envelope` query string is set to **true**.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param recipients  
/// @param DSESEnvelopesApi_CreateRecipientOptions Options for modifying the request.
/// @returns DSESRecipients*
///
-(NSURLSessionTask*) createRecipientWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipients:(DSESRecipients*) recipients
    options:(DSESEnvelopesApi_CreateRecipientOptions*) options
    completionHandler: (void (^)(DSESRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.resendEnvelope != nil) {
            queryParams[@"resend_envelope"] = options.resendEnvelope;
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
    bodyParam = recipients;

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
                              responseType: @"DSESRecipients*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESRecipients*)data, error);
                                }
                            }];
}

///
/// Returns a URL to the recipient view UI.
/// Returns a URL that allows you to embed the recipient view of the DocuSign UI in your applications. This call cannot be used to view draft envelopes, since those envelopes have not been sent.   Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView.   An entry is added into the Security Level section of the DocuSign Certificate of Completion that reflects the `securityDomain` and `authenticationMethod` properties used to verify the user identity.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param recipientViewRequest  
///
/// @returns DSESViewUrl*
///
-(NSURLSessionTask*) createRecipientViewWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientViewRequest:(DSESRecipientViewRequest*) recipientViewRequest
    completionHandler: (void (^)(DSESViewUrl* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/recipient"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = recipientViewRequest;

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
                              responseType: @"DSESViewUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESViewUrl*)data, error);
                                }
                            }];
}

///
/// Returns a URL to the sender view UI.
/// Returns a URL that allows you to embed the sender view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign sending view.   Upon sending completion, the user is returned to the return URL provided by the API application.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param returnUrlRequest  
///
/// @returns DSESViewUrl*
///
-(NSURLSessionTask*) createSenderViewWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    returnUrlRequest:(DSESReturnUrlRequest*) returnUrlRequest
    completionHandler: (void (^)(DSESViewUrl* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/sender"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = returnUrlRequest;

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
                              responseType: @"DSESViewUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESViewUrl*)data, error);
                                }
                            }];
}

///
/// Adds tabs for a recipient.
/// Adds one or more tabs for a recipient.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param tabs  
///
/// @returns DSESTabs*
///
-(NSURLSessionTask*) createTabsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    tabs:(DSESTabs*) tabs
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"];

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
    bodyParam = tabs;

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
                              responseType: @"DSESTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTabs*)data, error);
                                }
                            }];
}

///
/// Delete one or more attachments from a DRAFT envelope.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelopeAttachmentsRequest  
///
/// @returns DSESEnvelopeAttachmentsResult*
///
-(NSURLSessionTask*) deleteAttachmentsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    envelopeAttachmentsRequest:(DSESEnvelopeAttachmentsRequest*) envelopeAttachmentsRequest
    completionHandler: (void (^)(DSESEnvelopeAttachmentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = envelopeAttachmentsRequest;

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
                              responseType: @"DSESEnvelopeAttachmentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeAttachmentsResult*)data, error);
                                }
                            }];
}

///
/// Delete an existing ChunkedUpload.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param chunkedUploadId 
///
///
///
/// @returns DSESChunkedUploadResponse*
///
-(NSURLSessionTask*) deleteChunkedUploadWithAccountId:
    (NSString*) accountId 
    chunkedUploadId:(NSString*) chunkedUploadId 
    completionHandler: (void (^)(DSESChunkedUploadResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'chunkedUploadId' is set
    if (chunkedUploadId == nil) {
        NSParameterAssert(chunkedUploadId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"chunkedUploadId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (chunkedUploadId != nil) {
        pathParams[@"chunkedUploadId"] = chunkedUploadId;
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
                              responseType: @"DSESChunkedUploadResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESChunkedUploadResponse*)data, error);
                                }
                            }];
}

///
/// Deletes envelope custom fields for draft and in-process envelopes.
/// Deletes envelope custom fields for draft and in-process envelopes.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param customFields  
///
/// @returns DSESCustomFields*
///
-(NSURLSessionTask*) deleteCustomFieldsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    customFields:(DSESCustomFields*) customFields
    completionHandler: (void (^)(DSESCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/custom_fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = customFields;

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
                              responseType: @"DSESCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCustomFields*)data, error);
                                }
                            }];
}

///
/// Deletes custom document fields from an existing envelope document.
/// Deletes custom document fields from an existing envelope document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation  
///
/// @returns DSESDocumentFieldsInformation*
///
-(NSURLSessionTask*) deleteDocumentFieldsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    documentFieldsInformation:(DSESDocumentFieldsInformation*) documentFieldsInformation
    completionHandler: (void (^)(DSESDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
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
    bodyParam = documentFieldsInformation;

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
                              responseType: @"DSESDocumentFieldsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentFieldsInformation*)data, error);
                                }
                            }];
}

///
/// Deletes a page from a document in an envelope.
/// Deletes a page from a document in an envelope based on the page number.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
/// @param pageNumber The page number being accessed.
///
///
///
/// @returns void
///
-(NSURLSessionTask*) deleteDocumentPageWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    pageNumber:(NSString*) pageNumber 
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Deletes documents from a draft envelope.
/// Deletes one or more documents from an existing draft envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelopeDefinition  
///
/// @returns DSESEnvelopeDocumentsResult*
///
-(NSURLSessionTask*) deleteDocumentsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    envelopeDefinition:(DSESEnvelopeDefinition*) envelopeDefinition
    completionHandler: (void (^)(DSESEnvelopeDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = envelopeDefinition;

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
                              responseType: @"DSESEnvelopeDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeDocumentsResult*)data, error);
                                }
                            }];
}

///
/// Deletes the email setting overrides for an envelope.
/// Deletes all existing email override settings for the envelope. If you want to delete an individual email override setting, use the PUT and set the value to an empty string. Note that deleting email settings will only affect email communications that occur after the deletion and the normal account email settings are used for future email communications.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESEmailSettings*
///
-(NSURLSessionTask*) deleteEmailSettingsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESEmailSettings* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESEmailSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEmailSettings*)data, error);
                                }
                            }];
}

///
/// Deletes an envelope lock.
/// Deletes the lock from the specified envelope. The `X-DocuSign-Edit` header must be included in the request.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESLockInformation*
///
-(NSURLSessionTask*) deleteLockWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/lock"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESLockInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESLockInformation*)data, error);
                                }
                            }];
}

///
/// Deletes a recipient from an envelope.
/// Deletes the specified recipient file from the specified envelope. This cannot be used if the envelope has been sent.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
///
/// @returns DSESRecipients*
///
-(NSURLSessionTask*) deleteRecipientWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    completionHandler: (void (^)(DSESRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}"];

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
                              responseType: @"DSESRecipients*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESRecipients*)data, error);
                                }
                            }];
}

///
/// Deletes recipients from an envelope.
/// Deletes one or more recipients from a draft or sent envelope. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.  If the envelope is `In Process`, meaning that it has been sent and has not  been completed or voided, recipients that have completed their actions cannot be deleted.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param recipients  
///
/// @returns DSESRecipients*
///
-(NSURLSessionTask*) deleteRecipientsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipients:(DSESRecipients*) recipients
    completionHandler: (void (^)(DSESRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = recipients;

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
                              responseType: @"DSESRecipients*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESRecipients*)data, error);
                                }
                            }];
}

///
/// Deletes the tabs associated with a recipient.
/// Deletes one or more tabs associated with a recipient in a draft envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param tabs  
///
/// @returns DSESTabs*
///
-(NSURLSessionTask*) deleteTabsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    tabs:(DSESTabs*) tabs
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"];

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
    bodyParam = tabs;

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
                              responseType: @"DSESTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTabs*)data, error);
                                }
                            }];
}

///
/// Deletes a template from a document in an existing envelope.
/// Deletes the specified template from a document in an existing envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
/// @param templateId The ID of the template being accessed.
///
///
///
/// @returns void
///
-(NSURLSessionTask*) deleteTemplatesFromDocumentWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    templateId:(NSString*) templateId 
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates/{templateId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Retrieves an attachment from the envelope.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param attachmentId 
///
///
///
/// @returns void
///
-(NSURLSessionTask*) getAttachmentWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    attachmentId:(NSString*) attachmentId 
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments/{attachmentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (attachmentId != nil) {
        pathParams[@"attachmentId"] = attachmentId;
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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Returns a list of attachments associated with the specified envelope
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESEnvelopeAttachmentsResult*
///
-(NSURLSessionTask*) getAttachmentsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESEnvelopeAttachmentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESEnvelopeAttachmentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeAttachmentsResult*)data, error);
                                }
                            }];
}

///
/// Retrieves the current metadata of a ChunkedUpload.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param chunkedUploadId 
///
///
/// @param DSESEnvelopesApi_GetChunkedUploadOptions Options for modifying the request.
/// @returns DSESChunkedUploadResponse*
///
-(NSURLSessionTask*) getChunkedUploadWithAccountId:
    (NSString*) accountId 
    chunkedUploadId:(NSString*) chunkedUploadId 
    options:(DSESEnvelopesApi_GetChunkedUploadOptions*) options
    completionHandler: (void (^)(DSESChunkedUploadResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'chunkedUploadId' is set
    if (chunkedUploadId == nil) {
        NSParameterAssert(chunkedUploadId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"chunkedUploadId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (chunkedUploadId != nil) {
        pathParams[@"chunkedUploadId"] = chunkedUploadId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
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
                              responseType: @"DSESChunkedUploadResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESChunkedUploadResponse*)data, error);
                                }
                            }];
}

///
/// Reserved: Gets the Electronic Record and Signature Disclosure associated with the account.
/// Reserved: Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
/// @param langCode The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Armenian (hy), Armenian (hy), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to Ã¯Â¿Â½browserÃ¯Â¿Â½ to automatically detect the browser language being used by the viewer and display the disclosure in that language.
///
///
/// @param DSESEnvelopesApi_GetConsumerDisclosureOptions Options for modifying the request.
/// @returns DSESConsumerDisclosure*
///
-(NSURLSessionTask*) getConsumerDisclosureWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    langCode:(NSString*) langCode 
    options:(DSESEnvelopesApi_GetConsumerDisclosureOptions*) options
    completionHandler: (void (^)(DSESConsumerDisclosure* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'langCode' is set
    if (langCode == nil) {
        NSParameterAssert(langCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"langCode"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/consumer_disclosure/{langCode}"];

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
    if (langCode != nil) {
        pathParams[@"langCode"] = langCode;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.langCode2 != nil) {
            queryParams[@"langCode"] = options.langCode2;
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
                              responseType: @"DSESConsumerDisclosure*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESConsumerDisclosure*)data, error);
                                }
                            }];
}

///
/// Gets the Electronic Record and Signature Disclosure associated with the account.
/// Retrieves the Electronic Record and Signature Disclosure, with html formatting, associated with the account. You can use an optional query string to set the language for the disclosure.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
/// @param DSESEnvelopesApi_GetConsumerDisclosureDefaultOptions Options for modifying the request.
/// @returns DSESConsumerDisclosure*
///
-(NSURLSessionTask*) getConsumerDisclosureDefaultWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    options:(DSESEnvelopesApi_GetConsumerDisclosureDefaultOptions*) options
    completionHandler: (void (^)(DSESConsumerDisclosure* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/consumer_disclosure"];

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
        if(options.langCode != nil) {
            queryParams[@"langCode"] = options.langCode;
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
                              responseType: @"DSESConsumerDisclosure*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESConsumerDisclosure*)data, error);
                                }
                            }];
}

///
/// Gets a document from an envelope.
/// Retrieves the specified document from the envelope. If the account has the Highlight Data Changes feature enabled, there is an option to request that any changes in the envelope be highlighted.  You can also use this method to retrieve a PDF containing the combined content of all documents and the certificate. If the account has the Highlight Data Changes feature enabled, there is an option to request that any changes in the envelope be highlighted.   To retrieve the combined content replace the `{documentId}` parameter in the endpoint with `combined`. /accounts/{accountId}/envelopes/{envelopeId}/documents/combined
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
///
/// @param DSESEnvelopesApi_GetDocumentOptions Options for modifying the request.
/// @returns NSURL*
///
-(NSURLSessionTask*) getDocumentWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    options:(DSESEnvelopesApi_GetDocumentOptions*) options
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.certificate != nil) {
            queryParams[@"certificate"] = options.certificate;
        }
        if(options.documentsByUserid != nil) {
            queryParams[@"documents_by_userid"] = options.documentsByUserid;
        }
        if(options.encoding != nil) {
            queryParams[@"encoding"] = options.encoding;
        }
        if(options.encrypt != nil) {
            queryParams[@"encrypt"] = options.encrypt;
        }
        if(options.language != nil) {
            queryParams[@"language"] = options.language;
        }
        if(options.recipientId != nil) {
            queryParams[@"recipient_id"] = options.recipientId;
        }
        if(options.sharedUserId != nil) {
            queryParams[@"shared_user_id"] = options.sharedUserId;
        }
        if(options.showChanges != nil) {
            queryParams[@"show_changes"] = options.showChanges;
        }
        if(options.watermark != nil) {
            queryParams[@"watermark"] = options.watermark;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/pdf"]];
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
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}

///
/// Gets a page image from an envelope for display.
/// Retrieves a page image for display from the specified envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
/// @param pageNumber The page number being accessed.
///
///
/// @param DSESEnvelopesApi_GetDocumentPageImageOptions Options for modifying the request.
/// @returns NSURL*
///
-(NSURLSessionTask*) getDocumentPageImageWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    pageNumber:(NSString*) pageNumber 
    options:(DSESEnvelopesApi_GetDocumentPageImageOptions*) options
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/page_image"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.dpi != nil) {
            queryParams[@"dpi"] = options.dpi;
        }
        if(options.maxHeight != nil) {
            queryParams[@"max_height"] = options.maxHeight;
        }
        if(options.maxWidth != nil) {
            queryParams[@"max_width"] = options.maxWidth;
        }
        if(options.showChanges != nil) {
            queryParams[@"show_changes"] = options.showChanges;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/png"]];
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
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}

///
/// Returns tabs on the document.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
///
/// @param DSESEnvelopesApi_GetDocumentTabsOptions Options for modifying the request.
/// @returns DSESTabs*
///
-(NSURLSessionTask*) getDocumentTabsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    options:(DSESEnvelopesApi_GetDocumentTabsOptions*) options
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/tabs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.pageNumbers != nil) {
            queryParams[@"page_numbers"] = options.pageNumbers;
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
                              responseType: @"DSESTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTabs*)data, error);
                                }
                            }];
}

///
/// Gets the email setting overrides for an envelope.
/// Retrieves the email override settings for the specified envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESEmailSettings*
///
-(NSURLSessionTask*) getEmailSettingsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESEmailSettings* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESEmailSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEmailSettings*)data, error);
                                }
                            }];
}

///
/// Gets the status of a envelope.
/// Retrieves the overall status for the specified envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
/// @param DSESEnvelopesApi_GetEnvelopeOptions Options for modifying the request.
/// @returns DSESEnvelope*
///
-(NSURLSessionTask*) getEnvelopeWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    options:(DSESEnvelopesApi_GetEnvelopeOptions*) options
    completionHandler: (void (^)(DSESEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.advancedUpdate != nil) {
            queryParams[@"advanced_update"] = options.advancedUpdate;
        }
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
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
                              responseType: @"DSESEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelope*)data, error);
                                }
                            }];
}

///
/// Returns envelope form data for an existing envelope.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESEnvelopeFormData*
///
-(NSURLSessionTask*) getFormDataWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESEnvelopeFormData* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/form_data"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESEnvelopeFormData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeFormData*)data, error);
                                }
                            }];
}

///
/// Gets envelope lock information.
/// Retrieves general information about the envelope lock.  If the call is made by the locked by user and the request has the same integrator key as original, then the `X-DocuSign-Edit` header and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESLockInformation*
///
-(NSURLSessionTask*) getLockWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/lock"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESLockInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESLockInformation*)data, error);
                                }
                            }];
}

///
/// Gets envelope notification information.
/// Retrieves the envelope notification, reminders and expirations, information for an existing envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESNotification*
///
-(NSURLSessionTask*) getNotificationSettingsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESNotification* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/notification"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESNotification*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESNotification*)data, error);
                                }
                            }];
}

///
/// Returns tabs on the specified page.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
/// @param pageNumber The page number being accessed.
///
///
///
/// @returns DSESTabs*
///
-(NSURLSessionTask*) getPageTabsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    pageNumber:(NSString*) pageNumber 
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/tabs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
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
                              responseType: @"DSESTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTabs*)data, error);
                                }
                            }];
}

///
/// Returns document page image(s) based on input.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
///
/// @param DSESEnvelopesApi_GetPagesOptions Options for modifying the request.
/// @returns DSESPageImages*
///
-(NSURLSessionTask*) getPagesWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    options:(DSESEnvelopesApi_GetPagesOptions*) options
    completionHandler: (void (^)(DSESPageImages* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
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
        if(options.nocache != nil) {
            queryParams[@"nocache"] = options.nocache;
        }
        if(options.showChanges != nil) {
            queryParams[@"show_changes"] = options.showChanges;
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
/// Returns document visibility for the recipients
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
///
/// @returns DSESDocumentVisibilityList*
///
-(NSURLSessionTask*) getRecipientDocumentVisibilityWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    completionHandler: (void (^)(DSESDocumentVisibilityList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility"];

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
                              responseType: @"DSESDocumentVisibilityList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentVisibilityList*)data, error);
                                }
                            }];
}

///
/// Gets the initials image for a user.
/// Retrieves the initials image for the specified user. The image is returned in the same format as it was uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId specified in the endpoint must match the authenticated user's user id and the user must be a member of the account.  The `signatureIdOrName` paramter accepts signature ID or signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly URL encode. If you use the user name, it is likely that the name includes spaces and you might need to URL encode the name before using it in the endpoint.   For example: \"Bob Smith\" to \"Bob%20Smith\"  Older envelopes might only contain chromed images. If getting the non-chromed image fails, try getting the chromed image.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
/// @param DSESEnvelopesApi_GetRecipientInitialsImageOptions Options for modifying the request.
/// @returns NSURL*
///
-(NSURLSessionTask*) getRecipientInitialsImageWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    options:(DSESEnvelopesApi_GetRecipientInitialsImageOptions*) options
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/initials_image"];

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
        if(options.includeChrome != nil) {
            queryParams[@"include_chrome"] = options.includeChrome;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/gif"]];
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
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}

///
/// Gets signature information for a signer or sign-in-person recipient.
/// Retrieves signature information for a signer or sign-in-person recipient.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
///
/// @returns DSESUserSignature*
///
-(NSURLSessionTask*) getRecipientSignatureWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    completionHandler: (void (^)(DSESUserSignature* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature"];

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
                              responseType: @"DSESUserSignature*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESUserSignature*)data, error);
                                }
                            }];
}

///
/// Retrieve signature image information for a signer/sign-in-person recipient.
/// Retrieves the specified user signature image. The image is returned in the same format as uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureIdOrName` parameter accepts signature ID or signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that don't properly URL encode. If you use the user name, it is likely that the name includes spaces and you might need to URL encode the name before using it in the endpoint.   For example: \"Bob Smith\" to \"Bob%20Smith\"  Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
/// @param DSESEnvelopesApi_GetRecipientSignatureImageOptions Options for modifying the request.
/// @returns NSURL*
///
-(NSURLSessionTask*) getRecipientSignatureImageWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    options:(DSESEnvelopesApi_GetRecipientSignatureImageOptions*) options
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature_image"];

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
        if(options.includeChrome != nil) {
            queryParams[@"include_chrome"] = options.includeChrome;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"image/gif"]];
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
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}

///
/// Returns document visibility for the recipients
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
///
/// @returns DSESDocumentVisibilityList*
///
-(NSURLSessionTask*) getTemplateRecipientDocumentVisibilityWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    completionHandler: (void (^)(DSESDocumentVisibilityList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
                              responseType: @"DSESDocumentVisibilityList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentVisibilityList*)data, error);
                                }
                            }];
}

///
/// Gets the envelope audit events for an envelope.
/// Gets the envelope audit events for the specified envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESEnvelopeAuditEventResponse*
///
-(NSURLSessionTask*) listAuditEventsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESEnvelopeAuditEventResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/audit_events"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESEnvelopeAuditEventResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeAuditEventResponse*)data, error);
                                }
                            }];
}

///
/// Gets the custom field information for the specified envelope.
/// Retrieves the custom field information for the specified envelope. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes, and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.  There are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. With a list custom field, the sender selects the value of the field from a pre-made list.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
/// @returns DSESCustomFieldsEnvelope*
///
-(NSURLSessionTask*) listCustomFieldsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    completionHandler: (void (^)(DSESCustomFieldsEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/custom_fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
                              responseType: @"DSESCustomFieldsEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCustomFieldsEnvelope*)data, error);
                                }
                            }];
}

///
/// Gets the custom document fields from an  existing envelope document.
/// Retrieves the custom document field information from an existing envelope document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
///
///
/// @returns DSESDocumentFieldsInformation*
///
-(NSURLSessionTask*) listDocumentFieldsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    completionHandler: (void (^)(DSESDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
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
                              responseType: @"DSESDocumentFieldsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentFieldsInformation*)data, error);
                                }
                            }];
}

///
/// Gets a list of envelope documents.
/// Retrieves a list of documents associated with the specified envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
/// @param DSESEnvelopesApi_ListDocumentsOptions Options for modifying the request.
/// @returns DSESEnvelopeDocumentsResult*
///
-(NSURLSessionTask*) listDocumentsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    options:(DSESEnvelopesApi_ListDocumentsOptions*) options
    completionHandler: (void (^)(DSESEnvelopeDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.documentsByUserid != nil) {
            queryParams[@"documents_by_userid"] = options.documentsByUserid;
        }
        if(options.includeDocumentSize != nil) {
            queryParams[@"include_document_size"] = options.includeDocumentSize;
        }
        if(options.includeMetadata != nil) {
            queryParams[@"include_metadata"] = options.includeMetadata;
        }
        if(options.includeTabs != nil) {
            queryParams[@"include_tabs"] = options.includeTabs;
        }
        if(options.recipientId != nil) {
            queryParams[@"recipient_id"] = options.recipientId;
        }
        if(options.sharedUserId != nil) {
            queryParams[@"shared_user_id"] = options.sharedUserId;
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
                              responseType: @"DSESEnvelopeDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeDocumentsResult*)data, error);
                                }
                            }];
}

///
/// Gets the status of recipients for an envelope.
/// Retrieves the status of all recipients in a single envelope and identifies the current recipient in the routing list.   The `currentRoutingOrder` property of the response contains the `routingOrder` value of the current recipient indicating that the envelope has been sent to the recipient, but the recipient has not completed their actions.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
/// @param DSESEnvelopesApi_ListRecipientsOptions Options for modifying the request.
/// @returns DSESRecipients*
///
-(NSURLSessionTask*) listRecipientsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    options:(DSESEnvelopesApi_ListRecipientsOptions*) options
    completionHandler: (void (^)(DSESRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.includeAnchorTabLocations != nil) {
            queryParams[@"include_anchor_tab_locations"] = options.includeAnchorTabLocations;
        }
        if(options.includeExtended != nil) {
            queryParams[@"include_extended"] = options.includeExtended;
        }
        if(options.includeMetadata != nil) {
            queryParams[@"include_metadata"] = options.includeMetadata;
        }
        if(options.includeTabs != nil) {
            queryParams[@"include_tabs"] = options.includeTabs;
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
                              responseType: @"DSESRecipients*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESRecipients*)data, error);
                                }
                            }];
}

///
/// Gets the envelope status for the specified envelopes.
/// Retrieves the envelope status for the specified envelopes.
/// @param accountId The external account number (int) or account ID Guid.
///
/// @param envelopeIdsRequest  
/// @param DSESEnvelopesApi_ListStatusOptions Options for modifying the request.
/// @returns DSESEnvelopesInformation*
///
-(NSURLSessionTask*) listStatusWithAccountId:
    (NSString*) accountId 
    envelopeIdsRequest:(DSESEnvelopeIdsRequest*) envelopeIdsRequest
    options:(DSESEnvelopesApi_ListStatusOptions*) options
    completionHandler: (void (^)(DSESEnvelopesInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.acStatus != nil) {
            queryParams[@"ac_status"] = options.acStatus;
        }
        if(options.block != nil) {
            queryParams[@"block"] = options.block;
        }
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.email != nil) {
            queryParams[@"email"] = options.email;
        }
        if(options.envelopeIds != nil) {
            queryParams[@"envelope_ids"] = options.envelopeIds;
        }
        if(options.fromDate != nil) {
            queryParams[@"from_date"] = options.fromDate;
        }
        if(options.fromToStatus != nil) {
            queryParams[@"from_to_status"] = options.fromToStatus;
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
        if(options.transactionIds != nil) {
            queryParams[@"transaction_ids"] = options.transactionIds;
        }
        if(options.userName != nil) {
            queryParams[@"user_name"] = options.userName;
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
    bodyParam = envelopeIdsRequest;

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
                              responseType: @"DSESEnvelopesInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopesInformation*)data, error);
                                }
                            }];
}

///
/// Gets status changes for one or more envelopes.
/// Retrieves envelope status changes for all envelopes. You can modify the information returned by adding query strings to limit the request to check between certain dates and times, or for certain envelopes, or for certain status codes. It is recommended that you use one or more of the query strings in order to limit the size of the response.  ### Important: Unless you are requesting the status for specific envelopes (using the `envelopeIds` or `transactionIds` properties), you must add a set the `from_date` property in the request.  Getting envelope status using `transactionIds` is useful for offline signing situations where it can be used determine if an envelope was created or not, for the cases where a network connection was lost, before the envelope status could be returned.  ### Request Envelope Status Notes ###  The REST API GET /envelopes call uses certain filters to find results. In some cases requests are check for \"any status change\" instead of the just the single status requested. In these cases, more envelopes might be returned by the request than otherwise would be. For example, for a request with the begin date is set to Jan 1st, an end date set to Jan 7th and the status qualifier (`from_to_status`) set to `Delivered` &mdash; the response set might contain envelopes that were created during that time period, but not delivered during the time period.  To avoid unnecessary database queries, the DocuSign system checks requests to ensure that the added filters will not result in a zero-size response before acting on the request. The following table shows the valid envelope statuses (in the Valid Current Statuses column) for the status qualifiers in the request. If the status and status qualifiers in the API request do not contain any of the values shown in the valid current statuses column, then an empty list is returned.  For example, a request with a status qualifier (from_to_status) of `Delivered` and a status of \"`Created`,`Sent`\", DocuSign will always return an empty list. This is because the request essentially translates to: find the envelopes that were delivered between the begin and end dates that have a current status of `Created` or `Sent`, and since an envelope that has been delivered can never have a status of `Created` or `Sent`, a zero-size response would be generated. In this case, DocuSign does not run the request, but just returns the empty list.  Client applications should check that the statuses they are requesting make sense for a given status qualifier.
/// @param accountId The external account number (int) or account ID Guid.
///
///
/// @param DSESEnvelopesApi_ListStatusChangesOptions Options for modifying the request.
/// @returns DSESEnvelopesInformation*
///
-(NSURLSessionTask*) listStatusChangesWithAccountId:
    (NSString*) accountId 
    options:(DSESEnvelopesApi_ListStatusChangesOptions*) options
    completionHandler: (void (^)(DSESEnvelopesInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.acStatus != nil) {
            queryParams[@"ac_status"] = options.acStatus;
        }
        if(options.block != nil) {
            queryParams[@"block"] = options.block;
        }
        if(options.cdseMode != nil) {
            queryParams[@"cdse_mode"] = options.cdseMode;
        }
        if(options.continuationToken != nil) {
            queryParams[@"continuation_token"] = options.continuationToken;
        }
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.customField != nil) {
            queryParams[@"custom_field"] = options.customField;
        }
        if(options.email != nil) {
            queryParams[@"email"] = options.email;
        }
        if(options.envelopeIds != nil) {
            queryParams[@"envelope_ids"] = options.envelopeIds;
        }
        if(options.exclude != nil) {
            queryParams[@"exclude"] = options.exclude;
        }
        if(options.folderIds != nil) {
            queryParams[@"folder_ids"] = options.folderIds;
        }
        if(options.folderTypes != nil) {
            queryParams[@"folder_types"] = options.folderTypes;
        }
        if(options.fromDate != nil) {
            queryParams[@"from_date"] = options.fromDate;
        }
        if(options.fromToStatus != nil) {
            queryParams[@"from_to_status"] = options.fromToStatus;
        }
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
        }
        if(options.includePurgeInformation != nil) {
            queryParams[@"include_purge_information"] = options.includePurgeInformation;
        }
        if(options.intersectingFolderIds != nil) {
            queryParams[@"intersecting_folder_ids"] = options.intersectingFolderIds;
        }
        if(options.lastQueriedDate != nil) {
            queryParams[@"last_queried_date"] = options.lastQueriedDate;
        }
        if(options.order != nil) {
            queryParams[@"order"] = options.order;
        }
        if(options.orderBy != nil) {
            queryParams[@"order_by"] = options.orderBy;
        }
        if(options.powerformids != nil) {
            queryParams[@"powerformids"] = options.powerformids;
        }
        if(options.queryBudget != nil) {
            queryParams[@"query_budget"] = options.queryBudget;
        }
        if(options.requesterDateFormat != nil) {
            queryParams[@"requester_date_format"] = options.requesterDateFormat;
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
        if(options.transactionIds != nil) {
            queryParams[@"transaction_ids"] = options.transactionIds;
        }
        if(options.userFilter != nil) {
            queryParams[@"user_filter"] = options.userFilter;
        }
        if(options.userId != nil) {
            queryParams[@"user_id"] = options.userId;
        }
        if(options.userName != nil) {
            queryParams[@"user_name"] = options.userName;
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
                              responseType: @"DSESEnvelopesInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopesInformation*)data, error);
                                }
                            }];
}

///
/// Gets the tabs information for a signer or sign-in-person recipient in an envelope.
/// Retrieves information about the tabs associated with a recipient in a draft envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
/// @param DSESEnvelopesApi_ListTabsOptions Options for modifying the request.
/// @returns DSESTabs*
///
-(NSURLSessionTask*) listTabsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    options:(DSESEnvelopesApi_ListTabsOptions*) options
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"];

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
        if(options.includeAnchorTabLocations != nil) {
            queryParams[@"include_anchor_tab_locations"] = options.includeAnchorTabLocations;
        }
        if(options.includeMetadata != nil) {
            queryParams[@"include_metadata"] = options.includeMetadata;
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
                              responseType: @"DSESTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTabs*)data, error);
                                }
                            }];
}

///
/// Get List of Templates used in an Envelope
/// This returns a list of the server-side templates, their name and ID, used in an envelope. 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
/// @param DSESEnvelopesApi_ListTemplatesOptions Options for modifying the request.
/// @returns DSESTemplateInformation*
///
-(NSURLSessionTask*) listTemplatesWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    options:(DSESEnvelopesApi_ListTemplatesOptions*) options
    completionHandler: (void (^)(DSESTemplateInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/templates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
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
                              responseType: @"DSESTemplateInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateInformation*)data, error);
                                }
                            }];
}

///
/// Gets the templates associated with a document in an existing envelope.
/// Retrieves the templates associated with a document in the specified envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
///
/// @param DSESEnvelopesApi_ListTemplatesForDocumentOptions Options for modifying the request.
/// @returns DSESTemplateInformation*
///
-(NSURLSessionTask*) listTemplatesForDocumentWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    options:(DSESEnvelopesApi_ListTemplatesForDocumentOptions*) options
    completionHandler: (void (^)(DSESTemplateInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
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
                              responseType: @"DSESTemplateInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateInformation*)data, error);
                                }
                            }];
}

///
/// Add an attachment to a DRAFT or IN-PROCESS envelope.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param attachmentId 
///
/// @param attachment  
///
/// @returns DSESEnvelopeAttachmentsResult*
///
-(NSURLSessionTask*) putAttachmentWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    attachmentId:(NSString*) attachmentId 
    attachment:(DSESAttachment*) attachment
    completionHandler: (void (^)(DSESEnvelopeAttachmentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'attachmentId' is set
    if (attachmentId == nil) {
        NSParameterAssert(attachmentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"attachmentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments/{attachmentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (attachmentId != nil) {
        pathParams[@"attachmentId"] = attachmentId;
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
    bodyParam = attachment;

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
                              responseType: @"DSESEnvelopeAttachmentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeAttachmentsResult*)data, error);
                                }
                            }];
}

///
/// Add one or more attachments to a DRAFT or IN-PROCESS envelope.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelopeAttachmentsRequest  
///
/// @returns DSESEnvelopeAttachmentsResult*
///
-(NSURLSessionTask*) putAttachmentsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    envelopeAttachmentsRequest:(DSESEnvelopeAttachmentsRequest*) envelopeAttachmentsRequest
    completionHandler: (void (^)(DSESEnvelopeAttachmentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = envelopeAttachmentsRequest;

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
                              responseType: @"DSESEnvelopeAttachmentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeAttachmentsResult*)data, error);
                                }
                            }];
}

///
/// Rotates page image from an envelope for display.
/// Rotates page image from an envelope for display. The page image can be rotated to the left or right.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
/// @param pageNumber The page number being accessed.
///
/// @param pageRequest  
///
/// @returns void
///
-(NSURLSessionTask*) rotateDocumentPageWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    pageNumber:(NSString*) pageNumber 
    pageRequest:(DSESPageRequest*) pageRequest
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/page_image"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
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
    bodyParam = pageRequest;

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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Send Draft Envelope/Void Envelope/Move/Purge Envelope/Modify draft
/// The Put Envelopes endpoint provides the following functionality:  * Sends the specified single draft envelope. Add {\"status\":\"sent\"} to the request body to send the envelope.  * Voids the specified in-process envelope. Add {\"status\":\"voided\", \"voidedReason\":\"The reason for voiding the envelope\"} to the request body to void the envelope.  * Replaces the current email subject and message for a draft envelope. Add {\"emailSubject\":\"subject\",  \"emailBlurb\":\"message\"}  to the request body to modify the subject and message.  * Place the envelope documents and envelope metadata in a purge queue so that this information is removed from the DocuSign system. Add {\"purgeState\":\"purge type\"} to the request body.  *Additional information on purging documents*  The purge request can only be used for completed envelopes that are not marked as the authoritative copy. The requesting user must have permission to purge documents and must be the sender (the requesting user can act as the sender using Send On Behalf Of).  ###### Note: If you have set the Document Retention policy on your account, envelope documents are automatically placed in the purge queue and the warning emails are sent at the end of the retention period.  ###### Note: You can set the Document Retention policy in the Classic DocuSign Experience by specifying the number of days to retain documents.  ###### Note: Setting a Document Retention policy is the same as setting a schedule for purging documents.  When the purge request is initiated the envelope documents, or documents and envelope metadata, are placed in a purge queue for deletion in 14 days. A warning email notification is sent to the sender and recipients associated with the envelope, notifying them that the envelope documents will be deleted in 14 days and providing a link to the documents. A second email is sent 7 days later with the same message. At the end of the 14-day period, the envelope documents are deleted from the system.  If `purgeState=\"documents_queued\"` is used in the request, then only the documents are deleted and any corresponding attachments and tabs remain in the DocuSign system. If `purgeState= \"documents_and_metadata_queued\"` is used in the request, then the documents, attachments, and tabs are deleted.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelope  
/// @param DSESEnvelopesApi_UpdateOptions Options for modifying the request.
/// @returns DSESEnvelopeUpdateSummary*
///
-(NSURLSessionTask*) updateWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    envelope:(DSESEnvelope*) envelope
    options:(DSESEnvelopesApi_UpdateOptions*) options
    completionHandler: (void (^)(DSESEnvelopeUpdateSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.advancedUpdate != nil) {
            queryParams[@"advanced_update"] = options.advancedUpdate;
        }
        if(options.resendEnvelope != nil) {
            queryParams[@"resend_envelope"] = options.resendEnvelope;
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
    bodyParam = envelope;

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
                              responseType: @"DSESEnvelopeUpdateSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeUpdateSummary*)data, error);
                                }
                            }];
}

///
/// Integrity-Check and Commit a ChunkedUpload, readying it for use elsewhere.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param chunkedUploadId 
///
///
/// @param DSESEnvelopesApi_UpdateChunkedUploadOptions Options for modifying the request.
/// @returns DSESChunkedUploadResponse*
///
-(NSURLSessionTask*) updateChunkedUploadWithAccountId:
    (NSString*) accountId 
    chunkedUploadId:(NSString*) chunkedUploadId 
    options:(DSESEnvelopesApi_UpdateChunkedUploadOptions*) options
    completionHandler: (void (^)(DSESChunkedUploadResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'chunkedUploadId' is set
    if (chunkedUploadId == nil) {
        NSParameterAssert(chunkedUploadId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"chunkedUploadId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (chunkedUploadId != nil) {
        pathParams[@"chunkedUploadId"] = chunkedUploadId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.action != nil) {
            queryParams[@"action"] = options.action;
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
                              responseType: @"DSESChunkedUploadResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESChunkedUploadResponse*)data, error);
                                }
                            }];
}

///
/// Add a chunk, a chunk 'part', to an existing ChunkedUpload.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param chunkedUploadId 
/// @param chunkedUploadPartSeq 
///
/// @param chunkedUploadRequest  
///
/// @returns DSESChunkedUploadResponse*
///
-(NSURLSessionTask*) updateChunkedUploadPartWithAccountId:
    (NSString*) accountId 
    chunkedUploadId:(NSString*) chunkedUploadId 
    chunkedUploadPartSeq:(NSString*) chunkedUploadPartSeq 
    chunkedUploadRequest:(DSESChunkedUploadRequest*) chunkedUploadRequest
    completionHandler: (void (^)(DSESChunkedUploadResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'chunkedUploadId' is set
    if (chunkedUploadId == nil) {
        NSParameterAssert(chunkedUploadId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"chunkedUploadId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'chunkedUploadPartSeq' is set
    if (chunkedUploadPartSeq == nil) {
        NSParameterAssert(chunkedUploadPartSeq);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"chunkedUploadPartSeq"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/{chunkedUploadPartSeq}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (chunkedUploadId != nil) {
        pathParams[@"chunkedUploadId"] = chunkedUploadId;
    }
    if (chunkedUploadPartSeq != nil) {
        pathParams[@"chunkedUploadPartSeq"] = chunkedUploadPartSeq;
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
    bodyParam = chunkedUploadRequest;

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
                              responseType: @"DSESChunkedUploadResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESChunkedUploadResponse*)data, error);
                                }
                            }];
}

///
/// Updates envelope custom fields in an envelope.
/// Updates the envelope custom fields in draft and in-process envelopes.  Each custom field used in an envelope must have a unique name. 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param customFields  
///
/// @returns DSESCustomFields*
///
-(NSURLSessionTask*) updateCustomFieldsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    customFields:(DSESCustomFields*) customFields
    completionHandler: (void (^)(DSESCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/custom_fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = customFields;

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
                              responseType: @"DSESCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCustomFields*)data, error);
                                }
                            }];
}

///
/// Adds a document to an existing draft envelope.
/// Adds a document to an existing draft envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
///
///
/// @returns DSESEnvelopeDocument*
///
-(NSURLSessionTask*) updateDocumentWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    completionHandler: (void (^)(DSESEnvelopeDocument* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
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
                              responseType: @"DSESEnvelopeDocument*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeDocument*)data, error);
                                }
                            }];
}

///
/// Updates existing custom document fields in an existing envelope document.
/// Updates existing custom document fields in an existing envelope document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation  
///
/// @returns DSESDocumentFieldsInformation*
///
-(NSURLSessionTask*) updateDocumentFieldsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentId:(NSString*) documentId 
    documentFieldsInformation:(DSESDocumentFieldsInformation*) documentFieldsInformation
    completionHandler: (void (^)(DSESDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
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
    bodyParam = documentFieldsInformation;

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
                              responseType: @"DSESDocumentFieldsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentFieldsInformation*)data, error);
                                }
                            }];
}

///
/// Adds one or more documents to an existing envelope document.
/// Adds one or more documents to an existing envelope document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelopeDefinition  
///
/// @returns DSESEnvelopeDocumentsResult*
///
-(NSURLSessionTask*) updateDocumentsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    envelopeDefinition:(DSESEnvelopeDefinition*) envelopeDefinition
    completionHandler: (void (^)(DSESEnvelopeDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = envelopeDefinition;

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
                              responseType: @"DSESEnvelopeDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeDocumentsResult*)data, error);
                                }
                            }];
}

///
/// Updates the email setting overrides for an envelope.
/// Updates the existing email override settings for the specified envelope. Note that modifying email settings will only affect email communications that occur after the modification was made.  This can also be used to delete an individual email override setting by using an empty string for the value to be deleted.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param emailSettings  
///
/// @returns DSESEmailSettings*
///
-(NSURLSessionTask*) updateEmailSettingsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    emailSettings:(DSESEmailSettings*) emailSettings
    completionHandler: (void (^)(DSESEmailSettings* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = emailSettings;

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
                              responseType: @"DSESEmailSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEmailSettings*)data, error);
                                }
                            }];
}

///
/// Updates an envelope lock.
/// Updates the lock duration time or update the `lockedByApp` property information for the specified envelope. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information and the `X-DocuSign-Edit` header must be included or an error will be generated.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param lockRequest  
///
/// @returns DSESLockInformation*
///
-(NSURLSessionTask*) updateLockWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    lockRequest:(DSESLockRequest*) lockRequest
    completionHandler: (void (^)(DSESLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/lock"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = lockRequest;

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
                              responseType: @"DSESLockInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESLockInformation*)data, error);
                                }
                            }];
}

///
/// Sets envelope notification (Reminders/Expirations) structure for an existing envelope.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelopeNotificationRequest  
///
/// @returns DSESNotification*
///
-(NSURLSessionTask*) updateNotificationSettingsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    envelopeNotificationRequest:(DSESEnvelopeNotificationRequest*) envelopeNotificationRequest
    completionHandler: (void (^)(DSESNotification* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/notification"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = envelopeNotificationRequest;

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
                              responseType: @"DSESNotification*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESNotification*)data, error);
                                }
                            }];
}

///
/// Updates document visibility for the recipients
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param documentVisibilityList  
///
/// @returns DSESDocumentVisibilityList*
///
-(NSURLSessionTask*) updateRecipientDocumentVisibilityWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    documentVisibilityList:(DSESDocumentVisibilityList*) documentVisibilityList
    completionHandler: (void (^)(DSESDocumentVisibilityList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility"];

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
    bodyParam = documentVisibilityList;

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
                              responseType: @"DSESDocumentVisibilityList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentVisibilityList*)data, error);
                                }
                            }];
}

///
/// Sets the initials image for an accountless signer.
/// Updates the initials image for a signer that does not have a DocuSign account. The supported image formats for this file are: gif, png, jpeg, and bmp. The file size must be less than 200K.  For the Authentication/Authorization for this call, the credentials must match the sender of the envelope, the recipient must be an accountless signer or in person signer. The account must have the `CanSendEnvelope` property set to **true** and the `ExpressSendOnly` property in `SendingUser` structure must be set to **false**.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
///
/// @returns void
///
-(NSURLSessionTask*) updateRecipientInitialsImageWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/initials_image"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"image/gif"]];

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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Sets the signature image for an accountless signer.
/// Updates the signature image for an accountless signer. The supported image formats for this file are: gif, png, jpeg, and bmp. The file size must be less than 200K.  For the Authentication/Authorization for this call, the credentials must match the sender of the envelope, the recipient must be an accountless signer or in person signer. The account must have the `CanSendEnvelope` property set to **true** and the `ExpressSendOnly` property in `SendingUser` structure must be set to **false**.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
///
/// @returns void
///
-(NSURLSessionTask*) updateRecipientSignatureImageWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature_image"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"image/gif"]];

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
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Updates recipients in a draft envelope or corrects recipient information for an in process envelope.
/// Updates recipients in a draft envelope or corrects recipient information for an in process envelope.   For draft envelopes, you can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.  Once an envelope has been sent, you can only edit: `email`, `userName`, `signerName`, `routingOrder`, `faxNumber`, and `deliveryMethod`. You can also select to resend an envelope by using the `resend_envelope` option.  If you send information for a recipient that does not already exist in a draft envelope, the recipient is added to the envelope (similar to the POST).
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param recipients  
/// @param DSESEnvelopesApi_UpdateRecipientsOptions Options for modifying the request.
/// @returns DSESRecipientsUpdateSummary*
///
-(NSURLSessionTask*) updateRecipientsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipients:(DSESRecipients*) recipients
    options:(DSESEnvelopesApi_UpdateRecipientsOptions*) options
    completionHandler: (void (^)(DSESRecipientsUpdateSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.combineSameOrderRecipients != nil) {
            queryParams[@"combine_same_order_recipients"] = options.combineSameOrderRecipients;
        }
        if(options.offlineSigning != nil) {
            queryParams[@"offline_signing"] = options.offlineSigning;
        }
        if(options.resendEnvelope != nil) {
            queryParams[@"resend_envelope"] = options.resendEnvelope;
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
    bodyParam = recipients;

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
                              responseType: @"DSESRecipientsUpdateSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESRecipientsUpdateSummary*)data, error);
                                }
                            }];
}

///
/// Updates document visibility for the recipients
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param documentVisibilityList  
///
/// @returns DSESDocumentVisibilityList*
///
-(NSURLSessionTask*) updateRecipientsDocumentVisibilityWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    documentVisibilityList:(DSESDocumentVisibilityList*) documentVisibilityList
    completionHandler: (void (^)(DSESDocumentVisibilityList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/document_visibility"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
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
    bodyParam = documentVisibilityList;

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
                              responseType: @"DSESDocumentVisibilityList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESDocumentVisibilityList*)data, error);
                                }
                            }];
}

///
/// Updates the tabs for a recipient.  
/// Updates one or more tabs for a recipient in a draft envelope.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeId The envelopeId Guid of the envelope being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param tabs  
///
/// @returns DSESTabs*
///
-(NSURLSessionTask*) updateTabsWithAccountId:
    (NSString*) accountId 
    envelopeId:(NSString*) envelopeId 
    recipientId:(NSString*) recipientId 
    tabs:(DSESTabs*) tabs
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        NSParameterAssert(envelopeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"envelopeId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"];

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
    bodyParam = tabs;

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
                              responseType: @"DSESTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTabs*)data, error);
                                }
                            }];
}

///
/// Updates document visibility for the recipients
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param templateDocumentVisibilityList  
///
/// @returns DSESTemplateDocumentVisibilityList*
///
-(NSURLSessionTask*) updateTemplateRecipientDocumentVisibilityWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    templateDocumentVisibilityList:(DSESTemplateDocumentVisibilityList*) templateDocumentVisibilityList
    completionHandler: (void (^)(DSESTemplateDocumentVisibilityList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
    bodyParam = templateDocumentVisibilityList;

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
                              responseType: @"DSESTemplateDocumentVisibilityList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateDocumentVisibilityList*)data, error);
                                }
                            }];
}

///
/// Updates document visibility for the recipients
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param templateDocumentVisibilityList  
///
/// @returns DSESTemplateDocumentVisibilityList*
///
-(NSURLSessionTask*) updateTemplateRecipientsDocumentVisibilityWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templateDocumentVisibilityList:(DSESTemplateDocumentVisibilityList*) templateDocumentVisibilityList
    completionHandler: (void (^)(DSESTemplateDocumentVisibilityList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESEnvelopesApiErrorDomain code:kDSESEnvelopesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/document_visibility"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
    bodyParam = templateDocumentVisibilityList;

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
                              responseType: @"DSESTemplateDocumentVisibilityList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateDocumentVisibilityList*)data, error);
                                }
                            }];
}



@end
