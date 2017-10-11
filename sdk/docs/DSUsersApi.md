# DSUsersApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DSUsersApi.md#create) | **POST** /v2/accounts/{accountId}/users | Adds news user to the specified account.
[**createSignatures**](DSUsersApi.md#createsignatures) | **POST** /v2/accounts/{accountId}/users/{userId}/signatures | Adds user Signature and initials images to a Signature.
[**delete**](DSUsersApi.md#delete) | **DELETE** /v2/accounts/{accountId}/users | Removes users account privileges.
[**deleteContactWithId**](DSUsersApi.md#deletecontactwithid) | **DELETE** /v2/accounts/{accountId}/contacts/{contactId} | Replaces a particular contact associated with an account for the DocuSign service.
[**deleteContacts**](DSUsersApi.md#deletecontacts) | **DELETE** /v2/accounts/{accountId}/contacts | Delete contacts associated with an account for the DocuSign service.
[**deleteCustomSettings**](DSUsersApi.md#deletecustomsettings) | **DELETE** /v2/accounts/{accountId}/users/{userId}/custom_settings | Deletes custom user settings for a specified user.
[**deleteProfileImage**](DSUsersApi.md#deleteprofileimage) | **DELETE** /v2/accounts/{accountId}/users/{userId}/profile/image | Deletes the user profile image for the specified user.
[**deleteSignature**](DSUsersApi.md#deletesignature) | **DELETE** /v2/accounts/{accountId}/users/{userId}/signatures/{signatureId} | Removes removes signature information for the specified user.
[**deleteSignatureImage**](DSUsersApi.md#deletesignatureimage) | **DELETE** /v2/accounts/{accountId}/users/{userId}/signatures/{signatureId}/{imageType} | Deletes the user initials image or the  user signature image for the specified user.
[**getContactById**](DSUsersApi.md#getcontactbyid) | **GET** /v2/accounts/{accountId}/contacts/{contactId} | Gets a particular contact associated with the user&#39;s account.
[**getInformation**](DSUsersApi.md#getinformation) | **GET** /v2/accounts/{accountId}/users/{userId} | Gets the user information for a specified user.
[**getProfile**](DSUsersApi.md#getprofile) | **GET** /v2/accounts/{accountId}/users/{userId}/profile | Retrieves the user profile for a specified user.
[**getProfileImage**](DSUsersApi.md#getprofileimage) | **GET** /v2/accounts/{accountId}/users/{userId}/profile/image | Retrieves the user profile image for the specified user.
[**getSettings**](DSUsersApi.md#getsettings) | **GET** /v2/accounts/{accountId}/users/{userId}/settings | Gets the user account settings for a specified user.
[**getSignature**](DSUsersApi.md#getsignature) | **GET** /v2/accounts/{accountId}/users/{userId}/signatures/{signatureId} | Gets the user signature information for the specified user.
[**getSignatureImage**](DSUsersApi.md#getsignatureimage) | **GET** /v2/accounts/{accountId}/users/{userId}/signatures/{signatureId}/{imageType} | Retrieves the user initials image or the  user signature image for the specified user.
[**list**](DSUsersApi.md#list) | **GET** /v2/accounts/{accountId}/users | Retrieves the list of users for the specified account.
[**listCustomSettings**](DSUsersApi.md#listcustomsettings) | **GET** /v2/accounts/{accountId}/users/{userId}/custom_settings | Retrieves the custom user settings for a specified user.
[**listSignatures**](DSUsersApi.md#listsignatures) | **GET** /v2/accounts/{accountId}/users/{userId}/signatures | Retrieves a list of user signature definitions for a specified user.
[**postContacts**](DSUsersApi.md#postcontacts) | **POST** /v2/accounts/{accountId}/contacts | Imports multiple new contacts into the contacts collection from CSV, JSON, or XML (based on content type).
[**putContacts**](DSUsersApi.md#putcontacts) | **PUT** /v2/accounts/{accountId}/contacts | Replaces contacts associated with an account for the DocuSign service.
[**updateCustomSettings**](DSUsersApi.md#updatecustomsettings) | **PUT** /v2/accounts/{accountId}/users/{userId}/custom_settings | Adds or updates custom user settings for the specified user.
[**updateProfile**](DSUsersApi.md#updateprofile) | **PUT** /v2/accounts/{accountId}/users/{userId}/profile | Updates the user profile information for the specified user.
[**updateProfileImage**](DSUsersApi.md#updateprofileimage) | **PUT** /v2/accounts/{accountId}/users/{userId}/profile/image | Updates the user profile image for a specified user.
[**updateSettings**](DSUsersApi.md#updatesettings) | **PUT** /v2/accounts/{accountId}/users/{userId}/settings | Updates the user account settings for a specified user.
[**updateSignature**](DSUsersApi.md#updatesignature) | **PUT** /v2/accounts/{accountId}/users/{userId}/signatures/{signatureId} | Updates the user signature for a specified user.
[**updateSignatureImage**](DSUsersApi.md#updatesignatureimage) | **PUT** /v2/accounts/{accountId}/users/{userId}/signatures/{signatureId}/{imageType} | Updates the user signature image or user initials image for the specified user.
[**updateSignatures**](DSUsersApi.md#updatesignatures) | **PUT** /v2/accounts/{accountId}/users/{userId}/signatures | Adds/updates a user signature.
[**updateUser**](DSUsersApi.md#updateuser) | **PUT** /v2/accounts/{accountId}/users/{userId} | Updates the specified user information.
[**updateUsers**](DSUsersApi.md#updateusers) | **PUT** /v2/accounts/{accountId}/users | Change one or more user in the specified account.


# **create**
```objc
-(NSNumber*) createWithAccountId: (DSNewUsersDefinition*) varNewUsersDefinition
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSNewUsersSummary* output, NSError* error)) handler;
```

Adds news user to the specified account.

Adds new users to your account. Set the `userSettings` property in the request to specify the actions the users can perform on the account.

### Example 
```objc

DSNewUsersDefinition* varNewUsersDefinition = [[DSNewUsersDefinition alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Adds news user to the specified account.
[apiInstance createWithAccountId:varNewUsersDefinition
              accountId:accountId
          completionHandler: ^(DSNewUsersSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->create: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **varNewUsersDefinition** | [**DSNewUsersDefinition***](DSNewUsersDefinition*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSNewUsersSummary***](DSNewUsersSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSignatures**
```objc
-(NSNumber*) createSignaturesWithAccountId: (DSUserSignaturesInformation*) userSignaturesInformation
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSUserSignaturesInformation* output, NSError* error)) handler;
```

Adds user Signature and initials images to a Signature.

Adds a user signature image and/or user initials image to the specified user.   The userId property specified in the endpoint must match the authenticated user's userId and the user must be a member of the account.  The rules and processes associated with this are:  * If Content-Type is set to application/json, then the default behavior for creating a default signature image, based on the name and a DocuSign font, is used. * If Content-Type is set to multipart/form-data, then the request must contain a first part with the user signature information, followed by parts that contain the images.  For each Image part, the Content-Disposition header has a \"filename\" value that is used to map to the `signatureName` and/or `signatureInitials` properties in the JSON to the image.   For example:  `Content-Disposition: file; filename=\"Ron Test20121127083900\"`  If no matching image (by filename value) is found, then the image is not set. One, both, or neither of the signature and initials images can be set with this call.  The Content-Transfer-Encoding: base64 header, set in the header for the part containing the image, can be set to indicate that the images are formatted as base64 instead of as binary.  If successful, 200-OK is returned, and a JSON structure containing the signature information is provided, note that the signatureId can change with each API POST, PUT, or DELETE since the changes to the signature structure cause the current signature to be closed, and a new signature record to be created.

### Example 
```objc

DSUserSignaturesInformation* userSignaturesInformation = [[DSUserSignaturesInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Adds user Signature and initials images to a Signature.
[apiInstance createSignaturesWithAccountId:userSignaturesInformation
              accountId:accountId
              userId:userId
          completionHandler: ^(DSUserSignaturesInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->createSignatures: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSignaturesInformation** | [**DSUserSignaturesInformation***](DSUserSignaturesInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSUserSignaturesInformation***](DSUserSignaturesInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```objc
-(NSNumber*) deleteWithAccountId: (DSUserInfoList*) userInfoList
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSUsersResponse* output, NSError* error)) handler;
```

Removes users account privileges.

This closes one or more user records in the account. Users are never deleted from an account, but closing a user prevents them from using account functions.  The response returns whether the API execution was successful (200 - OK) or  if it failed. The response contains a user structure similar to the request and includes the user changes. If an error occurred during the DELETE operation for any of the users, the response for that user contains an `errorDetails` node with `errorCode` and `message` properties.

### Example 
```objc

DSUserInfoList* userInfoList = [[DSUserInfoList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Removes users account privileges.
[apiInstance deleteWithAccountId:userInfoList
              accountId:accountId
          completionHandler: ^(DSUsersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->delete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userInfoList** | [**DSUserInfoList***](DSUserInfoList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSUsersResponse***](DSUsersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContactWithId**
```objc
-(NSNumber*) deleteContactWithIdWithAccountId: (NSString*) accountId
    contactId: (NSString*) contactId
        completionHandler: (void (^)(DSContactUpdateResponse* output, NSError* error)) handler;
```

Replaces a particular contact associated with an account for the DocuSign service.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* contactId = @"contactId_example"; // The unique identifier of a person in the contacts address book.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Replaces a particular contact associated with an account for the DocuSign service.
[apiInstance deleteContactWithIdWithAccountId:accountId
              contactId:contactId
          completionHandler: ^(DSContactUpdateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->deleteContactWithId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **contactId** | **NSString***| The unique identifier of a person in the contacts address book. | 

### Return type

[**DSContactUpdateResponse***](DSContactUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContacts**
```objc
-(NSNumber*) deleteContactsWithAccountId: (DSContactModRequest*) contactModRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSContactUpdateResponse* output, NSError* error)) handler;
```

Delete contacts associated with an account for the DocuSign service.

### Example 
```objc

DSContactModRequest* contactModRequest = [[DSContactModRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Delete contacts associated with an account for the DocuSign service.
[apiInstance deleteContactsWithAccountId:contactModRequest
              accountId:accountId
          completionHandler: ^(DSContactUpdateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->deleteContacts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactModRequest** | [**DSContactModRequest***](DSContactModRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSContactUpdateResponse***](DSContactUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomSettings**
```objc
-(NSNumber*) deleteCustomSettingsWithAccountId: (DSCustomSettingsInformation*) customSettingsInformation
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSCustomSettingsInformation* output, NSError* error)) handler;
```

Deletes custom user settings for a specified user.

Deletes the specified custom user settings for a single user.  ###Deleting Grouped Custom User Settings###  If the custom user settings you want to delete are grouped, you must include the following information in the header, after Content-Type, in the request:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are deleted.

### Example 
```objc

DSCustomSettingsInformation* customSettingsInformation = [[DSCustomSettingsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Deletes custom user settings for a specified user.
[apiInstance deleteCustomSettingsWithAccountId:customSettingsInformation
              accountId:accountId
              userId:userId
          completionHandler: ^(DSCustomSettingsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->deleteCustomSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customSettingsInformation** | [**DSCustomSettingsInformation***](DSCustomSettingsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSCustomSettingsInformation***](DSCustomSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProfileImage**
```objc
-(NSNumber*) deleteProfileImageWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes the user profile image for the specified user.

Deletes the user profile image from the  specified user's profile.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Deletes the user profile image for the specified user.
[apiInstance deleteProfileImageWithAccountId:accountId
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->deleteProfileImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **deleteSignature**
```objc
-(NSNumber*) deleteSignatureWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
    signatureId: (NSString*) signatureId
        completionHandler: (void (^)(NSError* error)) handler;
```

Removes removes signature information for the specified user.

Removes the signature information for the user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* signatureId = @"signatureId_example"; // The ID of the signature being accessed.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Removes removes signature information for the specified user.
[apiInstance deleteSignatureWithAccountId:accountId
              userId:userId
              signatureId:signatureId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->deleteSignature: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **signatureId** | **NSString***| The ID of the signature being accessed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSignatureImage**
```objc
-(NSNumber*) deleteSignatureImageWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
    signatureId: (NSString*) signatureId
    imageType: (NSString*) imageType
        completionHandler: (void (^)(DSUserSignature* output, NSError* error)) handler;
```

Deletes the user initials image or the  user signature image for the specified user.

Deletes the specified initials image or signature image for the specified user.  The function deletes one or the other of the image types, to delete both the initials image and signature image you must call the endpoint twice.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* signatureId = @"signatureId_example"; // The ID of the signature being accessed.
NSString* imageType = @"imageType_example"; // One of **signature_image** or **initials_image**.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Deletes the user initials image or the  user signature image for the specified user.
[apiInstance deleteSignatureImageWithAccountId:accountId
              userId:userId
              signatureId:signatureId
              imageType:imageType
          completionHandler: ^(DSUserSignature* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->deleteSignatureImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **signatureId** | **NSString***| The ID of the signature being accessed. | 
 **imageType** | **NSString***| One of **signature_image** or **initials_image**. | 

### Return type

[**DSUserSignature***](DSUserSignature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContactById**
```objc
-(NSNumber*) getContactByIdWithAccountId: (NSString*) cloudProvider
    accountId: (NSString*) accountId
    contactId: (NSString*) contactId
        completionHandler: (void (^)(DSContactGetResponse* output, NSError* error)) handler;
```

Gets a particular contact associated with the user's account.

### Example 
```objc

NSString* cloudProvider = @"cloudProvider_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* contactId = @"contactId_example"; // The unique identifier of a person in the contacts address book.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Gets a particular contact associated with the user's account.
[apiInstance getContactByIdWithAccountId:cloudProvider
              accountId:accountId
              contactId:contactId
          completionHandler: ^(DSContactGetResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->getContactById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloudProvider** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **contactId** | **NSString***| The unique identifier of a person in the contacts address book. | 

### Return type

[**DSContactGetResponse***](DSContactGetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInformation**
```objc
-(NSNumber*) getInformationWithAccountId: (NSString*) additionalInfo
    email: (NSString*) email
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSUserInformation* output, NSError* error)) handler;
```

Gets the user information for a specified user.

Retrieves the user information for the specified user.   To return additional user information that details the last login date, login status, and the user's password expiration date, set the optional `additional_info` query string parameter to **true**.

### Example 
```objc

NSString* additionalInfo = @"additionalInfo_example"; // When set to **true**, the full list of user information is returned for each user in the account. (optional)
NSString* email = @"email_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Gets the user information for a specified user.
[apiInstance getInformationWithAccountId:additionalInfo
              email:email
              accountId:accountId
              userId:userId
          completionHandler: ^(DSUserInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->getInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **additionalInfo** | **NSString***| When set to **true**, the full list of user information is returned for each user in the account. | [optional] 
 **email** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSUserInformation***](DSUserInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfile**
```objc
-(NSNumber*) getProfileWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSUserProfile* output, NSError* error)) handler;
```

Retrieves the user profile for a specified user.

Retrieves the user profile information, the privacy settings and personal information (address, phone number, etc.) for the specified user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Retrieves the user profile for a specified user.
[apiInstance getProfileWithAccountId:accountId
              userId:userId
          completionHandler: ^(DSUserProfile* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->getProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSUserProfile***](DSUserProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfileImage**
```objc
-(NSNumber*) getProfileImageWithAccountId: (NSString*) encoding
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Retrieves the user profile image for the specified user.

Retrieves the user profile picture for the specified user. The image is returned in the same format as uploaded.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.  If successful, the response returns a 200 - OK and the user profile image.

### Example 
```objc

NSString* encoding = @"encoding_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Retrieves the user profile image for the specified user.
[apiInstance getProfileImageWithAccountId:encoding
              accountId:accountId
              userId:userId
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->getProfileImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **encoding** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

**NSURL***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/gif

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSettings**
```objc
-(NSNumber*) getSettingsWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSUserSettingsInformation* output, NSError* error)) handler;
```

Gets the user account settings for a specified user.

Retrieves a list of the account settings and email notification information for the specified user.  The response returns the account setting name/value information and the email notification settings for the specified user. For more information about the different user settings, see the [ML:userSettings list].

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Gets the user account settings for a specified user.
[apiInstance getSettingsWithAccountId:accountId
              userId:userId
          completionHandler: ^(DSUserSettingsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->getSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSUserSettingsInformation***](DSUserSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignature**
```objc
-(NSNumber*) getSignatureWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
    signatureId: (NSString*) signatureId
        completionHandler: (void (^)(DSUserSignature* output, NSError* error)) handler;
```

Gets the user signature information for the specified user.

Retrieves the structure of a single signature with a known signature name.  The userId specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* signatureId = @"signatureId_example"; // The ID of the signature being accessed.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Gets the user signature information for the specified user.
[apiInstance getSignatureWithAccountId:accountId
              userId:userId
              signatureId:signatureId
          completionHandler: ^(DSUserSignature* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->getSignature: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **signatureId** | **NSString***| The ID of the signature being accessed. | 

### Return type

[**DSUserSignature***](DSUserSignature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignatureImage**
```objc
-(NSNumber*) getSignatureImageWithAccountId: (NSString*) includeChrome
    accountId: (NSString*) accountId
    userId: (NSString*) userId
    signatureId: (NSString*) signatureId
    imageType: (NSString*) imageType
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Retrieves the user initials image or the  user signature image for the specified user.

Retrieves the specified initials image or signature image for the specified user. The image is returned in the same format as uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".  ###### Note: Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image.

### Example 
```objc

NSString* includeChrome = @"includeChrome_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* signatureId = @"signatureId_example"; // The ID of the signature being accessed.
NSString* imageType = @"imageType_example"; // One of **signature_image** or **initials_image**.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Retrieves the user initials image or the  user signature image for the specified user.
[apiInstance getSignatureImageWithAccountId:includeChrome
              accountId:accountId
              userId:userId
              signatureId:signatureId
              imageType:imageType
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->getSignatureImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeChrome** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **signatureId** | **NSString***| The ID of the signature being accessed. | 
 **imageType** | **NSString***| One of **signature_image** or **initials_image**. | 

### Return type

**NSURL***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/gif

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```objc
-(NSNumber*) listWithAccountId: (NSString*) additionalInfo
    count: (NSString*) count
    email: (NSString*) email
    emailSubstring: (NSString*) emailSubstring
    groupId: (NSString*) groupId
    includeUsersettingsForCsv: (NSString*) includeUsersettingsForCsv
    loginStatus: (NSString*) loginStatus
    notGroupId: (NSString*) notGroupId
    startPosition: (NSString*) startPosition
    status: (NSString*) status
    userNameSubstring: (NSString*) userNameSubstring
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSUserInformationList* output, NSError* error)) handler;
```

Retrieves the list of users for the specified account.

Retrieves the list of users for the specified account.  The response returns the list of users for the account along with the information about the result set. If the `additional_info` query was added to the endpoint and set to **true**, the full user information is returned for each user

### Example 
```objc

NSString* additionalInfo = @"additionalInfo_example"; // When set to **true**, the full list of user information is returned for each user in the account. (optional)
NSString* count = @"count_example"; // Number of records to return. The number must be greater than 0 and less than or equal to 100.  (optional)
NSString* email = @"email_example"; //  (optional)
NSString* emailSubstring = @"emailSubstring_example"; // Filters the returned user records by the email address or a sub-string of email address. (optional)
NSString* groupId = @"groupId_example"; // Filters user records returned by one or more group Id's. (optional)
NSString* includeUsersettingsForCsv = @"includeUsersettingsForCsv_example"; //  (optional)
NSString* loginStatus = @"loginStatus_example"; //  (optional)
NSString* notGroupId = @"notGroupId_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; // Starting value for the list.  (optional)
NSString* status = @"status_example"; //  (optional)
NSString* userNameSubstring = @"userNameSubstring_example"; // Filters the user records returned by the user name or a sub-string of user name. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Retrieves the list of users for the specified account.
[apiInstance listWithAccountId:additionalInfo
              count:count
              email:email
              emailSubstring:emailSubstring
              groupId:groupId
              includeUsersettingsForCsv:includeUsersettingsForCsv
              loginStatus:loginStatus
              notGroupId:notGroupId
              startPosition:startPosition
              status:status
              userNameSubstring:userNameSubstring
              accountId:accountId
          completionHandler: ^(DSUserInformationList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->list: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **additionalInfo** | **NSString***| When set to **true**, the full list of user information is returned for each user in the account. | [optional] 
 **count** | **NSString***| Number of records to return. The number must be greater than 0 and less than or equal to 100.  | [optional] 
 **email** | **NSString***|  | [optional] 
 **emailSubstring** | **NSString***| Filters the returned user records by the email address or a sub-string of email address. | [optional] 
 **groupId** | **NSString***| Filters user records returned by one or more group Id&#39;s. | [optional] 
 **includeUsersettingsForCsv** | **NSString***|  | [optional] 
 **loginStatus** | **NSString***|  | [optional] 
 **notGroupId** | **NSString***|  | [optional] 
 **startPosition** | **NSString***| Starting value for the list.  | [optional] 
 **status** | **NSString***|  | [optional] 
 **userNameSubstring** | **NSString***| Filters the user records returned by the user name or a sub-string of user name. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSUserInformationList***](DSUserInformationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomSettings**
```objc
-(NSNumber*) listCustomSettingsWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSCustomSettingsInformation* output, NSError* error)) handler;
```

Retrieves the custom user settings for a specified user.

Retrieves a list of custom user settings for a single user.  Custom settings provide a flexible way to store and retrieve custom user information that can be used in your own system.  ###### Note: Custom user settings are not the same as user account settings.  ###Getting Grouped Custom User Settings###  If the custom user settings you want to retrieve are grouped, you must include the following information in the header, after Content-Type, in the request:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are retrieved.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Retrieves the custom user settings for a specified user.
[apiInstance listCustomSettingsWithAccountId:accountId
              userId:userId
          completionHandler: ^(DSCustomSettingsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->listCustomSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSCustomSettingsInformation***](DSCustomSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSignatures**
```objc
-(NSNumber*) listSignaturesWithAccountId: (NSString*) stampType
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSUserSignaturesInformation* output, NSError* error)) handler;
```

Retrieves a list of user signature definitions for a specified user.

Retrieves the signature definitions for the specified user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```objc

NSString* stampType = @"stampType_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Retrieves a list of user signature definitions for a specified user.
[apiInstance listSignaturesWithAccountId:stampType
              accountId:accountId
              userId:userId
          completionHandler: ^(DSUserSignaturesInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->listSignatures: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stampType** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSUserSignaturesInformation***](DSUserSignaturesInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postContacts**
```objc
-(NSNumber*) postContactsWithAccountId: (DSContactModRequest*) contactModRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSContactUpdateResponse* output, NSError* error)) handler;
```

Imports multiple new contacts into the contacts collection from CSV, JSON, or XML (based on content type).

### Example 
```objc

DSContactModRequest* contactModRequest = [[DSContactModRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Imports multiple new contacts into the contacts collection from CSV, JSON, or XML (based on content type).
[apiInstance postContactsWithAccountId:contactModRequest
              accountId:accountId
          completionHandler: ^(DSContactUpdateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->postContacts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactModRequest** | [**DSContactModRequest***](DSContactModRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSContactUpdateResponse***](DSContactUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putContacts**
```objc
-(NSNumber*) putContactsWithAccountId: (DSContactModRequest*) contactModRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSContactUpdateResponse* output, NSError* error)) handler;
```

Replaces contacts associated with an account for the DocuSign service.

### Example 
```objc

DSContactModRequest* contactModRequest = [[DSContactModRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Replaces contacts associated with an account for the DocuSign service.
[apiInstance putContactsWithAccountId:contactModRequest
              accountId:accountId
          completionHandler: ^(DSContactUpdateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->putContacts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactModRequest** | [**DSContactModRequest***](DSContactModRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSContactUpdateResponse***](DSContactUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomSettings**
```objc
-(NSNumber*) updateCustomSettingsWithAccountId: (DSCustomSettingsInformation*) customSettingsInformation
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSCustomSettingsInformation* output, NSError* error)) handler;
```

Adds or updates custom user settings for the specified user.

Adds or updates custom user settings for the specified user.  ###### Note: Custom user settings are not the same as user account settings.  Custom settings provide a flexible way to store and retrieve custom user information that you can use in your own system.  **Important**: There is a limit on the size for all the custom user settings for a single user. The limit is 4,000 characters, which includes the XML and JSON structure for the settings.  ### Grouping Custom User Settings ###  You can group custom user settings when adding them. Grouping allows you to retrieve settings that are in a specific group, instead of retrieving all the user custom settings.  To group custom user settings, add the following information in the header, after Content-Type:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings. Grouping is shown in the Example Request Body below.  When getting or deleting grouped custom user settings, you must include the extra header information.  Grouping custom user settings is not required and if the extra header information is not included, the custom user settings are added normally and can be retrieved or deleted without including the additional header.

### Example 
```objc

DSCustomSettingsInformation* customSettingsInformation = [[DSCustomSettingsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Adds or updates custom user settings for the specified user.
[apiInstance updateCustomSettingsWithAccountId:customSettingsInformation
              accountId:accountId
              userId:userId
          completionHandler: ^(DSCustomSettingsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateCustomSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customSettingsInformation** | [**DSCustomSettingsInformation***](DSCustomSettingsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSCustomSettingsInformation***](DSCustomSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfile**
```objc
-(NSNumber*) updateProfileWithAccountId: (DSUserProfile*) userProfile
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the user profile information for the specified user.

Updates the user's detail information, profile information, privacy settings, and personal information in the user ID card.  You can also change a user's name by changing the information in the `userDetails` property. When changing a user's name, you can either change the information in the `userName` property OR change the information in `firstName`, `middleName`, `lastName, suffixName`, and `title` properties. Changes to `firstName`, `middleName`, `lastName`, `suffixName`, and `title` properties take precedence over changes to the `userName` property.

### Example 
```objc

DSUserProfile* userProfile = [[DSUserProfile alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Updates the user profile information for the specified user.
[apiInstance updateProfileWithAccountId:userProfile
              accountId:accountId
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userProfile** | [**DSUserProfile***](DSUserProfile*.md)|  | [optional] 
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

# **updateProfileImage**
```objc
-(NSNumber*) updateProfileImageWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the user profile image for a specified user.

Updates the user profile image by uploading an image to the user profile.  The supported image formats are: gif, png, jpeg, and bmp. The file must be less than 200K. For best viewing results, DocuSign recommends that the image is no more than 79 pixels wide and high.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Updates the user profile image for a specified user.
[apiInstance updateProfileImageWithAccountId:accountId
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateProfileImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **updateSettings**
```objc
-(NSNumber*) updateSettingsWithAccountId: (DSUserSettingsInformation*) userSettingsInformation
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the user account settings for a specified user.

Updates the account settings list and email notification types for the specified user.

### Example 
```objc

DSUserSettingsInformation* userSettingsInformation = [[DSUserSettingsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Updates the user account settings for a specified user.
[apiInstance updateSettingsWithAccountId:userSettingsInformation
              accountId:accountId
              userId:userId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSettingsInformation** | [**DSUserSettingsInformation***](DSUserSettingsInformation*.md)|  | [optional] 
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

# **updateSignature**
```objc
-(NSNumber*) updateSignatureWithAccountId: (NSString*) closeExistingSignature
    userSignatureDefinition: (DSUserSignatureDefinition*) userSignatureDefinition
    accountId: (NSString*) accountId
    userId: (NSString*) userId
    signatureId: (NSString*) signatureId
        completionHandler: (void (^)(DSUserSignature* output, NSError* error)) handler;
```

Updates the user signature for a specified user.

Creates, or updates, the signature font and initials for the specified user. When creating a signature, you use this resource to create the signature name and then add the signature and initials images into the signature.  ###### Note: This will also create a default signature for the user when one does not exist.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```objc

NSString* closeExistingSignature = @"closeExistingSignature_example"; // When set to **true**, closes the current signature. (optional)
DSUserSignatureDefinition* userSignatureDefinition = [[DSUserSignatureDefinition alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* signatureId = @"signatureId_example"; // The ID of the signature being accessed.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Updates the user signature for a specified user.
[apiInstance updateSignatureWithAccountId:closeExistingSignature
              userSignatureDefinition:userSignatureDefinition
              accountId:accountId
              userId:userId
              signatureId:signatureId
          completionHandler: ^(DSUserSignature* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateSignature: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **closeExistingSignature** | **NSString***| When set to **true**, closes the current signature. | [optional] 
 **userSignatureDefinition** | [**DSUserSignatureDefinition***](DSUserSignatureDefinition*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **signatureId** | **NSString***| The ID of the signature being accessed. | 

### Return type

[**DSUserSignature***](DSUserSignature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSignatureImage**
```objc
-(NSNumber*) updateSignatureImageWithAccountId: (NSString*) accountId
    userId: (NSString*) userId
    signatureId: (NSString*) signatureId
    imageType: (NSString*) imageType
        completionHandler: (void (^)(DSUserSignature* output, NSError* error)) handler;
```

Updates the user signature image or user initials image for the specified user.

Updates the user signature image or user initials image for the specified user. The supported image formats for this file are: gif, png, jpeg, and bmp. The file must be less than 200K.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\". 

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
NSString* signatureId = @"signatureId_example"; // The ID of the signature being accessed.
NSString* imageType = @"imageType_example"; // One of **signature_image** or **initials_image**.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Updates the user signature image or user initials image for the specified user.
[apiInstance updateSignatureImageWithAccountId:accountId
              userId:userId
              signatureId:signatureId
              imageType:imageType
          completionHandler: ^(DSUserSignature* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateSignatureImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 
 **signatureId** | **NSString***| The ID of the signature being accessed. | 
 **imageType** | **NSString***| One of **signature_image** or **initials_image**. | 

### Return type

[**DSUserSignature***](DSUserSignature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSignatures**
```objc
-(NSNumber*) updateSignaturesWithAccountId: (DSUserSignaturesInformation*) userSignaturesInformation
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSUserSignaturesInformation* output, NSError* error)) handler;
```

Adds/updates a user signature.

### Example 
```objc

DSUserSignaturesInformation* userSignaturesInformation = [[DSUserSignaturesInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Adds/updates a user signature.
[apiInstance updateSignaturesWithAccountId:userSignaturesInformation
              accountId:accountId
              userId:userId
          completionHandler: ^(DSUserSignaturesInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateSignatures: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSignaturesInformation** | [**DSUserSignaturesInformation***](DSUserSignaturesInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSUserSignaturesInformation***](DSUserSignaturesInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
```objc
-(NSNumber*) updateUserWithAccountId: (DSUserInformation*) userInformation
    accountId: (NSString*) accountId
    userId: (NSString*) userId
        completionHandler: (void (^)(DSUserInformation* output, NSError* error)) handler;
```

Updates the specified user information.

### Example 
```objc

DSUserInformation* userInformation = [[DSUserInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* userId = @"userId_example"; // The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Updates the specified user information.
[apiInstance updateUserWithAccountId:userInformation
              accountId:accountId
              userId:userId
          completionHandler: ^(DSUserInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userInformation** | [**DSUserInformation***](DSUserInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **userId** | **NSString***| The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing. | 

### Return type

[**DSUserInformation***](DSUserInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUsers**
```objc
-(NSNumber*) updateUsersWithAccountId: (DSUserInformationList*) userInformationList
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSUserInformationList* output, NSError* error)) handler;
```

Change one or more user in the specified account.

### Example 
```objc

DSUserInformationList* userInformationList = [[DSUserInformationList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSUsersApi*apiInstance = [[DSUsersApi alloc] init];

// Change one or more user in the specified account.
[apiInstance updateUsersWithAccountId:userInformationList
              accountId:accountId
          completionHandler: ^(DSUserInformationList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSUsersApi->updateUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userInformationList** | [**DSUserInformationList***](DSUserInformationList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSUserInformationList***](DSUserInformationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

