# DSSigningGroupsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createList**](DSSigningGroupsApi.md#createlist) | **POST** /v2/accounts/{accountId}/signing_groups | Creates a signing group. 
[**deleteList**](DSSigningGroupsApi.md#deletelist) | **DELETE** /v2/accounts/{accountId}/signing_groups | Deletes one or more signing groups.
[**deleteUsers**](DSSigningGroupsApi.md#deleteusers) | **DELETE** /v2/accounts/{accountId}/signing_groups/{signingGroupId}/users | Deletes  one or more members from a signing group.
[**get**](DSSigningGroupsApi.md#get) | **GET** /v2/accounts/{accountId}/signing_groups/{signingGroupId} | Gets information about a signing group. 
[**list**](DSSigningGroupsApi.md#list) | **GET** /v2/accounts/{accountId}/signing_groups | Gets a list of the Signing Groups in an account.
[**listUsers**](DSSigningGroupsApi.md#listusers) | **GET** /v2/accounts/{accountId}/signing_groups/{signingGroupId}/users | Gets a list of members in a Signing Group.
[**update**](DSSigningGroupsApi.md#update) | **PUT** /v2/accounts/{accountId}/signing_groups/{signingGroupId} | Updates a signing group. 
[**updateList**](DSSigningGroupsApi.md#updatelist) | **PUT** /v2/accounts/{accountId}/signing_groups | Updates signing group names.
[**updateUsers**](DSSigningGroupsApi.md#updateusers) | **PUT** /v2/accounts/{accountId}/signing_groups/{signingGroupId}/users | Adds members to a signing group. 


# **createList**
```objc
-(NSNumber*) createListWithAccountId: (DSSigningGroupInformation*) signingGroupInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSSigningGroupInformation* output, NSError* error)) handler;
```

Creates a signing group. 

Creates one or more signing groups.   Multiple signing groups can be created in one call. Only users with account administrator privileges can create signing groups.   An account can have a maximum of 50 signing groups. Each signing group can have a maximum of 50 group members.   Signing groups can be used by any account user.

### Example 
```objc

DSSigningGroupInformation* signingGroupInformation = [[DSSigningGroupInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Creates a signing group. 
[apiInstance createListWithAccountId:signingGroupInformation
              accountId:accountId
          completionHandler: ^(DSSigningGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->createList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signingGroupInformation** | [**DSSigningGroupInformation***](DSSigningGroupInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSSigningGroupInformation***](DSSigningGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteList**
```objc
-(NSNumber*) deleteListWithAccountId: (DSSigningGroupInformation*) signingGroupInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSSigningGroupInformation* output, NSError* error)) handler;
```

Deletes one or more signing groups.

Deletes one or more signing groups in the specified account.

### Example 
```objc

DSSigningGroupInformation* signingGroupInformation = [[DSSigningGroupInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Deletes one or more signing groups.
[apiInstance deleteListWithAccountId:signingGroupInformation
              accountId:accountId
          completionHandler: ^(DSSigningGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->deleteList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signingGroupInformation** | [**DSSigningGroupInformation***](DSSigningGroupInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSSigningGroupInformation***](DSSigningGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsers**
```objc
-(NSNumber*) deleteUsersWithAccountId: (DSSigningGroupUsers*) signingGroupUsers
    accountId: (NSString*) accountId
    signingGroupId: (NSString*) signingGroupId
        completionHandler: (void (^)(DSSigningGroupUsers* output, NSError* error)) handler;
```

Deletes  one or more members from a signing group.

Deletes  one or more members from the specified signing group. 

### Example 
```objc

DSSigningGroupUsers* signingGroupUsers = [[DSSigningGroupUsers alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* signingGroupId = @"signingGroupId_example"; // 

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Deletes  one or more members from a signing group.
[apiInstance deleteUsersWithAccountId:signingGroupUsers
              accountId:accountId
              signingGroupId:signingGroupId
          completionHandler: ^(DSSigningGroupUsers* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->deleteUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signingGroupUsers** | [**DSSigningGroupUsers***](DSSigningGroupUsers*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **signingGroupId** | **NSString***|  | 

### Return type

[**DSSigningGroupUsers***](DSSigningGroupUsers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```objc
-(NSNumber*) getWithAccountId: (NSString*) accountId
    signingGroupId: (NSString*) signingGroupId
        completionHandler: (void (^)(DSSigningGroup* output, NSError* error)) handler;
```

Gets information about a signing group. 

Retrieves information, including group member information, for the specified signing group. 

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* signingGroupId = @"signingGroupId_example"; // 

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Gets information about a signing group. 
[apiInstance getWithAccountId:accountId
              signingGroupId:signingGroupId
          completionHandler: ^(DSSigningGroup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->get: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **signingGroupId** | **NSString***|  | 

### Return type

[**DSSigningGroup***](DSSigningGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```objc
-(NSNumber*) listWithAccountId: (NSString*) groupType
    includeUsers: (NSString*) includeUsers
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSSigningGroupInformation* output, NSError* error)) handler;
```

Gets a list of the Signing Groups in an account.

Retrieves a list of all signing groups in the specified account.

### Example 
```objc

NSString* groupType = @"groupType_example"; //  (optional)
NSString* includeUsers = @"includeUsers_example"; // When set to **true**, the response includes the signing group members.  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Gets a list of the Signing Groups in an account.
[apiInstance listWithAccountId:groupType
              includeUsers:includeUsers
              accountId:accountId
          completionHandler: ^(DSSigningGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->list: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupType** | **NSString***|  | [optional] 
 **includeUsers** | **NSString***| When set to **true**, the response includes the signing group members.  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSSigningGroupInformation***](DSSigningGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
```objc
-(NSNumber*) listUsersWithAccountId: (NSString*) accountId
    signingGroupId: (NSString*) signingGroupId
        completionHandler: (void (^)(DSSigningGroupUsers* output, NSError* error)) handler;
```

Gets a list of members in a Signing Group.

Retrieves the list of members in the specified Signing Group.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* signingGroupId = @"signingGroupId_example"; // 

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Gets a list of members in a Signing Group.
[apiInstance listUsersWithAccountId:accountId
              signingGroupId:signingGroupId
          completionHandler: ^(DSSigningGroupUsers* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->listUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **signingGroupId** | **NSString***|  | 

### Return type

[**DSSigningGroupUsers***](DSSigningGroupUsers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```objc
-(NSNumber*) updateWithAccountId: (DSSigningGroup*) signingGroup
    accountId: (NSString*) accountId
    signingGroupId: (NSString*) signingGroupId
        completionHandler: (void (^)(DSSigningGroup* output, NSError* error)) handler;
```

Updates a signing group. 

Updates signing group name and member information. You can also add new members to the signing group. A signing group can have a maximum of 50 members. 

### Example 
```objc

DSSigningGroup* signingGroup = [[DSSigningGroup alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* signingGroupId = @"signingGroupId_example"; // 

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Updates a signing group. 
[apiInstance updateWithAccountId:signingGroup
              accountId:accountId
              signingGroupId:signingGroupId
          completionHandler: ^(DSSigningGroup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->update: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signingGroup** | [**DSSigningGroup***](DSSigningGroup*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **signingGroupId** | **NSString***|  | 

### Return type

[**DSSigningGroup***](DSSigningGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateList**
```objc
-(NSNumber*) updateListWithAccountId: (DSSigningGroupInformation*) signingGroupInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSSigningGroupInformation* output, NSError* error)) handler;
```

Updates signing group names.

Updates the name of one or more existing signing groups. 

### Example 
```objc

DSSigningGroupInformation* signingGroupInformation = [[DSSigningGroupInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Updates signing group names.
[apiInstance updateListWithAccountId:signingGroupInformation
              accountId:accountId
          completionHandler: ^(DSSigningGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->updateList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signingGroupInformation** | [**DSSigningGroupInformation***](DSSigningGroupInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSSigningGroupInformation***](DSSigningGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUsers**
```objc
-(NSNumber*) updateUsersWithAccountId: (DSSigningGroupUsers*) signingGroupUsers
    accountId: (NSString*) accountId
    signingGroupId: (NSString*) signingGroupId
        completionHandler: (void (^)(DSSigningGroupUsers* output, NSError* error)) handler;
```

Adds members to a signing group. 

Adds one or more new members to a signing group. A signing group can have a maximum of 50 members. 

### Example 
```objc

DSSigningGroupUsers* signingGroupUsers = [[DSSigningGroupUsers alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* signingGroupId = @"signingGroupId_example"; // 

DSSigningGroupsApi*apiInstance = [[DSSigningGroupsApi alloc] init];

// Adds members to a signing group. 
[apiInstance updateUsersWithAccountId:signingGroupUsers
              accountId:accountId
              signingGroupId:signingGroupId
          completionHandler: ^(DSSigningGroupUsers* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSSigningGroupsApi->updateUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signingGroupUsers** | [**DSSigningGroupUsers***](DSSigningGroupUsers*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **signingGroupId** | **NSString***|  | 

### Return type

[**DSSigningGroupUsers***](DSSigningGroupUsers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

