#import "DSCustomTabsApi.h"
#import "DSQueryParamCollection.h"
#import "DSTabMetadataList.h"
#import "DSErrorDetails.h"
#import "DSTabMetadata.h"



@implementation DSCustomTabsApi_ListOptions
@end



@interface DSCustomTabsApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation DSCustomTabsApi

static DSCustomTabsApi* singletonAPI = nil;

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

+(DSCustomTabsApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[DSCustomTabsApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(DSCustomTabsApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[DSCustomTabsApi alloc] init];
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
/// Gets a list of all account tabs.
/// Retrieves a list of all tabs associated with the account.
///
///  @param accountId The external account number (int) or account ID Guid.
///
///
///  @returns DSTabMetadataList*
-(NSNumber*) listWithCompletionBlock: (NSString*) accountId
        
     
		
        completionHandler: (void (^)(DSTabMetadataList* output, NSError* error))completionBlock { 
        

   
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `list`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/tab_definitions"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

	// this version doesn't use query params
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
                                         responseType: @"DSTabMetadataList*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabMetadataList*)data, error);
              }
          ];
}




///
/// Gets a list of all account tabs.
/// Retrieves a list of all tabs associated with the account.
///
///  @param accountId The external account number (int) or account ID Guid.
///
///
/// @param DSCustomTabsApi_ListOptions  Options for modifying the request.
///  @returns DSTabMetadataList*
-(NSNumber*) listWithCompletionBlock: (NSString*) accountId
        
     
    options:(DSCustomTabsApi_ListOptions*) options		
		
        completionHandler: (void (^)(DSTabMetadataList* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `list`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/tab_definitions"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	if (options != nil) {
		if(options.customTabOnly != nil) {
			
			queryParams[@"custom_tab_only"] = options.customTabOnly;
		}
		
	}
	
	
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
                                         responseType: @"DSTabMetadataList*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabMetadataList*)data, error);
              }
          ];
}




///
/// Creates a custom tab.
/// Creates a tab with pre-defined properties, such as a text tab with a certain font type and validation pattern. Users can access the custom tabs when sending documents through the DocuSign web application.\n\nCustom tabs can be created for approve, checkbox, company, date, date signed, decline, email, email address, envelope ID, first name, formula, full name, initial here, last name, list, note, number, radio, sign here, signer attachment, SSN, text, title, and zip tabs.
///
///  @param accountId The external account number (int) or account ID Guid.
///
/// @param tabMetadata TBD Description 
///
///  @returns DSTabMetadata*
-(NSNumber*) createWithCompletionBlock: (NSString*) accountId
        
    tabMetadata:(DSTabMetadata*) tabMetadata 
    		
		
        completionHandler: (void (^)(DSTabMetadata* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `create`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/tab_definitions"];

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
    
    bodyParam = tabMetadata;
    

    
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
                                         responseType: @"DSTabMetadata*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabMetadata*)data, error);
              }
          ];
}




///
/// Gets custom tab information.
/// Retrieves information about the requested custom tab on the specified account.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param customTabId 
///
///
///
///  @returns DSTabMetadata*
-(NSNumber*) getWithCompletionBlock: (NSString*) accountId
         customTabId: (NSString*) customTabId
        
     
    		
		
        completionHandler: (void (^)(DSTabMetadata* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `get`"];
    }
    
    // verify the required parameter 'customTabId' is set
    if (customTabId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `customTabId` when calling `get`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/tab_definitions/{customTabId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (customTabId != nil) {
        pathParams[@"customTabId"] = customTabId;
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
                                         responseType: @"DSTabMetadata*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabMetadata*)data, error);
              }
          ];
}




///
/// Updates custom tab information.
/// Updates the information in a custom tab for the specified account.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param customTabId 
///
/// @param tabMetadata TBD Description 
///
///  @returns DSTabMetadata*
-(NSNumber*) updateWithCompletionBlock: (NSString*) accountId
         customTabId: (NSString*) customTabId
        
    tabMetadata:(DSTabMetadata*) tabMetadata 
    		
		
        completionHandler: (void (^)(DSTabMetadata* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `update`"];
    }
    
    // verify the required parameter 'customTabId' is set
    if (customTabId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `customTabId` when calling `update`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/tab_definitions/{customTabId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (customTabId != nil) {
        pathParams[@"customTabId"] = customTabId;
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
    
    bodyParam = tabMetadata;
    

    
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
                                         responseType: @"DSTabMetadata*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabMetadata*)data, error);
              }
          ];
}




///
/// Deletes custom tab information.
/// Deletes the custom from the specified account.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param customTabId 
///
///
///
///  @returns void
-(NSNumber*) deleteWithCompletionBlock: (NSString*) accountId
         customTabId: (NSString*) customTabId
        
     
    		
		
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `delete`"];
    }
    
    // verify the required parameter 'customTabId' is set
    if (customTabId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `customTabId` when calling `delete`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/tab_definitions/{customTabId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (customTabId != nil) {
        pathParams[@"customTabId"] = customTabId;
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



@end
