#import "DSFoldersApi.h"
#import "DSQueryParamCollection.h"
#import "DSFoldersResponse.h"
#import "DSErrorDetails.h"
#import "DSFolderItemsResponse.h"
#import "DSFoldersRequest.h"
#import "DSFolderItemResponse.h"



@implementation DSFoldersApi_SearchOptions
@end



@interface DSFoldersApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation DSFoldersApi

static DSFoldersApi* singletonAPI = nil;

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

+(DSFoldersApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[DSFoldersApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(DSFoldersApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[DSFoldersApi alloc] init];
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
/// Gets a list of the folders for the account.
/// Retrieves a list of the folders for the account, including the folder hierarchy. You can specify whether to return just the template folder or template folder and normal folders by setting the `template` query string parameter.
///
///  @param accountId The external account number (int) or account ID Guid.
///
///
///
///  @returns DSFoldersResponse*
-(NSNumber*) listWithCompletionBlock: (NSString*) accountId
        
     
    		
		
        completionHandler: (void (^)(DSFoldersResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `list`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/folders"];

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
                                         responseType: @"DSFoldersResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSFoldersResponse*)data, error);
              }
          ];
}




///
/// Gets a list of the envelopes in the specified folder.
/// Retrieves a list of the envelopes in the specified folder. You can narrow the query by specifying search criteria in the query string parameters.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param folderId The ID of the folder being accessed.
///
///
///
///  @returns DSFolderItemsResponse*
-(NSNumber*) listItemsWithCompletionBlock: (NSString*) accountId
         folderId: (NSString*) folderId
        
     
    		
		
        completionHandler: (void (^)(DSFolderItemsResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listItems`"];
    }
    
    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `folderId` when calling `listItems`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/folders/{folderId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
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
                                         responseType: @"DSFolderItemsResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSFolderItemsResponse*)data, error);
              }
          ];
}




///
/// Moves an envelope from its current folder to the specified folder.
/// Moves an envelope from its current folder to the specified folder.\n\n### Note: You can use this endpoint to delete envelopes by specifying `recyclebin' in the `folderId` parameter of the endpoint. Placing an in process envelope (envelope status of `sent` or `delivered`) in the recycle bin voids the envelope. You can also use this endpoint to delete templates by specifying a template ID instead of an envelope ID in the 'envelopeIds' property and specifying `recyclebin` in the `folderId` parameter.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param folderId The ID of the folder being accessed.
///
/// @param foldersRequest TBD Description 
///
///  @returns DSFoldersResponse*
-(NSNumber*) moveEnvelopesWithCompletionBlock: (NSString*) accountId
         folderId: (NSString*) folderId
        
    foldersRequest:(DSFoldersRequest*) foldersRequest 
    		
		
        completionHandler: (void (^)(DSFoldersResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `moveEnvelopes`"];
    }
    
    // verify the required parameter 'folderId' is set
    if (folderId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `folderId` when calling `moveEnvelopes`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/folders/{folderId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (folderId != nil) {
        pathParams[@"folderId"] = folderId;
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
    
    bodyParam = foldersRequest;
    

    
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
                                         responseType: @"DSFoldersResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSFoldersResponse*)data, error);
              }
          ];
}


///
/// Gets a list of envelopes in folders matching the specified criteria.
/// Retrieves a list of envelopes that match the criteria specified in the query.\n\nIf the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param searchFolderId Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature.
///
///
///  @returns DSFolderItemResponse*
-(NSNumber*) searchWithCompletionBlock: (NSString*) accountId
         searchFolderId: (NSString*) searchFolderId
        
     
		
        completionHandler: (void (^)(DSFolderItemResponse* output, NSError* error))completionBlock { 
        

   
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `search`"];
    }
    
    // verify the required parameter 'searchFolderId' is set
    if (searchFolderId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `searchFolderId` when calling `search`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/search_folders/{searchFolderId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (searchFolderId != nil) {
        pathParams[@"searchFolderId"] = searchFolderId;
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
                                         responseType: @"DSFolderItemResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSFolderItemResponse*)data, error);
              }
          ];
}




///
/// Gets a list of envelopes in folders matching the specified criteria.
/// Retrieves a list of envelopes that match the criteria specified in the query.\n\nIf the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param searchFolderId Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature.
///
///
/// @param DSFoldersApi_SearchOptions  Options for modifying the request.
///  @returns DSFolderItemResponse*
-(NSNumber*) searchWithCompletionBlock: (NSString*) accountId
         searchFolderId: (NSString*) searchFolderId
        
     
    options:(DSFoldersApi_SearchOptions*) options		
		
        completionHandler: (void (^)(DSFolderItemResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `search`"];
    }
    
    // verify the required parameter 'searchFolderId' is set
    if (searchFolderId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `searchFolderId` when calling `search`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/search_folders/{searchFolderId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (searchFolderId != nil) {
        pathParams[@"searchFolderId"] = searchFolderId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	if (options != nil) {
		if(options.includeRecipients != nil) {
			
			queryParams[@"include_recipients"] = options.includeRecipients;
		}
		if(options.all != nil) {
			
			queryParams[@"all"] = options.all;
		}
		if(options.order != nil) {
			
			queryParams[@"order"] = options.order;
		}
		if(options.count != nil) {
			
			queryParams[@"count"] = options.count;
		}
		if(options.startPosition != nil) {
			
			queryParams[@"start_position"] = options.startPosition;
		}
		if(options.fromDate != nil) {
			
			queryParams[@"from_date"] = options.fromDate;
		}
		if(options.toDate != nil) {
			
			queryParams[@"to_date"] = options.toDate;
		}
		if(options.orderBy != nil) {
			
			queryParams[@"order_by"] = options.orderBy;
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
                                         responseType: @"DSFolderItemResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSFolderItemResponse*)data, error);
              }
          ];
}



@end
