#import "DSTemplatesApi.h"
#import "DSQueryParamCollection.h"
#import "DSErrorDetails.h"
#import "DSEnvelopeTemplateResults.h"
#import "DSEnvelopeTemplate.h"
#import "DSTemplateSummary.h"
#import "DSTemplateUpdateSummary.h"
#import "DSCustomFields.h"
#import "DSTemplateCustomFields.h"
#import "DSTemplateDocumentsResult.h"
#import "DSEnvelopeDefinition.h"
#import "DSDocumentFieldsInformation.h"
#import "DSPageRequest.h"
#import "DSLockInformation.h"
#import "DSNotification.h"
#import "DSTemplateNotificationRequest.h"
#import "DSRecipients.h"
#import "DSTemplateRecipients.h"
#import "DSRecipientsUpdateSummary.h"
#import "DSTabs.h"
#import "DSTemplateTabs.h"
#import "DSGroupInformation.h"






@interface DSTemplatesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation DSTemplatesApi

static DSTemplatesApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        DSConfiguration *config = [DSConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[DSApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(DSApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(DSTemplatesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[DSTemplatesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(DSTemplatesApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[DSTemplatesApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [DSApiClient requestQueueSize];
}

#pragma mark - Api Methods




///
/// Gets the definition of a template.
/// Retrieves the list of templates for the specified account. The request can be limited to a specific folder.
///
///  @param accountId The external account number (int) or account ID Guid.
///
///
///
///  @returns DSEnvelopeTemplateResults*
-(NSNumber*) listTemplatesWithCompletionBlock: (NSString*) accountId
        
     
    		
		
        completionHandler: (void (^)(DSEnvelopeTemplateResults* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listTemplates`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeTemplateResults*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeTemplateResults*)data, error);
              }
          ];
}




///
/// Creates an envelope from a template.
/// Creates a template definition using a multipart request.\n\n###Template Email Subject Merge Fields\n\nCall this endpoint to insert a recipient name and email address merge fields into the email subject line when creating or sending from a template.\n\nThe merge fields, based on the recipient’s role name, are added to the `emailSubject` property when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.\n\nBoth the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient.\n### Note: If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.\n\nTo add a recipient’s name in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:\n\n[[<roleName>_UserName]]\n\nExample:\n\n`\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`\n\nTo add a recipient’s email address in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:\n\n[[<roleName>_Email]]\n\nExample:\n\n`\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`\n\n\nIn both cases the <roleName> is the recipient's contents of the `roleName` property in the template.\n\nFor cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.
///
///  @param accountId The external account number (int) or account ID Guid.
///
/// @param envelopeTemplate TBD Description 
///
///  @returns DSTemplateSummary*
-(NSNumber*) createTemplateWithCompletionBlock: (NSString*) accountId
        
    envelopeTemplate:(DSEnvelopeTemplate*) envelopeTemplate 
    		
		
        completionHandler: (void (^)(DSTemplateSummary* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeTemplate;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTemplateSummary*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTemplateSummary*)data, error);
              }
          ];
}




///
/// Gets a list of templates for a specified account.
/// Retrieves the definition of the specified template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
///
///
///  @returns DSEnvelopeTemplate*
-(NSNumber*) getWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
     
    		
		
        completionHandler: (void (^)(DSEnvelopeTemplate* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `get`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `get`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeTemplate*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeTemplate*)data, error);
              }
          ];
}




///
/// Updates an existing template.
/// Updates an existing template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param envelopeTemplate TBD Description 
///
///  @returns DSTemplateUpdateSummary*
-(NSNumber*) updateWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    envelopeTemplate:(DSEnvelopeTemplate*) envelopeTemplate 
    		
		
        completionHandler: (void (^)(DSTemplateUpdateSummary* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `update`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `update`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeTemplate;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTemplateUpdateSummary*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTemplateUpdateSummary*)data, error);
              }
          ];
}




///
/// Gets the custom document fields from a template.
/// Retrieves the custom document field information from an existing template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
///
///
///  @returns DSCustomFields*
-(NSNumber*) listCustomFieldsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
     
    		
		
        completionHandler: (void (^)(DSCustomFields* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listCustomFields`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `listCustomFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/custom_fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSCustomFields*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSCustomFields*)data, error);
              }
          ];
}




///
/// Updates envelope custom fields in a template.
/// Updates the custom fields in a template.\n\nEach custom field used in a template must have a unique name.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param templateCustomFields TBD Description 
///
///  @returns DSCustomFields*
-(NSNumber*) updateCustomFieldsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    templateCustomFields:(DSTemplateCustomFields*) templateCustomFields 
    		
		
        completionHandler: (void (^)(DSCustomFields* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateCustomFields`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `updateCustomFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/custom_fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateCustomFields;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSCustomFields*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSCustomFields*)data, error);
              }
          ];
}




///
/// Creates custom document fields in an existing template document.
/// Creates custom document fields in an existing template document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param templateCustomFields TBD Description 
///
///  @returns DSCustomFields*
-(NSNumber*) createCustomFieldsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    templateCustomFields:(DSTemplateCustomFields*) templateCustomFields 
    		
		
        completionHandler: (void (^)(DSCustomFields* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createCustomFields`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `createCustomFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/custom_fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateCustomFields;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSCustomFields*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSCustomFields*)data, error);
              }
          ];
}




///
/// Deletes envelope custom fields in a template.
/// Deletes envelope custom fields in a template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param templateCustomFields TBD Description 
///
///  @returns DSCustomFields*
-(NSNumber*) deleteCustomFieldsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    templateCustomFields:(DSTemplateCustomFields*) templateCustomFields 
    		
		
        completionHandler: (void (^)(DSCustomFields* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteCustomFields`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteCustomFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/custom_fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateCustomFields;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSCustomFields*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSCustomFields*)data, error);
              }
          ];
}




///
/// Gets a list of documents associated with a template.
/// Retrieves a list of documents associated with the specified template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
///
///
///  @returns DSTemplateDocumentsResult*
-(NSNumber*) listDocumentsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
     
    		
		
        completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listDocuments`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `listDocuments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTemplateDocumentsResult*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTemplateDocumentsResult*)data, error);
              }
          ];
}




///
/// Adds documents to a template document.
/// Adds one or more documents to an existing template document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param envelopeDefinition TBD Description 
///
///  @returns DSTemplateDocumentsResult*
-(NSNumber*) updateDocumentsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition 
    		
		
        completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateDocuments`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `updateDocuments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeDefinition;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTemplateDocumentsResult*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTemplateDocumentsResult*)data, error);
              }
          ];
}




///
/// Deletes documents from a template.
/// Deletes one or more documents from an existing template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param envelopeDefinition TBD Description 
///
///  @returns DSTemplateDocumentsResult*
-(NSNumber*) deleteDocumentsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition 
    		
		
        completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteDocuments`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteDocuments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeDefinition;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTemplateDocumentsResult*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTemplateDocumentsResult*)data, error);
              }
          ];
}




///
/// Gets PDF documents from a template.
/// Retrieves one or more PDF documents from the specified template.\n\nYou can specify the ID of the document to retrieve or can specify `combined` to retrieve all documents in the template as one pdf.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param documentId The ID of the document being accessed.
///
///
///
///  @returns NSURL*
-(NSNumber*) getDocumentWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         documentId: (NSString*) documentId
        
     
    		
		
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getDocument`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `getDocument`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `getDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/pdf"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}




///
/// Gets the custom document fields for a an existing template document.
/// Retrieves the custom document fields for an existing template document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param documentId The ID of the document being accessed.
///
///
///
///  @returns DSDocumentFieldsInformation*
-(NSNumber*) listDocumentFieldsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         documentId: (NSString*) documentId
        
     
    		
		
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listDocumentFields`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `listDocumentFields`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `listDocumentFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentFieldsInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentFieldsInformation*)data, error);
              }
          ];
}




///
/// Updates existing custom document fields in an existing template document.
/// Updates existing custom document fields in an existing template document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation TBD Description 
///
///  @returns DSDocumentFieldsInformation*
-(NSNumber*) updateDocumentFieldsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         documentId: (NSString*) documentId
        
    documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation 
    		
		
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateDocumentFields`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `updateDocumentFields`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `updateDocumentFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = documentFieldsInformation;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentFieldsInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentFieldsInformation*)data, error);
              }
          ];
}




///
/// Creates custom document fields in an existing template document.
/// Creates custom document fields in an existing template document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation TBD Description 
///
///  @returns DSDocumentFieldsInformation*
-(NSNumber*) createDocumentFieldsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         documentId: (NSString*) documentId
        
    documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation 
    		
		
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createDocumentFields`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `createDocumentFields`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `createDocumentFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = documentFieldsInformation;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentFieldsInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentFieldsInformation*)data, error);
              }
          ];
}




///
/// Deletes custom document fields from an existing template document.
/// Deletes custom document fields from an existing template document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation TBD Description 
///
///  @returns DSDocumentFieldsInformation*
-(NSNumber*) deleteDocumentFieldsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         documentId: (NSString*) documentId
        
    documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation 
    		
		
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteDocumentFields`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteDocumentFields`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `deleteDocumentFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = documentFieldsInformation;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentFieldsInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentFieldsInformation*)data, error);
              }
          ];
}




///
/// Deletes a page from a document in an template.
/// Deletes a page from a document in a template based on the page number.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param documentId The ID of the document being accessed.
///  @param pageNumber The page number being accessed.
///
/// @param pageRequest TBD Description 
///
///  @returns void
-(NSNumber*) deleteDocumentPageWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         documentId: (NSString*) documentId
         pageNumber: (NSString*) pageNumber
        
    pageRequest:(DSPageRequest*) pageRequest 
    		
		
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteDocumentPage`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteDocumentPage`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `deleteDocumentPage`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `deleteDocumentPage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = pageRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}




///
/// Gets template lock information.
/// Retrieves general information about the template lock.\n\nIf the call is made by the locked by user and the request has the same integrator key as original, then the `X-DocuSign-Edit` header and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
///
///
///  @returns DSLockInformation*
-(NSNumber*) getLockWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
     
    		
		
        completionHandler: (void (^)(DSLockInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getLock`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `getLock`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/lock"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSLockInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSLockInformation*)data, error);
              }
          ];
}




///
/// Gets template notification information.
/// Retrieves the envelope notification, reminders and expirations, information for an existing template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
///
///
///  @returns DSNotification*
-(NSNumber*) getNotificationSettingsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
     
    		
		
        completionHandler: (void (^)(DSNotification* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getNotificationSettings`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `getNotificationSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/notification"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSNotification*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSNotification*)data, error);
              }
          ];
}




///
/// Updates the notification  structure for an existing template.
/// Updates the notification structure for an existing template. Use this endpoint to set reminder and expiration notifications.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param templateNotificationRequest TBD Description 
///
///  @returns DSNotification*
-(NSNumber*) updateNotificationSettingsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    templateNotificationRequest:(DSTemplateNotificationRequest*) templateNotificationRequest 
    		
		
        completionHandler: (void (^)(DSNotification* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateNotificationSettings`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `updateNotificationSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/notification"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateNotificationRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSNotification*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSNotification*)data, error);
              }
          ];
}




///
/// Gets recipient information from a template.
/// Retrieves the information for all recipients in the specified template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
///
///
///  @returns DSRecipients*
-(NSNumber*) listRecipientsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
     
    		
		
        completionHandler: (void (^)(DSRecipients* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listRecipients`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `listRecipients`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipients*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipients*)data, error);
              }
          ];
}




///
/// Updates recipients in a template.
/// Updates recipients in a template. \n\nYou can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param templateRecipients TBD Description 
///
///  @returns DSRecipientsUpdateSummary*
-(NSNumber*) updateRecipientsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    templateRecipients:(DSTemplateRecipients*) templateRecipients 
    		
		
        completionHandler: (void (^)(DSRecipientsUpdateSummary* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateRecipients`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `updateRecipients`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateRecipients;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipientsUpdateSummary*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipientsUpdateSummary*)data, error);
              }
          ];
}




///
/// Adds tabs for a recipient.
/// Adds one or more recipients to a template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param templateRecipients TBD Description 
///
///  @returns DSRecipients*
-(NSNumber*) createRecipientsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    templateRecipients:(DSTemplateRecipients*) templateRecipients 
    		
		
        completionHandler: (void (^)(DSRecipients* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createRecipients`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `createRecipients`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateRecipients;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipients*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipients*)data, error);
              }
          ];
}




///
/// Deletes recipients from a template.
/// Deletes one or more recipients from a template. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///
/// @param templateRecipients TBD Description 
///
///  @returns DSRecipients*
-(NSNumber*) deleteRecipientsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
        
    templateRecipients:(DSTemplateRecipients*) templateRecipients 
    		
		
        completionHandler: (void (^)(DSRecipients* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteRecipients`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteRecipients`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateRecipients;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipients*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipients*)data, error);
              }
          ];
}




///
/// Deletes the specified recipient file from a template.
/// Deletes the specified recipient file from the specified template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
/// @param templateRecipients TBD Description 
///
///  @returns DSRecipients*
-(NSNumber*) deleteRecipientWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         recipientId: (NSString*) recipientId
        
    templateRecipients:(DSTemplateRecipients*) templateRecipients 
    		
		
        completionHandler: (void (^)(DSRecipients* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteRecipient`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteRecipient`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `deleteRecipient`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateRecipients;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipients*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipients*)data, error);
              }
          ];
}




///
/// Gets the tabs information for a signer or sign-in-person recipient in a template.
/// Gets the tabs information for a signer or sign-in-person recipient in a template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
/// @param tabs TBD Description 
///
///  @returns DSTabs*
-(NSNumber*) listTabsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         recipientId: (NSString*) recipientId
        
    tabs:(DSTabs*) tabs 
    		
		
        completionHandler: (void (^)(DSTabs* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listTabs`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `listTabs`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `listTabs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = tabs;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTabs*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabs*)data, error);
              }
          ];
}




///
/// Updates the tabs for a recipient.
/// Updates one or more tabs for a recipient in a template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
/// @param templateTabs TBD Description 
///
///  @returns DSTabs*
-(NSNumber*) updateTabsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         recipientId: (NSString*) recipientId
        
    templateTabs:(DSTemplateTabs*) templateTabs 
    		
		
        completionHandler: (void (^)(DSTabs* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateTabs`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `updateTabs`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `updateTabs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateTabs;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTabs*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabs*)data, error);
              }
          ];
}




///
/// Adds tabs for a recipient.
/// Adds one or more tabs for a recipient.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
/// @param templateTabs TBD Description 
///
///  @returns DSTabs*
-(NSNumber*) createTabsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         recipientId: (NSString*) recipientId
        
    templateTabs:(DSTemplateTabs*) templateTabs 
    		
		
        completionHandler: (void (^)(DSTabs* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createTabs`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `createTabs`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `createTabs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateTabs;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTabs*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabs*)data, error);
              }
          ];
}




///
/// Deletes the tabs associated with a recipient in a template.
/// Deletes one or more tabs associated with a recipient in a template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
/// @param templateTabs TBD Description 
///
///  @returns DSTabs*
-(NSNumber*) deleteTabsWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         recipientId: (NSString*) recipientId
        
    templateTabs:(DSTemplateTabs*) templateTabs 
    		
		
        completionHandler: (void (^)(DSTabs* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteTabs`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteTabs`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `deleteTabs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = templateTabs;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTabs*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabs*)data, error);
              }
          ];
}




///
/// Shares a template with a group
/// Shares a template with the specified members group.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param templatePart Currently, the only defined part is **groups**.
///
/// @param groupInformation TBD Description 
///
///  @returns DSGroupInformation*
-(NSNumber*) updateGroupShareWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         templatePart: (NSString*) templatePart
        
    groupInformation:(DSGroupInformation*) groupInformation 
    		
		
        completionHandler: (void (^)(DSGroupInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateGroupShare`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `updateGroupShare`"];
    }
    
    // verify the required parameter 'templatePart' is set
    if (templatePart == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templatePart` when calling `updateGroupShare`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/{templatePart}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = groupInformation;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSGroupInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSGroupInformation*)data, error);
              }
          ];
}




///
/// Removes a member group's sharing permissions for a template.
/// Removes a member group's sharing permissions for a specified template.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param templateId The ID of the template being accessed.
///  @param templatePart Currently, the only defined part is **groups**.
///
/// @param groupInformation TBD Description 
///
///  @returns DSGroupInformation*
-(NSNumber*) deleteGroupShareWithCompletionBlock: (NSString*) accountId
         templateId: (NSString*) templateId
         templatePart: (NSString*) templatePart
        
    groupInformation:(DSGroupInformation*) groupInformation 
    		
		
        completionHandler: (void (^)(DSGroupInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteGroupShare`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteGroupShare`"];
    }
    
    // verify the required parameter 'templatePart' is set
    if (templatePart == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templatePart` when calling `deleteGroupShare`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/templates/{templateId}/{templatePart}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

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
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = groupInformation;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSGroupInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSGroupInformation*)data, error);
              }
          ];
}



@end
