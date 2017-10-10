# DSCustomTabsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DSCustomTabsApi.md#create) | **POST** /v2/accounts/{accountId}/tab_definitions | Creates a custom tab.
[**delete**](DSCustomTabsApi.md#delete) | **DELETE** /v2/accounts/{accountId}/tab_definitions/{customTabId} | Deletes custom tab information.
[**get**](DSCustomTabsApi.md#get) | **GET** /v2/accounts/{accountId}/tab_definitions/{customTabId} | Gets custom tab information.
[**list**](DSCustomTabsApi.md#list) | **GET** /v2/accounts/{accountId}/tab_definitions | Gets a list of all account tabs.
[**update**](DSCustomTabsApi.md#update) | **PUT** /v2/accounts/{accountId}/tab_definitions/{customTabId} | Updates custom tab information.  


# **create**
```objc
-(NSNumber*) createWithAccountId: (DSTabMetadata*) tabMetadata
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSTabMetadata* output, NSError* error)) handler;
```

Creates a custom tab.

Creates a tab with pre-defined properties, such as a text tab with a certain font type and validation pattern. Users can access the custom tabs when sending documents through the DocuSign web application.  Custom tabs can be created for approve, checkbox, company, date, date signed, decline, email, email address, envelope ID, first name, formula, full name, initial here, last name, list, note, number, radio, sign here, signer attachment, SSN, text, title, and zip tabs.

### Example 
```objc

DSTabMetadata* tabMetadata = [[DSTabMetadata alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSCustomTabsApi*apiInstance = [[DSCustomTabsApi alloc] init];

// Creates a custom tab.
[apiInstance createWithAccountId:tabMetadata
              accountId:accountId
          completionHandler: ^(DSTabMetadata* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCustomTabsApi->create: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tabMetadata** | [**DSTabMetadata***](DSTabMetadata*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSTabMetadata***](DSTabMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```objc
-(NSNumber*) deleteWithAccountId: (NSString*) accountId
    customTabId: (NSString*) customTabId
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes custom tab information.

Deletes the custom from the specified account.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* customTabId = @"customTabId_example"; // 

DSCustomTabsApi*apiInstance = [[DSCustomTabsApi alloc] init];

// Deletes custom tab information.
[apiInstance deleteWithAccountId:accountId
              customTabId:customTabId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSCustomTabsApi->delete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **customTabId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```objc
-(NSNumber*) getWithAccountId: (NSString*) accountId
    customTabId: (NSString*) customTabId
        completionHandler: (void (^)(DSTabMetadata* output, NSError* error)) handler;
```

Gets custom tab information.

Retrieves information about the requested custom tab on the specified account.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* customTabId = @"customTabId_example"; // 

DSCustomTabsApi*apiInstance = [[DSCustomTabsApi alloc] init];

// Gets custom tab information.
[apiInstance getWithAccountId:accountId
              customTabId:customTabId
          completionHandler: ^(DSTabMetadata* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCustomTabsApi->get: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **customTabId** | **NSString***|  | 

### Return type

[**DSTabMetadata***](DSTabMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```objc
-(NSNumber*) listWithAccountId: (NSString*) customTabOnly
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSTabMetadataList* output, NSError* error)) handler;
```

Gets a list of all account tabs.

Retrieves a list of all tabs associated with the account.

### Example 
```objc

NSString* customTabOnly = @"customTabOnly_example"; // When set to **true**, only custom tabs are returned in the response.  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSCustomTabsApi*apiInstance = [[DSCustomTabsApi alloc] init];

// Gets a list of all account tabs.
[apiInstance listWithAccountId:customTabOnly
              accountId:accountId
          completionHandler: ^(DSTabMetadataList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCustomTabsApi->list: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customTabOnly** | **NSString***| When set to **true**, only custom tabs are returned in the response.  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSTabMetadataList***](DSTabMetadataList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```objc
-(NSNumber*) updateWithAccountId: (DSTabMetadata*) tabMetadata
    accountId: (NSString*) accountId
    customTabId: (NSString*) customTabId
        completionHandler: (void (^)(DSTabMetadata* output, NSError* error)) handler;
```

Updates custom tab information.  

Updates the information in a custom tab for the specified account.

### Example 
```objc

DSTabMetadata* tabMetadata = [[DSTabMetadata alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* customTabId = @"customTabId_example"; // 

DSCustomTabsApi*apiInstance = [[DSCustomTabsApi alloc] init];

// Updates custom tab information.  
[apiInstance updateWithAccountId:tabMetadata
              accountId:accountId
              customTabId:customTabId
          completionHandler: ^(DSTabMetadata* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCustomTabsApi->update: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tabMetadata** | [**DSTabMetadata***](DSTabMetadata*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **customTabId** | **NSString***|  | 

### Return type

[**DSTabMetadata***](DSTabMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

