# DSAuthenticationApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSocialLogin**](DSAuthenticationApi.md#deletesociallogin) | **DELETE** /v2/accounts/{accountId}/users/{userId}/social | Deletes user&#39;s social account.
[**getOAuthToken**](DSAuthenticationApi.md#getoauthtoken) | **POST** /v2/oauth2/token | Creates an authorization token.
[**listSocialLogins**](DSAuthenticationApi.md#listsociallogins) | **GET** /v2/accounts/{accountId}/users/{userId}/social | Gets a list of a user&#39;s social accounts.
[**login**](DSAuthenticationApi.md#login) | **GET** /v2/login_information | Gets login information for a specified user.
[**revokeOAuthToken**](DSAuthenticationApi.md#revokeoauthtoken) | **POST** /v2/oauth2/revoke | Revokes an authorization token.
[**updatePassword**](DSAuthenticationApi.md#updatepassword) | **PUT** /v2/login_information/{loginPart} | Updates the password for a specified user.
[**updateSocialLogin**](DSAuthenticationApi.md#updatesociallogin) | **PUT** /v2/accounts/{accountId}/users/{userId}/social | Adds social account for a user.


# **deleteSocialLogin**
```objc
-(NSNumber*) deleteSocialLoginWithAccountId: (DSSocialAccountInformation*) socialAccountInformation
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes user's social account.

Deletes a social account from a use's account.

### Example 
```objc

DSSocialAccountInformation* socialAccountInformation = [[DSSocialAccountInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSAuthenticationApi*apiInstance = [[DSAuthenticationApi alloc] init];

// Deletes user's social account.
[apiInstance deleteSocialLoginWithAccountId:socialAccountInformation
              accountId:accountId
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAuthenticationApi->deleteSocialLogin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialAccountInformation** | [**DSSocialAccountInformation***](DSSocialAccountInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthToken**
```objc
-(NSNumber*) getOAuthTokenWithCompletionHandler: 
        (void (^)(DSOauthAccess* output, NSError* error)) handler;
```

Creates an authorization token.

Creates an OAuth2 authorization server token endpoint.

### Example 
```objc


DSAuthenticationApi*apiInstance = [[DSAuthenticationApi alloc] init];

// Creates an authorization token.
[apiInstance getOAuthTokenWithCompletionHandler: 
          ^(DSOauthAccess* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAuthenticationApi->getOAuthToken: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DSOauthAccess***](DSOauthAccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSocialLogins**
```objc
-(NSNumber*) listSocialLoginsWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSUserSocialIdResult* output, NSError* error)) handler;
```

Gets a list of a user's social accounts.

Retrieves a list of social accounts linked to a user's account.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSAuthenticationApi*apiInstance = [[DSAuthenticationApi alloc] init];

// Gets a list of a user's social accounts.
[apiInstance listSocialLoginsWithAccountId:accountId
              userId:userId
          completionHandler: ^(DSUserSocialIdResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAuthenticationApi->listSocialLogins: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSUserSocialIdResult***](DSUserSocialIdResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
```objc
-(NSNumber*) loginWithApiPassword: (NSString*) apiPassword
    embedAccountIdGuid: (NSString*) embedAccountIdGuid
    includeAccountIdGuid: (NSString*) includeAccountIdGuid
    loginSettings: (NSString*) loginSettings
        completionHandler: (void (^)(DSLoginInformation* output, NSError* error)) handler;
```

Gets login information for a specified user.

Retrieves login information for a specified user. Each account that is associated with the login credentials is listed. You can use the returned information to determine whether a user is authenticated and select an account to use in future operations.    The `baseUrl` property, returned in the response, is used in all future API calls as the base of the request URL. The `baseUrl` property contains the DocuSign server, the API version, and the `accountId` property that is used for the login. This request uses your DocuSign credentials to retrieve the account information.

### Example 
```objc

NSString* apiPassword = @"apiPassword_example"; // When set to **true**, shows the account API password in the response. (optional)
NSString* embedAccountIdGuid = @"embedAccountIdGuid_example"; //  (optional)
NSString* includeAccountIdGuid = @"includeAccountIdGuid_example"; // When set to **true**, shows the account ID GUID in the response. (optional)
NSString* loginSettings = @"loginSettings_example"; // Determines whether login settings are returned in the response.  Valid Values:  * all -  All the login settings are returned.  * none - no login settings are returned. (optional)

DSAuthenticationApi*apiInstance = [[DSAuthenticationApi alloc] init];

// Gets login information for a specified user.
[apiInstance loginWithApiPassword:apiPassword
              embedAccountIdGuid:embedAccountIdGuid
              includeAccountIdGuid:includeAccountIdGuid
              loginSettings:loginSettings
          completionHandler: ^(DSLoginInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAuthenticationApi->login: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiPassword** | **NSString***| When set to **true**, shows the account API password in the response. | [optional] 
 **embedAccountIdGuid** | **NSString***|  | [optional] 
 **includeAccountIdGuid** | **NSString***| When set to **true**, shows the account ID GUID in the response. | [optional] 
 **loginSettings** | **NSString***| Determines whether login settings are returned in the response.  Valid Values:  * all -  All the login settings are returned.  * none - no login settings are returned. | [optional] 

### Return type

[**DSLoginInformation***](DSLoginInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeOAuthToken**
```objc
-(NSNumber*) revokeOAuthTokenWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Revokes an authorization token.

Revokes an OAuth2 authorization server token. After the revocation is complete, a caller must re-authenticate to restore access.

### Example 
```objc


DSAuthenticationApi*apiInstance = [[DSAuthenticationApi alloc] init];

// Revokes an authorization token.
[apiInstance revokeOAuthTokenWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAuthenticationApi->revokeOAuthToken: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePassword**
```objc
-(NSNumber*) updatePasswordWithLoginPart: (DSUserPasswordInformation*) userPasswordInformation
    loginPart: (NSString*) loginPart
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the password for a specified user.

Updates the password for a specified user.

### Example 
```objc

DSUserPasswordInformation* userPasswordInformation = [[DSUserPasswordInformation alloc] init]; //  (optional)
NSString* loginPart = @"loginPart_example"; // Currently, only the value **password** is supported.

DSAuthenticationApi*apiInstance = [[DSAuthenticationApi alloc] init];

// Updates the password for a specified user.
[apiInstance updatePasswordWithLoginPart:userPasswordInformation
              loginPart:loginPart
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAuthenticationApi->updatePassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPasswordInformation** | [**DSUserPasswordInformation***](DSUserPasswordInformation*.md)|  | [optional] 
 **loginPart** | **NSString***| Currently, only the value **password** is supported. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSocialLogin**
```objc
-(NSNumber*) updateSocialLoginWithAccountId: (DSSocialAccountInformation*) socialAccountInformation
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Adds social account for a user.

Adds a new social account to a user's account.

### Example 
```objc

DSSocialAccountInformation* socialAccountInformation = [[DSSocialAccountInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSAuthenticationApi*apiInstance = [[DSAuthenticationApi alloc] init];

// Adds social account for a user.
[apiInstance updateSocialLoginWithAccountId:socialAccountInformation
              accountId:accountId
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAuthenticationApi->updateSocialLogin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialAccountInformation** | [**DSSocialAccountInformation***](DSSocialAccountInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

