# DSCloudStorageApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProvider**](DSCloudStorageApi.md#createprovider) | **POST** /v2/accounts/{accountId}/users/{userId}/cloud_storage | Configures the redirect URL information  for one or more cloud storage providers for the specified user.
[**deleteProvider**](DSCloudStorageApi.md#deleteprovider) | **DELETE** /v2/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId} | Deletes the user authentication information for the specified cloud storage provider.
[**deleteProviders**](DSCloudStorageApi.md#deleteproviders) | **DELETE** /v2/accounts/{accountId}/users/{userId}/cloud_storage | Deletes the user authentication information for one or more cloud storage providers.
[**getProvider**](DSCloudStorageApi.md#getprovider) | **GET** /v2/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId} | Gets the specified Cloud Storage Provider configuration for the User.
[**list**](DSCloudStorageApi.md#list) | **GET** /v2/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders/{folderId} | Gets a list of all the items from the specified cloud storage provider.
[**listFolders**](DSCloudStorageApi.md#listfolders) | **GET** /v2/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders | Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
[**listProviders**](DSCloudStorageApi.md#listproviders) | **GET** /v2/accounts/{accountId}/users/{userId}/cloud_storage | Get the Cloud Storage Provider configuration for the specified user.


# **createProvider**
```objc
-(NSNumber*) createProviderWithAccountId: (DSCloudStorageProviders*) cloudStorageProviders
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSCloudStorageProviders* output, NSError* error)) handler;
```

Configures the redirect URL information  for one or more cloud storage providers for the specified user.

Configures the redirect URL information  for one or more cloud storage providers for the specified user. The redirect URL is added to the authentication URL to complete the return route.

### Example 
```objc

DSCloudStorageProviders* cloudStorageProviders = [[DSCloudStorageProviders alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSCloudStorageApi*apiInstance = [[DSCloudStorageApi alloc] init];

// Configures the redirect URL information  for one or more cloud storage providers for the specified user.
[apiInstance createProviderWithAccountId:cloudStorageProviders
              accountId:accountId
              userId:userId
          completionHandler: ^(DSCloudStorageProviders* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCloudStorageApi->createProvider: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloudStorageProviders** | [**DSCloudStorageProviders***](DSCloudStorageProviders*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSCloudStorageProviders***](DSCloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProvider**
```objc
-(NSNumber*) deleteProviderWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
    serviceId: (NSString*) serviceId
        completionHandler: (void (^)(DSCloudStorageProviders* output, NSError* error)) handler;
```

Deletes the user authentication information for the specified cloud storage provider.

Deletes the user authentication information for the specified cloud storage provider. The next time the user tries to access the cloud storage provider, they must pass normal authentication for this cloud storage provider.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* serviceId = @"serviceId_example"; // The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").

DSCloudStorageApi*apiInstance = [[DSCloudStorageApi alloc] init];

// Deletes the user authentication information for the specified cloud storage provider.
[apiInstance deleteProviderWithAccountId:accountId
              userId:userId
              serviceId:serviceId
          completionHandler: ^(DSCloudStorageProviders* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCloudStorageApi->deleteProvider: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **serviceId** | **NSString***| The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 

### Return type

[**DSCloudStorageProviders***](DSCloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProviders**
```objc
-(NSNumber*) deleteProvidersWithAccountId: (DSCloudStorageProviders*) cloudStorageProviders
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSCloudStorageProviders* output, NSError* error)) handler;
```

Deletes the user authentication information for one or more cloud storage providers.

Deletes the user authentication information for one or more cloud storage providers. The next time the user tries to access the cloud storage provider, they must pass normal authentication.

### Example 
```objc

DSCloudStorageProviders* cloudStorageProviders = [[DSCloudStorageProviders alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSCloudStorageApi*apiInstance = [[DSCloudStorageApi alloc] init];

// Deletes the user authentication information for one or more cloud storage providers.
[apiInstance deleteProvidersWithAccountId:cloudStorageProviders
              accountId:accountId
              userId:userId
          completionHandler: ^(DSCloudStorageProviders* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCloudStorageApi->deleteProviders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloudStorageProviders** | [**DSCloudStorageProviders***](DSCloudStorageProviders*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSCloudStorageProviders***](DSCloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProvider**
```objc
-(NSNumber*) getProviderWithAccountId: (NSString*) redirectUrl
    accountId: (NSString*) accountId
    userId: (NSString*) userId
    serviceId: (NSString*) serviceId
        completionHandler: (void (^)(DSCloudStorageProviders* output, NSError* error)) handler;
```

Gets the specified Cloud Storage Provider configuration for the User.

Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.

### Example 
```objc

NSString* redirectUrl = @"redirectUrl_example"; //  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* serviceId = @"serviceId_example"; // The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").

DSCloudStorageApi*apiInstance = [[DSCloudStorageApi alloc] init];

// Gets the specified Cloud Storage Provider configuration for the User.
[apiInstance getProviderWithAccountId:redirectUrl
              accountId:accountId
              userId:userId
              serviceId:serviceId
          completionHandler: ^(DSCloudStorageProviders* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCloudStorageApi->getProvider: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redirectUrl** | **NSString***|  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **serviceId** | **NSString***| The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 

### Return type

[**DSCloudStorageProviders***](DSCloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```objc
-(NSNumber*) listWithAccountId: (NSString*) cloudStorageFolderPath
    count: (NSString*) count
    order: (NSString*) order
    orderBy: (NSString*) orderBy
    searchText: (NSString*) searchText
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
    userId: (NSString*) userId
    serviceId: (NSString*) serviceId
    folderId: (NSString*) folderId
        completionHandler: (void (^)(DSExternalFolder* output, NSError* error)) handler;
```

Gets a list of all the items from the specified cloud storage provider.

Retrieves a list of all the items in all  the folders associated with the user from the specified cloud storage provider. You can limit the scope of the returned items by providing a comma separated list of folder IDs in the request.

### Example 
```objc

NSString* cloudStorageFolderPath = @"cloudStorageFolderPath_example"; //  (optional)
NSString* count = @"count_example"; // An optional value that sets how many items are included in the response.   The default setting for this is 25.  (optional)
NSString* order = @"order_example"; // An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc = ascending sort order * desc = descending sort order  (optional)
NSString* orderBy = @"orderBy_example"; // An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name   (optional)
NSString* searchText = @"searchText_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; // Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.   (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* serviceId = @"serviceId_example"; // The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.

DSCloudStorageApi*apiInstance = [[DSCloudStorageApi alloc] init];

// Gets a list of all the items from the specified cloud storage provider.
[apiInstance listWithAccountId:cloudStorageFolderPath
              count:count
              order:order
              orderBy:orderBy
              searchText:searchText
              startPosition:startPosition
              accountId:accountId
              userId:userId
              serviceId:serviceId
              folderId:folderId
          completionHandler: ^(DSExternalFolder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCloudStorageApi->list: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloudStorageFolderPath** | **NSString***|  | [optional] 
 **count** | **NSString***| An optional value that sets how many items are included in the response.   The default setting for this is 25.  | [optional] 
 **order** | **NSString***| An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc &#x3D; ascending sort order * desc &#x3D; descending sort order  | [optional] 
 **orderBy** | **NSString***| An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name   | [optional] 
 **searchText** | **NSString***|  | [optional] 
 **startPosition** | **NSString***| Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.   | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **serviceId** | **NSString***| The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 

### Return type

[**DSExternalFolder***](DSExternalFolder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFolders**
```objc
-(NSNumber*) listFoldersWithAccountId: (NSString*) cloudStorageFolderPath
    count: (NSString*) count
    order: (NSString*) order
    orderBy: (NSString*) orderBy
    searchText: (NSString*) searchText
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
    userId: (NSString*) userId
    serviceId: (NSString*) serviceId
        completionHandler: (void (^)(DSExternalFolder* output, NSError* error)) handler;
```

Retrieves a list of all the items in a specified folder from the specified cloud storage provider.

Retrieves a list of all the items in a specified folder from the specified cloud storage provider. 

### Example 
```objc

NSString* cloudStorageFolderPath = @"cloudStorageFolderPath_example"; // A comma separated list of folder IDs included in the request.  (optional)
NSString* count = @"count_example"; // An optional value that sets how many items are included in the response.   The default setting for this is 25.  (optional)
NSString* order = @"order_example"; // An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc = ascending sort order * desc = descending sort order  (optional)
NSString* orderBy = @"orderBy_example"; // An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name   (optional)
NSString* searchText = @"searchText_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; // Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.   (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* serviceId = @"serviceId_example"; // The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").

DSCloudStorageApi*apiInstance = [[DSCloudStorageApi alloc] init];

// Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
[apiInstance listFoldersWithAccountId:cloudStorageFolderPath
              count:count
              order:order
              orderBy:orderBy
              searchText:searchText
              startPosition:startPosition
              accountId:accountId
              userId:userId
              serviceId:serviceId
          completionHandler: ^(DSExternalFolder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCloudStorageApi->listFolders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloudStorageFolderPath** | **NSString***| A comma separated list of folder IDs included in the request.  | [optional] 
 **count** | **NSString***| An optional value that sets how many items are included in the response.   The default setting for this is 25.  | [optional] 
 **order** | **NSString***| An optional value that sets the direction order used to sort the item list.   Valid values are:   * asc &#x3D; ascending sort order * desc &#x3D; descending sort order  | [optional] 
 **orderBy** | **NSString***| An optional value that sets the file attribute used to sort the item list.   Valid values are:   * modified * name   | [optional] 
 **searchText** | **NSString***|  | [optional] 
 **startPosition** | **NSString***| Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.   | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **serviceId** | **NSString***| The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 

### Return type

[**DSExternalFolder***](DSExternalFolder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProviders**
```objc
-(NSNumber*) listProvidersWithAccountId: (NSString*) redirectUrl
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSCloudStorageProviders* output, NSError* error)) handler;
```

Get the Cloud Storage Provider configuration for the specified user.

Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.  The {serviceId} parameter can be either the service name or serviceId.

### Example 
```objc

NSString* redirectUrl = @"redirectUrl_example"; //  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSCloudStorageApi*apiInstance = [[DSCloudStorageApi alloc] init];

// Get the Cloud Storage Provider configuration for the specified user.
[apiInstance listProvidersWithAccountId:redirectUrl
              accountId:accountId
              userId:userId
          completionHandler: ^(DSCloudStorageProviders* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSCloudStorageApi->listProviders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redirectUrl** | **NSString***|  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSCloudStorageProviders***](DSCloudStorageProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

