#import "DSTemplatesApi.h"
#import "DSQueryParamCollection.h"
#import "DSBulkRecipientsRequest.h"
#import "DSBulkRecipientsResponse.h"
#import "DSBulkRecipientsSummaryResponse.h"
#import "DSBulkRecipientsUpdateResponse.h"
#import "DSCustomFields.h"
#import "DSDocumentFieldsInformation.h"
#import "DSEnvelopeDefinition.h"
#import "DSEnvelopeDocument.h"
#import "DSEnvelopeTemplate.h"
#import "DSEnvelopeTemplateResults.h"
#import "DSErrorDetails.h"
#import "DSGroupInformation.h"
#import "DSLockInformation.h"
#import "DSLockRequest.h"
#import "DSNotification.h"
#import "DSPageRequest.h"
#import "DSRecipients.h"
#import "DSRecipientsUpdateSummary.h"
#import "DSReturnUrlRequest.h"
#import "DSTabs.h"
#import "DSTemplateCustomFields.h"
#import "DSTemplateDocumentsResult.h"
#import "DSTemplateNotificationRequest.h"
#import "DSTemplateRecipients.h"
#import "DSTemplateSummary.h"
#import "DSTemplateTabs.h"
#import "DSTemplateUpdateSummary.h"
#import "DSViewUrl.h"


@implementation DSTemplatesApi_CreateRecipientsOptions
@end
@implementation DSTemplatesApi_GetOptions
@end
@implementation DSTemplatesApi_GetDocumentOptions
@end
@implementation DSTemplatesApi_GetDocumentPageImageOptions
@end
@implementation DSTemplatesApi_ListBulkRecipientsOptions
@end
@implementation DSTemplatesApi_ListRecipientsOptions
@end
@implementation DSTemplatesApi_ListTabsOptions
@end
@implementation DSTemplatesApi_ListTemplatesOptions
@end
@implementation DSTemplatesApi_UpdateDocumentOptions
@end
@implementation DSTemplatesApi_UpdateDocumentsOptions
@end
@implementation DSTemplatesApi_UpdateRecipientsOptions
@end

@interface DSTemplatesApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation DSTemplatesApi

NSString* kDSTemplatesApiErrorDomain = @"DSTemplatesApiErrorDomain";
NSInteger kDSTemplatesApiMissingParamErrorCode = 234513;

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
    static DSTemplatesApi *sharedAPI;
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
/// Creates custom document fields in an existing template document.
/// Creates custom document fields in an existing template document.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param templateCustomFields  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSCustomFields*
-(NSNumber*) createCustomFieldsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 templateCustomFields:(DSTemplateCustomFields*) templateCustomFields

 completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/custom_fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSCustomFields*)data, error);
                                }
                           }
          ];
}

///
/// Creates custom document fields in an existing template document.
/// Creates custom document fields in an existing template document.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed.
/// @param documentFieldsInformation  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSDocumentFieldsInformation*
-(NSNumber*) createDocumentFieldsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId 
 documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation

 completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSDocumentFieldsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSDocumentFieldsInformation*)data, error);
                                }
                           }
          ];
}

///
/// Provides a URL to start an edit view of the Template UI
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param returnUrlRequest  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSViewUrl*
-(NSNumber*) createEditViewWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 returnUrlRequest:(DSReturnUrlRequest*) returnUrlRequest

 completionHandler: (void (^)(DSViewUrl* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/views/edit"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSViewUrl*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSViewUrl*)data, error);
                                }
                           }
          ];
}

///
/// Lock a template.
/// Locks the specified template, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the template.  ###### Note: Users must have envelope locking capability enabled to use this function (the userSetting property `canLockEnvelopes` must be set to **true** for the user).
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param lockRequest  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSLockInformation*
-(NSNumber*) createLockWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 lockRequest:(DSLockRequest*) lockRequest

 completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/lock"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSLockInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSLockInformation*)data, error);
                                }
                           }
          ];
}

///
/// Adds tabs for a recipient.
/// Adds one or more recipients to a template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param templateRecipients  (optional)
/// @param DSTemplatesApi_CreateRecipientsOptions Options for modifying the behavior of the function.
///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSRecipients*
-(NSNumber*) createRecipientsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 templateRecipients:(DSTemplateRecipients*) templateRecipients
 options:(DSTemplatesApi_CreateRecipientsOptions*) options
 completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSRecipients*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSRecipients*)data, error);
                                }
                           }
          ];
}

///
/// Adds tabs for a recipient.
/// Adds one or more tabs for a recipient.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param recipientId The ID of the recipient being accessed.
/// @param templateTabs  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTabs*
-(NSNumber*) createTabsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  recipientId:(NSString*) recipientId 
 templateTabs:(DSTemplateTabs*) templateTabs

 completionHandler: (void (^)(DSTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTabs*)data, error);
                                }
                           }
          ];
}

///
/// Creates an envelope from a template.
/// Creates a template definition using a multipart request.  ###Template Email Subject Merge Fields  Call this endpoint to insert a recipient name and email address merge fields into the email subject line when creating or sending from a template.  The merge fields, based on the recipient’s role name, are added to the `emailSubject` property when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient. ###### Note: If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.  To add a recipient’s name in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  [[<roleName>_UserName]]  Example:  `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`  To add a recipient’s email address in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  [[<roleName>_Email]]  Example:  `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`   In both cases the <roleName> is the recipient's contents of the `roleName` property in the template.  For cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.
/// @param accountId The external account number (int) or account ID Guid.
/// @param envelopeTemplate  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTemplateSummary*
-(NSNumber*) createTemplateWithAccountId:
(NSString*) accountId 
 envelopeTemplate:(DSEnvelopeTemplate*) envelopeTemplate

 completionHandler: (void (^)(DSTemplateSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates"];

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
                              responseType: @"DSTemplateSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTemplateSummary*)data, error);
                                }
                           }
          ];
}

///
/// Deletes the bulk recipient list on a template.
/// Deletes the bulk recipient list on a template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param recipientId The ID of the recipient being accessed.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBulkRecipientsUpdateResponse*
-(NSNumber*) deleteBulkRecipientsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  recipientId:(NSString*) recipientId 


 completionHandler: (void (^)(DSBulkRecipientsUpdateResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSBulkRecipientsUpdateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBulkRecipientsUpdateResponse*)data, error);
                                }
                           }
          ];
}

///
/// Deletes envelope custom fields in a template.
/// Deletes envelope custom fields in a template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param templateCustomFields  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSCustomFields*
-(NSNumber*) deleteCustomFieldsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 templateCustomFields:(DSTemplateCustomFields*) templateCustomFields

 completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/custom_fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSCustomFields*)data, error);
                                }
                           }
          ];
}

///
/// Deletes custom document fields from an existing template document.
/// Deletes custom document fields from an existing template document.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed.
/// @param documentFieldsInformation  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSDocumentFieldsInformation*
-(NSNumber*) deleteDocumentFieldsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId 
 documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation

 completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSDocumentFieldsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSDocumentFieldsInformation*)data, error);
                                }
                           }
          ];
}

///
/// Deletes a page from a document in an template.
/// Deletes a page from a document in a template based on the page number.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed./// @param pageNumber The page number being accessed.
/// @param pageRequest  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) deleteDocumentPageWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId  pageNumber:(NSString*) pageNumber 
 pageRequest:(DSPageRequest*) pageRequest

 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                           }
          ];
}

///
/// Deletes documents from a template.
/// Deletes one or more documents from an existing template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param envelopeDefinition  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTemplateDocumentsResult*
-(NSNumber*) deleteDocumentsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition

 completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSTemplateDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTemplateDocumentsResult*)data, error);
                                }
                           }
          ];
}

///
/// Removes a member group's sharing permissions for a template.
/// Removes a member group's sharing permissions for a specified template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param templatePart Currently, the only defined part is **groups**.
/// @param groupInformation  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSGroupInformation*
-(NSNumber*) deleteGroupShareWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  templatePart:(NSString*) templatePart 
 groupInformation:(DSGroupInformation*) groupInformation

 completionHandler: (void (^)(DSGroupInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templatePart' is set
    if (templatePart == nil) {
        NSParameterAssert(templatePart);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templatePart"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/{templatePart}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSGroupInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSGroupInformation*)data, error);
                                }
                           }
          ];
}

///
/// Deletes a template lock.
/// Deletes the lock from the specified template. The `X-DocuSign-Edit` header must be included in the request.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param lockRequest  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSLockInformation*
-(NSNumber*) deleteLockWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 lockRequest:(DSLockRequest*) lockRequest

 completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/lock"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSLockInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSLockInformation*)data, error);
                                }
                           }
          ];
}

///
/// Deletes the specified recipient file from a template.
/// Deletes the specified recipient file from the specified template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param recipientId The ID of the recipient being accessed.
/// @param templateRecipients  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSRecipients*
-(NSNumber*) deleteRecipientWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  recipientId:(NSString*) recipientId 
 templateRecipients:(DSTemplateRecipients*) templateRecipients

 completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSRecipients*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSRecipients*)data, error);
                                }
                           }
          ];
}

///
/// Deletes recipients from a template.
/// Deletes one or more recipients from a template. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param templateRecipients  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSRecipients*
-(NSNumber*) deleteRecipientsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 templateRecipients:(DSTemplateRecipients*) templateRecipients

 completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSRecipients*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSRecipients*)data, error);
                                }
                           }
          ];
}

///
/// Deletes the tabs associated with a recipient in a template.
/// Deletes one or more tabs associated with a recipient in a template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param recipientId The ID of the recipient being accessed.
/// @param templateTabs  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTabs*
-(NSNumber*) deleteTabsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  recipientId:(NSString*) recipientId 
 templateTabs:(DSTemplateTabs*) templateTabs

 completionHandler: (void (^)(DSTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTabs*)data, error);
                                }
                           }
          ];
}

///
/// Gets a list of templates for a specified account.
/// Retrieves the definition of the specified template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.

/// @param DSTemplatesApi_GetOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSEnvelopeTemplate*
-(NSNumber*) getWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 

 options:(DSTemplatesApi_GetOptions*) options
 completionHandler: (void (^)(DSEnvelopeTemplate* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSEnvelopeTemplate*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSEnvelopeTemplate*)data, error);
                                }
                           }
          ];
}

///
/// Gets PDF documents from a template.
/// Retrieves one or more PDF documents from the specified template.  You can specify the ID of the document to retrieve or can specify `combined` to retrieve all documents in the template as one pdf.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed.

/// @param DSTemplatesApi_GetDocumentOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return NSURL*
-(NSNumber*) getDocumentWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId 

 options:(DSTemplatesApi_GetDocumentOptions*) options
 completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                           }
          ];
}

///
/// Gets a page image from a template for display.
/// Retrieves a page image for display from the specified template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed./// @param pageNumber The page number being accessed.

/// @param DSTemplatesApi_GetDocumentPageImageOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return NSURL*
-(NSNumber*) getDocumentPageImageWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId  pageNumber:(NSString*) pageNumber 

 options:(DSTemplatesApi_GetDocumentPageImageOptions*) options
 completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                           }
          ];
}

///
/// Gets template lock information.
/// Retrieves general information about the template lock.  If the call is made by the user who has the lock and the request has the same integrator key as original, then the `X-DocuSign-Edit` header  field and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSLockInformation*
-(NSNumber*) getLockWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 


 completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/lock"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSLockInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSLockInformation*)data, error);
                                }
                           }
          ];
}

///
/// Gets template notification information.
/// Retrieves the envelope notification, reminders and expirations, information for an existing template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSNotification*
-(NSNumber*) getNotificationSettingsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 


 completionHandler: (void (^)(DSNotification* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/notification"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSNotification*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSNotification*)data, error);
                                }
                           }
          ];
}

///
/// Gets the bulk recipient file from a template.
/// Retrieves the bulk recipient file information from a template that has a bulk recipient.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param recipientId The ID of the recipient being accessed.

/// @param DSTemplatesApi_ListBulkRecipientsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBulkRecipientsResponse*
-(NSNumber*) listBulkRecipientsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  recipientId:(NSString*) recipientId 

 options:(DSTemplatesApi_ListBulkRecipientsOptions*) options
 completionHandler: (void (^)(DSBulkRecipientsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSBulkRecipientsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBulkRecipientsResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets the custom document fields from a template.
/// Retrieves the custom document field information from an existing template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSCustomFields*
-(NSNumber*) listCustomFieldsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 


 completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/custom_fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSCustomFields*)data, error);
                                }
                           }
          ];
}

///
/// Gets the custom document fields for a an existing template document.
/// Retrieves the custom document fields for an existing template document.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSDocumentFieldsInformation*
-(NSNumber*) listDocumentFieldsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId 


 completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSDocumentFieldsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSDocumentFieldsInformation*)data, error);
                                }
                           }
          ];
}

///
/// Gets a list of documents associated with a template.
/// Retrieves a list of documents associated with the specified template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTemplateDocumentsResult*
-(NSNumber*) listDocumentsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 


 completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSTemplateDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTemplateDocumentsResult*)data, error);
                                }
                           }
          ];
}

///
/// Gets recipient information from a template.
/// Retrieves the information for all recipients in the specified template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.

/// @param DSTemplatesApi_ListRecipientsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSRecipients*
-(NSNumber*) listRecipientsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 

 options:(DSTemplatesApi_ListRecipientsOptions*) options
 completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSRecipients*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSRecipients*)data, error);
                                }
                           }
          ];
}

///
/// Gets the tabs information for a signer or sign-in-person recipient in a template.
/// Gets the tabs information for a signer or sign-in-person recipient in a template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param recipientId The ID of the recipient being accessed.

/// @param DSTemplatesApi_ListTabsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTabs*
-(NSNumber*) listTabsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  recipientId:(NSString*) recipientId 

 options:(DSTemplatesApi_ListTabsOptions*) options
 completionHandler: (void (^)(DSTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTabs*)data, error);
                                }
                           }
          ];
}

///
/// Gets the definition of a template.
/// Retrieves the list of templates for the specified account. The request can be limited to a specific folder.
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSTemplatesApi_ListTemplatesOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSEnvelopeTemplateResults*
-(NSNumber*) listTemplatesWithAccountId:
(NSString*) accountId 

 options:(DSTemplatesApi_ListTemplatesOptions*) options
 completionHandler: (void (^)(DSEnvelopeTemplateResults* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.folder != nil) {
            queryParams[@"folder"] = options.folder;
        }
        if(options.folderIds != nil) {
            queryParams[@"folder_ids"] = options.folderIds;
        }
        if(options.fromDate != nil) {
            queryParams[@"from_date"] = options.fromDate;
        }
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
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
        if(options.shared != nil) {
            queryParams[@"shared"] = options.shared;
        }
        if(options.sharedByMe != nil) {
            queryParams[@"shared_by_me"] = options.sharedByMe;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
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
                              responseType: @"DSEnvelopeTemplateResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSEnvelopeTemplateResults*)data, error);
                                }
                           }
          ];
}

///
/// Rotates page image from a template for display.
/// Rotates page image from a template for display. The page image can be rotated to the left or right.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed./// @param pageNumber The page number being accessed.
/// @param pageRequest  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) rotateDocumentPageWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId  pageNumber:(NSString*) pageNumber 
 pageRequest:(DSPageRequest*) pageRequest

 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                           }
          ];
}

///
/// Updates an existing template.
/// Updates an existing template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param envelopeTemplate  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTemplateUpdateSummary*
-(NSNumber*) updateWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 envelopeTemplate:(DSEnvelopeTemplate*) envelopeTemplate

 completionHandler: (void (^)(DSTemplateUpdateSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSTemplateUpdateSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTemplateUpdateSummary*)data, error);
                                }
                           }
          ];
}

///
/// Adds or replaces the bulk recipients list in a template.
/// Updates the bulk recipients in a template using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param recipientId The ID of the recipient being accessed.
/// @param bulkRecipientsRequest  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBulkRecipientsSummaryResponse*
-(NSNumber*) updateBulkRecipientsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  recipientId:(NSString*) recipientId 
 bulkRecipientsRequest:(DSBulkRecipientsRequest*) bulkRecipientsRequest

 completionHandler: (void (^)(DSBulkRecipientsSummaryResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSBulkRecipientsSummaryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBulkRecipientsSummaryResponse*)data, error);
                                }
                           }
          ];
}

///
/// Updates envelope custom fields in a template.
/// Updates the custom fields in a template.  Each custom field used in a template must have a unique name.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param templateCustomFields  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSCustomFields*
-(NSNumber*) updateCustomFieldsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 templateCustomFields:(DSTemplateCustomFields*) templateCustomFields

 completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/custom_fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSCustomFields*)data, error);
                                }
                           }
          ];
}

///
/// Adds a document to a template document.
/// Adds the specified document to an existing template document.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed.
/// @param envelopeDefinition  (optional)
/// @param DSTemplatesApi_UpdateDocumentOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSEnvelopeDocument*
-(NSNumber*) updateDocumentWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId 
 envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition
 options:(DSTemplatesApi_UpdateDocumentOptions*) options
 completionHandler: (void (^)(DSEnvelopeDocument* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
        if(options.applyDocumentFields != nil) {
            queryParams[@"apply_document_fields"] = options.applyDocumentFields;
        }
        if(options.isEnvelopeDefinition != nil) {
            queryParams[@"is_envelope_definition"] = options.isEnvelopeDefinition;
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
                              responseType: @"DSEnvelopeDocument*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSEnvelopeDocument*)data, error);
                                }
                           }
          ];
}

///
/// Updates existing custom document fields in an existing template document.
/// Updates existing custom document fields in an existing template document.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param documentId The ID of the document being accessed.
/// @param documentFieldsInformation  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSDocumentFieldsInformation*
-(NSNumber*) updateDocumentFieldsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  documentId:(NSString*) documentId 
 documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation

 completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        NSParameterAssert(documentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"documentId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSDocumentFieldsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSDocumentFieldsInformation*)data, error);
                                }
                           }
          ];
}

///
/// Adds documents to a template document.
/// Adds one or more documents to an existing template document.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param envelopeDefinition  (optional)
/// @param DSTemplatesApi_UpdateDocumentsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTemplateDocumentsResult*
-(NSNumber*) updateDocumentsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition
 options:(DSTemplatesApi_UpdateDocumentsOptions*) options
 completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.applyDocumentFields != nil) {
            queryParams[@"apply_document_fields"] = options.applyDocumentFields;
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
                              responseType: @"DSTemplateDocumentsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTemplateDocumentsResult*)data, error);
                                }
                           }
          ];
}

///
/// Shares a template with a group
/// Shares a template with the specified members group.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param templatePart Currently, the only defined part is **groups**.
/// @param groupInformation  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSGroupInformation*
-(NSNumber*) updateGroupShareWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  templatePart:(NSString*) templatePart 
 groupInformation:(DSGroupInformation*) groupInformation

 completionHandler: (void (^)(DSGroupInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templatePart' is set
    if (templatePart == nil) {
        NSParameterAssert(templatePart);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templatePart"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/{templatePart}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSGroupInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSGroupInformation*)data, error);
                                }
                           }
          ];
}

///
/// Updates a template lock.
/// Updates the lock duration time or update the `lockedByApp` property information for the specified template. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information and the `X-DocuSign-Edit` header must be included or an error will be generated.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param lockRequest  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSLockInformation*
-(NSNumber*) updateLockWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 lockRequest:(DSLockRequest*) lockRequest

 completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/lock"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSLockInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSLockInformation*)data, error);
                                }
                           }
          ];
}

///
/// Updates the notification  structure for an existing template.
/// Updates the notification structure for an existing template. Use this endpoint to set reminder and expiration notifications.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param templateNotificationRequest  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSNotification*
-(NSNumber*) updateNotificationSettingsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 templateNotificationRequest:(DSTemplateNotificationRequest*) templateNotificationRequest

 completionHandler: (void (^)(DSNotification* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/notification"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSNotification*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSNotification*)data, error);
                                }
                           }
          ];
}

///
/// Updates recipients in a template.
/// Updates recipients in a template.   You can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed.
/// @param templateRecipients  (optional)
/// @param DSTemplatesApi_UpdateRecipientsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSRecipientsUpdateSummary*
-(NSNumber*) updateRecipientsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId 
 templateRecipients:(DSTemplateRecipients*) templateRecipients
 options:(DSTemplatesApi_UpdateRecipientsOptions*) options
 completionHandler: (void (^)(DSRecipientsUpdateSummary* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSRecipientsUpdateSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSRecipientsUpdateSummary*)data, error);
                                }
                           }
          ];
}

///
/// Updates the tabs for a recipient.
/// Updates one or more tabs for a recipient in a template.
/// @param accountId The external account number (int) or account ID Guid./// @param templateId The ID of the template being accessed./// @param recipientId The ID of the recipient being accessed.
/// @param templateTabs  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTabs*
-(NSNumber*) updateTabsWithAccountId:
(NSString*) accountId  templateId:(NSString*) templateId  recipientId:(NSString*) recipientId 
 templateTabs:(DSTemplateTabs*) templateTabs

 completionHandler: (void (^)(DSTabs* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        NSParameterAssert(templateId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"templateId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        NSParameterAssert(recipientId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientId"] };
            NSError* error = [NSError errorWithDomain:kDSTemplatesApiErrorDomain code:kDSTemplatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

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
                              responseType: @"DSTabs*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTabs*)data, error);
                                }
                           }
          ];
}


@end
