#import <DSESTemplatesApi.h>
#import <DSESQueryParamCollection.h>
#import <DSESApiClient.h>
#import <DSESBulkRecipientsRequest.h>
#import <DSESBulkRecipientsResponse.h>
#import <DSESBulkRecipientsSummaryResponse.h>
#import <DSESBulkRecipientsUpdateResponse.h>
#import <DSESCustomFields.h>
#import <DSESDocumentFieldsInformation.h>
#import <DSESEnvelopeDefinition.h>
#import <DSESEnvelopeDocument.h>
#import <DSESEnvelopeTemplate.h>
#import <DSESEnvelopeTemplateResults.h>
#import <DSESErrorDetails.h>
#import <DSESGroupInformation.h>
#import <DSESLockInformation.h>
#import <DSESLockRequest.h>
#import <DSESNotification.h>
#import <DSESPageImages.h>
#import <DSESPageRequest.h>
#import <DSESRecipients.h>
#import <DSESRecipientsUpdateSummary.h>
#import <DSESReturnUrlRequest.h>
#import <DSESTabs.h>
#import <DSESTemplateCustomFields.h>
#import <DSESTemplateDocumentsResult.h>
#import <DSESTemplateNotificationRequest.h>
#import <DSESTemplateRecipients.h>
#import <DSESTemplateSummary.h>
#import <DSESTemplateTabs.h>
#import <DSESTemplateUpdateSummary.h>
#import <DSESViewUrl.h>



@implementation DSESTemplatesApi_CreateRecipientsOptions
@end


@implementation DSESTemplatesApi_GetOptions
@end


@implementation DSESTemplatesApi_GetDocumentOptions
@end


@implementation DSESTemplatesApi_GetDocumentPageImageOptions
@end


@implementation DSESTemplatesApi_GetDocumentTabsOptions
@end


@implementation DSESTemplatesApi_GetPagesOptions
@end


@implementation DSESTemplatesApi_ListBulkRecipientsOptions
@end


@implementation DSESTemplatesApi_ListDocumentsOptions
@end


@implementation DSESTemplatesApi_ListRecipientsOptions
@end


@implementation DSESTemplatesApi_ListTabsOptions
@end


@implementation DSESTemplatesApi_ListTemplatesOptions
@end


@implementation DSESTemplatesApi_UpdateDocumentOptions
@end


@implementation DSESTemplatesApi_UpdateRecipientsOptions
@end



@interface DSESTemplatesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation DSESTemplatesApi

NSString* kDSESTemplatesApiErrorDomain = @"DSESTemplatesApiErrorDomain";
NSInteger kDSESTemplatesApiMissingParamErrorCode = 234513;

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
/// Creates custom document fields in an existing template document.
/// Creates custom document fields in an existing template document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param templateCustomFields  
///
/// @returns DSESCustomFields*
///
-(NSURLSessionTask*) createCustomFieldsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templateCustomFields:(DSESTemplateCustomFields*) templateCustomFields
    completionHandler: (void (^)(DSESCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/custom_fields"];

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
    bodyParam = templateCustomFields;

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
/// Creates custom document fields in an existing template document.
/// Creates custom document fields in an existing template document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation  
///
/// @returns DSESDocumentFieldsInformation*
///
-(NSURLSessionTask*) createDocumentFieldsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    documentFieldsInformation:(DSESDocumentFieldsInformation*) documentFieldsInformation
    completionHandler: (void (^)(DSESDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// Provides a URL to start an edit view of the Template UI
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param returnUrlRequest  
///
/// @returns DSESViewUrl*
///
-(NSURLSessionTask*) createEditViewWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    returnUrlRequest:(DSESReturnUrlRequest*) returnUrlRequest
    completionHandler: (void (^)(DSESViewUrl* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/views/edit"];

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
/// Lock a template.
/// Locks the specified template, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the template.  ###### Note: Users must have envelope locking capability enabled to use this function (the userSetting property `canLockEnvelopes` must be set to **true** for the user).
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param lockRequest  
///
/// @returns DSESLockInformation*
///
-(NSURLSessionTask*) createLockWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    lockRequest:(DSESLockRequest*) lockRequest
    completionHandler: (void (^)(DSESLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/lock"];

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
/// Adds tabs for a recipient.
/// Adds one or more recipients to a template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param templateRecipients  
/// @param DSESTemplatesApi_CreateRecipientsOptions Options for modifying the request.
/// @returns DSESRecipients*
///
-(NSURLSessionTask*) createRecipientsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templateRecipients:(DSESTemplateRecipients*) templateRecipients
    options:(DSESTemplatesApi_CreateRecipientsOptions*) options
    completionHandler: (void (^)(DSESRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
    bodyParam = templateRecipients;

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
/// Adds tabs for a recipient.
/// Adds one or more tabs for a recipient.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param templateTabs  
///
/// @returns DSESTabs*
///
-(NSURLSessionTask*) createTabsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    templateTabs:(DSESTemplateTabs*) templateTabs
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

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
    bodyParam = templateTabs;

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
/// Creates an envelope from a template.
/// Creates a template definition using a multipart request.  ###Template Email Subject Merge Fields  Call this endpoint to insert a recipient name and email address merge fields into the email subject line when creating or sending from a template.  The merge fields, based on the recipient's role name, are added to the `emailSubject` property when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient. ###### Note: If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.  To add a recipient's name in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  [[<roleName>_UserName]]  Example:  `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`  To add a recipient's email address in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  [[<roleName>_Email]]  Example:  `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`   In both cases the <roleName> is the recipient's contents of the `roleName` property in the template.  For cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.
/// @param accountId The external account number (int) or account ID Guid.
///
/// @param envelopeTemplate  
///
/// @returns DSESTemplateSummary*
///
-(NSURLSessionTask*) createTemplateWithAccountId:
    (NSString*) accountId 
    envelopeTemplate:(DSESEnvelopeTemplate*) envelopeTemplate
    completionHandler: (void (^)(DSESTemplateSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates"];

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
    bodyParam = envelopeTemplate;

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
                              responseType: @"DSESTemplateSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateSummary*)data, error);
                                }
                            }];
}

///
/// Deletes the bulk recipient list on a template.
/// Deletes the bulk recipient list on a template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
///
/// @returns DSESBulkRecipientsUpdateResponse*
///
-(NSURLSessionTask*) deleteBulkRecipientsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    completionHandler: (void (^)(DSESBulkRecipientsUpdateResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients"];

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
/// Deletes envelope custom fields in a template.
/// Deletes envelope custom fields in a template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param templateCustomFields  
///
/// @returns DSESCustomFields*
///
-(NSURLSessionTask*) deleteCustomFieldsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templateCustomFields:(DSESTemplateCustomFields*) templateCustomFields
    completionHandler: (void (^)(DSESCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/custom_fields"];

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
    bodyParam = templateCustomFields;

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
/// Deletes custom document fields from an existing template document.
/// Deletes custom document fields from an existing template document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation  
///
/// @returns DSESDocumentFieldsInformation*
///
-(NSURLSessionTask*) deleteDocumentFieldsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    documentFieldsInformation:(DSESDocumentFieldsInformation*) documentFieldsInformation
    completionHandler: (void (^)(DSESDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// Deletes a page from a document in an template.
/// Deletes a page from a document in a template based on the page number.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
/// @param pageNumber The page number being accessed.
///
/// @param pageRequest  
///
/// @returns void
///
-(NSURLSessionTask*) deleteDocumentPageWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    pageNumber:(NSString*) pageNumber 
    pageRequest:(DSESPageRequest*) pageRequest
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// Deletes documents from a template.
/// Deletes one or more documents from an existing template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param envelopeDefinition  
///
/// @returns DSESTemplateDocumentsResult*
///
-(NSURLSessionTask*) deleteDocumentsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    envelopeDefinition:(DSESEnvelopeDefinition*) envelopeDefinition
    completionHandler: (void (^)(DSESTemplateDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents"];

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
                              responseType: @"DSESTemplateDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateDocumentsResult*)data, error);
                                }
                            }];
}

///
/// Removes a member group's sharing permissions for a template.
/// Removes a member group's sharing permissions for a specified template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param templatePart Currently, the only defined part is **groups**.
///
/// @param groupInformation  
///
/// @returns DSESGroupInformation*
///
-(NSURLSessionTask*) deleteGroupShareWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templatePart:(NSString*) templatePart 
    groupInformation:(DSESGroupInformation*) groupInformation
    completionHandler: (void (^)(DSESGroupInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templatePart' is set
    if (templatePart == nil) {
        NSParameterAssert(templatePart);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templatePart"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/{templatePart}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    if (templatePart != nil) {
        pathParams[@"templatePart"] = templatePart;
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
    bodyParam = groupInformation;

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
                              responseType: @"DSESGroupInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESGroupInformation*)data, error);
                                }
                            }];
}

///
/// Deletes a template lock.
/// Deletes the lock from the specified template. The `X-DocuSign-Edit` header must be included in the request.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param lockRequest  
///
/// @returns DSESLockInformation*
///
-(NSURLSessionTask*) deleteLockWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    lockRequest:(DSESLockRequest*) lockRequest
    completionHandler: (void (^)(DSESLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/lock"];

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
    bodyParam = lockRequest;

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
/// Deletes the specified recipient file from a template.
/// Deletes the specified recipient file from the specified template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param templateRecipients  
///
/// @returns DSESRecipients*
///
-(NSURLSessionTask*) deleteRecipientWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    templateRecipients:(DSESTemplateRecipients*) templateRecipients
    completionHandler: (void (^)(DSESRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}"];

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
    bodyParam = templateRecipients;

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
/// Deletes recipients from a template.
/// Deletes one or more recipients from a template. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param templateRecipients  
///
/// @returns DSESRecipients*
///
-(NSURLSessionTask*) deleteRecipientsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templateRecipients:(DSESTemplateRecipients*) templateRecipients
    completionHandler: (void (^)(DSESRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients"];

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
    bodyParam = templateRecipients;

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
/// Deletes the tabs associated with a recipient in a template.
/// Deletes one or more tabs associated with a recipient in a template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param templateTabs  
///
/// @returns DSESTabs*
///
-(NSURLSessionTask*) deleteTabsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    templateTabs:(DSESTemplateTabs*) templateTabs
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

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
    bodyParam = templateTabs;

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
/// Gets a list of templates for a specified account.
/// Retrieves the definition of the specified template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
///
/// @param DSESTemplatesApi_GetOptions Options for modifying the request.
/// @returns DSESEnvelopeTemplate*
///
-(NSURLSessionTask*) getWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    options:(DSESTemplatesApi_GetOptions*) options
    completionHandler: (void (^)(DSESEnvelopeTemplate* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
                              responseType: @"DSESEnvelopeTemplate*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeTemplate*)data, error);
                                }
                            }];
}

///
/// Gets PDF documents from a template.
/// Retrieves one or more PDF documents from the specified template.  You can specify the ID of the document to retrieve or can specify `combined` to retrieve all documents in the template as one pdf.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
///
///
/// @param DSESTemplatesApi_GetDocumentOptions Options for modifying the request.
/// @returns NSURL*
///
-(NSURLSessionTask*) getDocumentWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    options:(DSESTemplatesApi_GetDocumentOptions*) options
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.encrypt != nil) {
            queryParams[@"encrypt"] = options.encrypt;
        }
        if(options.showChanges != nil) {
            queryParams[@"show_changes"] = options.showChanges;
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
/// Gets a page image from a template for display.
/// Retrieves a page image for display from the specified template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
/// @param pageNumber The page number being accessed.
///
///
/// @param DSESTemplatesApi_GetDocumentPageImageOptions Options for modifying the request.
/// @returns NSURL*
///
-(NSURLSessionTask*) getDocumentPageImageWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    pageNumber:(NSString*) pageNumber 
    options:(DSESTemplatesApi_GetDocumentPageImageOptions*) options
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
///
///
/// @param DSESTemplatesApi_GetDocumentTabsOptions Options for modifying the request.
/// @returns DSESTabs*
///
-(NSURLSessionTask*) getDocumentTabsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    options:(DSESTemplatesApi_GetDocumentTabsOptions*) options
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/tabs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// Gets template lock information.
/// Retrieves general information about the template lock.  If the call is made by the user who has the lock and the request has the same integrator key as original, then the `X-DocuSign-Edit` header  field and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
///
///
/// @returns DSESLockInformation*
///
-(NSURLSessionTask*) getLockWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    completionHandler: (void (^)(DSESLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/lock"];

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
/// Gets template notification information.
/// Retrieves the envelope notification, reminders and expirations, information for an existing template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
///
///
/// @returns DSESNotification*
///
-(NSURLSessionTask*) getNotificationSettingsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    completionHandler: (void (^)(DSESNotification* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/notification"];

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
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
/// @param pageNumber The page number being accessed.
///
///
///
/// @returns DSESTabs*
///
-(NSURLSessionTask*) getPageTabsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    pageNumber:(NSString*) pageNumber 
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/tabs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
///
///
/// @param DSESTemplatesApi_GetPagesOptions Options for modifying the request.
/// @returns DSESPageImages*
///
-(NSURLSessionTask*) getPagesWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    options:(DSESTemplatesApi_GetPagesOptions*) options
    completionHandler: (void (^)(DSESPageImages* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// Gets the bulk recipient file from a template.
/// Retrieves the bulk recipient file information from a template that has a bulk recipient.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
/// @param DSESTemplatesApi_ListBulkRecipientsOptions Options for modifying the request.
/// @returns DSESBulkRecipientsResponse*
///
-(NSURLSessionTask*) listBulkRecipientsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    options:(DSESTemplatesApi_ListBulkRecipientsOptions*) options
    completionHandler: (void (^)(DSESBulkRecipientsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients"];

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
/// Gets the custom document fields from a template.
/// Retrieves the custom document field information from an existing template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
///
///
/// @returns DSESCustomFields*
///
-(NSURLSessionTask*) listCustomFieldsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    completionHandler: (void (^)(DSESCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/custom_fields"];

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
                              responseType: @"DSESCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESCustomFields*)data, error);
                                }
                            }];
}

///
/// Gets the custom document fields for a an existing template document.
/// Retrieves the custom document fields for an existing template document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
///
///
///
/// @returns DSESDocumentFieldsInformation*
///
-(NSURLSessionTask*) listDocumentFieldsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    completionHandler: (void (^)(DSESDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// Gets a list of documents associated with a template.
/// Retrieves a list of documents associated with the specified template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
///
/// @param DSESTemplatesApi_ListDocumentsOptions Options for modifying the request.
/// @returns DSESTemplateDocumentsResult*
///
-(NSURLSessionTask*) listDocumentsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    options:(DSESTemplatesApi_ListDocumentsOptions*) options
    completionHandler: (void (^)(DSESTemplateDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
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
                              responseType: @"DSESTemplateDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateDocumentsResult*)data, error);
                                }
                            }];
}

///
/// Gets recipient information from a template.
/// Retrieves the information for all recipients in the specified template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
///
/// @param DSESTemplatesApi_ListRecipientsOptions Options for modifying the request.
/// @returns DSESRecipients*
///
-(NSURLSessionTask*) listRecipientsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    options:(DSESTemplatesApi_ListRecipientsOptions*) options
    completionHandler: (void (^)(DSESRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.includeAnchorTabLocations != nil) {
            queryParams[@"include_anchor_tab_locations"] = options.includeAnchorTabLocations;
        }
        if(options.includeExtended != nil) {
            queryParams[@"include_extended"] = options.includeExtended;
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
/// Gets the tabs information for a signer or sign-in-person recipient in a template.
/// Gets the tabs information for a signer or sign-in-person recipient in a template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
///
/// @param DSESTemplatesApi_ListTabsOptions Options for modifying the request.
/// @returns DSESTabs*
///
-(NSURLSessionTask*) listTabsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    options:(DSESTemplatesApi_ListTabsOptions*) options
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

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
/// Gets the definition of a template.
/// Retrieves the list of templates for the specified account. The request can be limited to a specific folder.
/// @param accountId The external account number (int) or account ID Guid.
///
///
/// @param DSESTemplatesApi_ListTemplatesOptions Options for modifying the request.
/// @returns DSESEnvelopeTemplateResults*
///
-(NSURLSessionTask*) listTemplatesWithAccountId:
    (NSString*) accountId 
    options:(DSESTemplatesApi_ListTemplatesOptions*) options
    completionHandler: (void (^)(DSESEnvelopeTemplateResults* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.createdFromDate != nil) {
            queryParams[@"created_from_date"] = options.createdFromDate;
        }
        if(options.createdToDate != nil) {
            queryParams[@"created_to_date"] = options.createdToDate;
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
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
        }
        if(options.isDownload != nil) {
            queryParams[@"is_download"] = options.isDownload;
        }
        if(options.modifiedFromDate != nil) {
            queryParams[@"modified_from_date"] = options.modifiedFromDate;
        }
        if(options.modifiedToDate != nil) {
            queryParams[@"modified_to_date"] = options.modifiedToDate;
        }
        if(options.order != nil) {
            queryParams[@"order"] = options.order;
        }
        if(options.orderBy != nil) {
            queryParams[@"order_by"] = options.orderBy;
        }
        if(options.searchFields != nil) {
            queryParams[@"search_fields"] = options.searchFields;
        }
        if(options.searchText != nil) {
            queryParams[@"search_text"] = options.searchText;
        }
        if(options.sharedByMe != nil) {
            queryParams[@"shared_by_me"] = options.sharedByMe;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
        }
        if(options.templateIds != nil) {
            queryParams[@"template_ids"] = options.templateIds;
        }
        if(options.toDate != nil) {
            queryParams[@"to_date"] = options.toDate;
        }
        if(options.usedFromDate != nil) {
            queryParams[@"used_from_date"] = options.usedFromDate;
        }
        if(options.usedToDate != nil) {
            queryParams[@"used_to_date"] = options.usedToDate;
        }
        if(options.userFilter != nil) {
            queryParams[@"user_filter"] = options.userFilter;
        }
        if(options.userId != nil) {
            queryParams[@"user_id"] = options.userId;
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
                              responseType: @"DSESEnvelopeTemplateResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESEnvelopeTemplateResults*)data, error);
                                }
                            }];
}

///
/// Rotates page image from a template for display.
/// Rotates page image from a template for display. The page image can be rotated to the left or right.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
/// @param pageNumber The page number being accessed.
///
/// @param pageRequest  
///
/// @returns void
///
-(NSURLSessionTask*) rotateDocumentPageWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    pageNumber:(NSString*) pageNumber 
    pageRequest:(DSESPageRequest*) pageRequest
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// Updates an existing template.
/// Updates an existing template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param envelopeTemplate  
///
/// @returns DSESTemplateUpdateSummary*
///
-(NSURLSessionTask*) updateWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    envelopeTemplate:(DSESEnvelopeTemplate*) envelopeTemplate
    completionHandler: (void (^)(DSESTemplateUpdateSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}"];

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
    bodyParam = envelopeTemplate;

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
                              responseType: @"DSESTemplateUpdateSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateUpdateSummary*)data, error);
                                }
                            }];
}

///
/// Adds or replaces the bulk recipients list in a template.
/// Updates the bulk recipients in a template using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param bulkRecipientsRequest  
///
/// @returns DSESBulkRecipientsSummaryResponse*
///
-(NSURLSessionTask*) updateBulkRecipientsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    bulkRecipientsRequest:(DSESBulkRecipientsRequest*) bulkRecipientsRequest
    completionHandler: (void (^)(DSESBulkRecipientsSummaryResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients"];

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

///
/// Updates envelope custom fields in a template.
/// Updates the custom fields in a template.  Each custom field used in a template must have a unique name.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param templateCustomFields  
///
/// @returns DSESCustomFields*
///
-(NSURLSessionTask*) updateCustomFieldsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templateCustomFields:(DSESTemplateCustomFields*) templateCustomFields
    completionHandler: (void (^)(DSESCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/custom_fields"];

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
    bodyParam = templateCustomFields;

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
/// Adds a document to a template document.
/// Adds the specified document to an existing template document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
///
/// @param envelopeDefinition  
/// @param DSESTemplatesApi_UpdateDocumentOptions Options for modifying the request.
/// @returns DSESEnvelopeDocument*
///
-(NSURLSessionTask*) updateDocumentWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    envelopeDefinition:(DSESEnvelopeDefinition*) envelopeDefinition
    options:(DSESTemplatesApi_UpdateDocumentOptions*) options
    completionHandler: (void (^)(DSESEnvelopeDocument* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) { 
        if(options.isEnvelopeDefinition != nil) {
            queryParams[@"is_envelope_definition"] = options.isEnvelopeDefinition;
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
/// Updates existing custom document fields in an existing template document.
/// Updates existing custom document fields in an existing template document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation  
///
/// @returns DSESDocumentFieldsInformation*
///
-(NSURLSessionTask*) updateDocumentFieldsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    documentId:(NSString*) documentId 
    documentFieldsInformation:(DSESDocumentFieldsInformation*) documentFieldsInformation
    completionHandler: (void (^)(DSESDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
/// Adds documents to a template document.
/// Adds one or more documents to an existing template document.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param envelopeDefinition  
///
/// @returns DSESTemplateDocumentsResult*
///
-(NSURLSessionTask*) updateDocumentsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    envelopeDefinition:(DSESEnvelopeDefinition*) envelopeDefinition
    completionHandler: (void (^)(DSESTemplateDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/documents"];

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
                              responseType: @"DSESTemplateDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESTemplateDocumentsResult*)data, error);
                                }
                            }];
}

///
/// Shares a template with a group
/// Shares a template with the specified members group.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param templatePart Currently, the only defined part is **groups**.
///
/// @param groupInformation  
///
/// @returns DSESGroupInformation*
///
-(NSURLSessionTask*) updateGroupShareWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templatePart:(NSString*) templatePart 
    groupInformation:(DSESGroupInformation*) groupInformation
    completionHandler: (void (^)(DSESGroupInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templatePart' is set
    if (templatePart == nil) {
        NSParameterAssert(templatePart);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templatePart"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/{templatePart}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    if (templatePart != nil) {
        pathParams[@"templatePart"] = templatePart;
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
    bodyParam = groupInformation;

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
                              responseType: @"DSESGroupInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSESGroupInformation*)data, error);
                                }
                            }];
}

///
/// Updates a template lock.
/// Updates the lock duration time or update the `lockedByApp` property information for the specified template. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information and the `X-DocuSign-Edit` header must be included or an error will be generated.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param lockRequest  
///
/// @returns DSESLockInformation*
///
-(NSURLSessionTask*) updateLockWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    lockRequest:(DSESLockRequest*) lockRequest
    completionHandler: (void (^)(DSESLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/lock"];

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
/// Updates the notification  structure for an existing template.
/// Updates the notification structure for an existing template. Use this endpoint to set reminder and expiration notifications.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param templateNotificationRequest  
///
/// @returns DSESNotification*
///
-(NSURLSessionTask*) updateNotificationSettingsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templateNotificationRequest:(DSESTemplateNotificationRequest*) templateNotificationRequest
    completionHandler: (void (^)(DSESNotification* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/notification"];

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
    bodyParam = templateNotificationRequest;

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
/// Updates recipients in a template.
/// Updates recipients in a template.   You can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
///
/// @param templateRecipients  
/// @param DSESTemplatesApi_UpdateRecipientsOptions Options for modifying the request.
/// @returns DSESRecipientsUpdateSummary*
///
-(NSURLSessionTask*) updateRecipientsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    templateRecipients:(DSESTemplateRecipients*) templateRecipients
    options:(DSESTemplatesApi_UpdateRecipientsOptions*) options
    completionHandler: (void (^)(DSESRecipientsUpdateSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
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
    bodyParam = templateRecipients;

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
/// Updates the tabs for a recipient.
/// Updates one or more tabs for a recipient in a template.
/// @param accountId The external account number (int) or account ID Guid.
/// @param templateId The ID of the template being accessed.
/// @param recipientId The ID of the recipient being accessed.
///
/// @param templateTabs  
///
/// @returns DSESTabs*
///
-(NSURLSessionTask*) updateTabsWithAccountId:
    (NSString*) accountId 
    templateId:(NSString*) templateId 
    recipientId:(NSString*) recipientId 
    templateTabs:(DSESTemplateTabs*) templateTabs
    completionHandler: (void (^)(DSESTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSESTemplatesApiErrorDomain code:kDSESTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

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
    bodyParam = templateTabs;

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



@end
