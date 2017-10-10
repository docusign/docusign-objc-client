# DSGroupsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroups**](DSGroupsApi.md#creategroups) | **POST** /v2/accounts/{accountId}/groups | Creates one or more groups for the account.
[**deleteBrands**](DSGroupsApi.md#deletebrands) | **DELETE** /v2/accounts/{accountId}/groups/{groupId}/brands | Deletes brand information from the requested group.
[**deleteGroupUsers**](DSGroupsApi.md#deletegroupusers) | **DELETE** /v2/accounts/{accountId}/groups/{groupId}/users | Deletes one or more users from a gro
[**deleteGroups**](DSGroupsApi.md#deletegroups) | **DELETE** /v2/accounts/{accountId}/groups | Deletes an existing user group.
[**getBrands**](DSGroupsApi.md#getbrands) | **GET** /v2/accounts/{accountId}/groups/{groupId}/brands | Gets group brand ID Information. 
[**listGroupUsers**](DSGroupsApi.md#listgroupusers) | **GET** /v2/accounts/{accountId}/groups/{groupId}/users | Gets a list of users in a group.
[**listGroups**](DSGroupsApi.md#listgroups) | **GET** /v2/accounts/{accountId}/groups | Gets information about groups associated with the account.
[**updateBrands**](DSGroupsApi.md#updatebrands) | **PUT** /v2/accounts/{accountId}/groups/{groupId}/brands | Adds group brand ID information to a group.
[**updateGroupUsers**](DSGroupsApi.md#updategroupusers) | **PUT** /v2/accounts/{accountId}/groups/{groupId}/users | Adds one or more users to an existing group.
[**updateGroups**](DSGroupsApi.md#updategroups) | **PUT** /v2/accounts/{accountId}/groups | Updates the group information for a group.


# **createGroups**
```objc
-(NSNumber*) createGroupsWithAccountId: (DSGroupInformation*) groupInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSGroupInformation* output, NSError* error)) handler;
```

Creates one or more groups for the account.

Creates one or more groups for the account.  Groups can be used to help manage users by associating users with a group. You can associate a group with a Permission Profile, which sets the user permissions for users in that group without having to set the `userSettings` property for each user. You are not required to set Permission Profiles for a group, but it makes it easier to manage user permissions for a large number of users. You can also use groups with template sharing to limit user access to templates.

### Example 
```objc

DSGroupInformation* groupInformation = [[DSGroupInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Creates one or more groups for the account.
[apiInstance createGroupsWithAccountId:groupInformation
              accountId:accountId
          completionHandler: ^(DSGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->createGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupInformation** | [**DSGroupInformation***](DSGroupInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSGroupInformation***](DSGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBrands**
```objc
-(NSNumber*) deleteBrandsWithAccountId: (DSBrandsRequest*) brandsRequest
    accountId: (NSString*) accountId
    groupId: (NSString*) groupId
        completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler;
```

Deletes brand information from the requested group.

Deletes brand information from the requested group.

### Example 
```objc

DSBrandsRequest* brandsRequest = [[DSBrandsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* groupId = @"groupId_example"; // The ID of the group being accessed.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Deletes brand information from the requested group.
[apiInstance deleteBrandsWithAccountId:brandsRequest
              accountId:accountId
              groupId:groupId
          completionHandler: ^(DSBrandsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->deleteBrands: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brandsRequest** | [**DSBrandsRequest***](DSBrandsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **groupId** | **NSString***| The ID of the group being accessed. | 

### Return type

[**DSBrandsResponse***](DSBrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupUsers**
```objc
-(NSNumber*) deleteGroupUsersWithAccountId: (DSUserInfoList*) userInfoList
    accountId: (NSString*) accountId
    groupId: (NSString*) groupId
        completionHandler: (void (^)(DSUsersResponse* output, NSError* error)) handler;
```

Deletes one or more users from a gro

Deletes one or more users from a group. 

### Example 
```objc

DSUserInfoList* userInfoList = [[DSUserInfoList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* groupId = @"groupId_example"; // The ID of the group being accessed.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Deletes one or more users from a gro
[apiInstance deleteGroupUsersWithAccountId:userInfoList
              accountId:accountId
              groupId:groupId
          completionHandler: ^(DSUsersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->deleteGroupUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userInfoList** | [**DSUserInfoList***](DSUserInfoList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **groupId** | **NSString***| The ID of the group being accessed. | 

### Return type

[**DSUsersResponse***](DSUsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroups**
```objc
-(NSNumber*) deleteGroupsWithAccountId: (DSGroupInformation*) groupInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSGroupInformation* output, NSError* error)) handler;
```

Deletes an existing user group.

Deletes an existing user group.

### Example 
```objc

DSGroupInformation* groupInformation = [[DSGroupInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Deletes an existing user group.
[apiInstance deleteGroupsWithAccountId:groupInformation
              accountId:accountId
          completionHandler: ^(DSGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->deleteGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupInformation** | [**DSGroupInformation***](DSGroupInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSGroupInformation***](DSGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrands**
```objc
-(NSNumber*) getBrandsWithAccountId: (NSString*) accountId
    groupId: (NSString*) groupId
        completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler;
```

Gets group brand ID Information. 

Retrieves information about the brands associated with the requested group.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* groupId = @"groupId_example"; // The ID of the group being accessed.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Gets group brand ID Information. 
[apiInstance getBrandsWithAccountId:accountId
              groupId:groupId
          completionHandler: ^(DSBrandsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->getBrands: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **groupId** | **NSString***| The ID of the group being accessed. | 

### Return type

[**DSBrandsResponse***](DSBrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroupUsers**
```objc
-(NSNumber*) listGroupUsersWithAccountId: (NSString*) count
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
    groupId: (NSString*) groupId
        completionHandler: (void (^)(DSUsersResponse* output, NSError* error)) handler;
```

Gets a list of users in a group.

Retrieves a list of users in a group.

### Example 
```objc

NSString* count = @"count_example"; // Number of records to return. The number must be greater than 1 and less than or equal to 100.  (optional)
NSString* startPosition = @"startPosition_example"; // Starting value for the list. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* groupId = @"groupId_example"; // The ID of the group being accessed.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Gets a list of users in a group.
[apiInstance listGroupUsersWithAccountId:count
              startPosition:startPosition
              accountId:accountId
              groupId:groupId
          completionHandler: ^(DSUsersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->listGroupUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***| Number of records to return. The number must be greater than 1 and less than or equal to 100.  | [optional] 
 **startPosition** | **NSString***| Starting value for the list. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **groupId** | **NSString***| The ID of the group being accessed. | 

### Return type

[**DSUsersResponse***](DSUsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroups**
```objc
-(NSNumber*) listGroupsWithAccountId: (NSString*) count
    groupName: (NSString*) groupName
    groupType: (NSString*) groupType
    searchText: (NSString*) searchText
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSGroupInformation* output, NSError* error)) handler;
```

Gets information about groups associated with the account.

Retrieves information about groups associated with the account.

### Example 
```objc

NSString* count = @"count_example"; // Number of records to return. The number must be greater than 1 and less than or equal to 100. (optional)
NSString* groupName = @"groupName_example"; // Filters the groups returned by the group name or a sub-string of group name. (optional)
NSString* groupType = @"groupType_example"; //  (optional)
NSString* searchText = @"searchText_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; // Starting value for the list. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Gets information about groups associated with the account.
[apiInstance listGroupsWithAccountId:count
              groupName:groupName
              groupType:groupType
              searchText:searchText
              startPosition:startPosition
              accountId:accountId
          completionHandler: ^(DSGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->listGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***| Number of records to return. The number must be greater than 1 and less than or equal to 100. | [optional] 
 **groupName** | **NSString***| Filters the groups returned by the group name or a sub-string of group name. | [optional] 
 **groupType** | **NSString***|  | [optional] 
 **searchText** | **NSString***|  | [optional] 
 **startPosition** | **NSString***| Starting value for the list. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSGroupInformation***](DSGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBrands**
```objc
-(NSNumber*) updateBrandsWithAccountId: (DSBrandsRequest*) brandsRequest
    accountId: (NSString*) accountId
    groupId: (NSString*) groupId
        completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler;
```

Adds group brand ID information to a group.

Adds group brand ID information to a group.

### Example 
```objc

DSBrandsRequest* brandsRequest = [[DSBrandsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* groupId = @"groupId_example"; // The ID of the group being accessed.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Adds group brand ID information to a group.
[apiInstance updateBrandsWithAccountId:brandsRequest
              accountId:accountId
              groupId:groupId
          completionHandler: ^(DSBrandsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->updateBrands: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brandsRequest** | [**DSBrandsRequest***](DSBrandsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **groupId** | **NSString***| The ID of the group being accessed. | 

### Return type

[**DSBrandsResponse***](DSBrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupUsers**
```objc
-(NSNumber*) updateGroupUsersWithAccountId: (DSUserInfoList*) userInfoList
    accountId: (NSString*) accountId
    groupId: (NSString*) groupId
        completionHandler: (void (^)(DSUsersResponse* output, NSError* error)) handler;
```

Adds one or more users to an existing group.

Adds one or more users to an existing group.

### Example 
```objc

DSUserInfoList* userInfoList = [[DSUserInfoList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* groupId = @"groupId_example"; // The ID of the group being accessed.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Adds one or more users to an existing group.
[apiInstance updateGroupUsersWithAccountId:userInfoList
              accountId:accountId
              groupId:groupId
          completionHandler: ^(DSUsersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->updateGroupUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userInfoList** | [**DSUserInfoList***](DSUserInfoList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **groupId** | **NSString***| The ID of the group being accessed. | 

### Return type

[**DSUsersResponse***](DSUsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroups**
```objc
-(NSNumber*) updateGroupsWithAccountId: (DSGroupInformation*) groupInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSGroupInformation* output, NSError* error)) handler;
```

Updates the group information for a group.

Updates the group name and modifies, or sets, the permission profile for the group.

### Example 
```objc

DSGroupInformation* groupInformation = [[DSGroupInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSGroupsApi*apiInstance = [[DSGroupsApi alloc] init];

// Updates the group information for a group.
[apiInstance updateGroupsWithAccountId:groupInformation
              accountId:accountId
          completionHandler: ^(DSGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSGroupsApi->updateGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupInformation** | [**DSGroupInformation***](DSGroupInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSGroupInformation***](DSGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

