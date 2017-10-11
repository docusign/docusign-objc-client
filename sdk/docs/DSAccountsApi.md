# DSAccountsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DSAccountsApi.md#create) | **POST** /v2/accounts | Creates new accounts.
[**createBrand**](DSAccountsApi.md#createbrand) | **POST** /v2/accounts/{accountId}/brands | Creates one or more brand profile files for the account.
[**createCustomField**](DSAccountsApi.md#createcustomfield) | **POST** /v2/accounts/{accountId}/custom_fields | Creates an acount custom field.
[**createEMortgageTransaction**](DSAccountsApi.md#createemortgagetransaction) | **POST** /v2/accounts/{accountId}/eMortgage/transactions | Starts a new eMortgage Transaction
[**createPermissionProfile**](DSAccountsApi.md#createpermissionprofile) | **POST** /v2/accounts/{accountId}/permission_profiles | Creates a new permission profile in the specified account.
[**delete**](DSAccountsApi.md#delete) | **DELETE** /v2/accounts/{accountId} | Deletes the specified account.
[**deleteBrand**](DSAccountsApi.md#deletebrand) | **DELETE** /v2/accounts/{accountId}/brands/{brandId} | Removes a brand.
[**deleteBrandLogoByType**](DSAccountsApi.md#deletebrandlogobytype) | **DELETE** /v2/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Delete one branding logo.
[**deleteBrands**](DSAccountsApi.md#deletebrands) | **DELETE** /v2/accounts/{accountId}/brands | Deletes one or more brand profiles.
[**deleteCaptiveRecipient**](DSAccountsApi.md#deletecaptiverecipient) | **DELETE** /v2/accounts/{accountId}/captive_recipients/{recipientPart} | Deletes the signature for one or more captive recipient records.
[**deleteCustomField**](DSAccountsApi.md#deletecustomfield) | **DELETE** /v2/accounts/{accountId}/custom_fields/{customFieldId} | Delete an existing account custom field.
[**deleteENoteConfiguration**](DSAccountsApi.md#deleteenoteconfiguration) | **DELETE** /v2/accounts/{accountId}/settings/enote_configuration | Deletes configuration information for the eNote eOriginal integration.
[**deletePermissionProfile**](DSAccountsApi.md#deletepermissionprofile) | **DELETE** /v2/accounts/{accountId}/permission_profiles/{permissionProfileId} | Deletes a permissions profile within the specified account.
[**getAccountInformation**](DSAccountsApi.md#getaccountinformation) | **GET** /v2/accounts/{accountId} | Retrieves the account information for the specified account.
[**getAccountTabSettings**](DSAccountsApi.md#getaccounttabsettings) | **GET** /v2/accounts/{accountId}/settings/tabs | Returns tab settings list for specified account
[**getAllPaymentGatewayAccounts**](DSAccountsApi.md#getallpaymentgatewayaccounts) | **GET** /v2/accounts/{accountId}/payment_gateway_accounts | Get all payment gateway account for the provided accountId
[**getBillingCharges**](DSAccountsApi.md#getbillingcharges) | **GET** /v2/accounts/{accountId}/billing_charges | Gets list of recurring and usage charges for the account.
[**getBrand**](DSAccountsApi.md#getbrand) | **GET** /v2/accounts/{accountId}/brands/{brandId} | Get information for a specific brand.
[**getBrandExportFile**](DSAccountsApi.md#getbrandexportfile) | **GET** /v2/accounts/{accountId}/brands/{brandId}/file | Export a specific brand.
[**getBrandLogoByType**](DSAccountsApi.md#getbrandlogobytype) | **GET** /v2/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Obtains the specified image for a brand.
[**getBrandResources**](DSAccountsApi.md#getbrandresources) | **GET** /v2/accounts/{accountId}/brands/{brandId}/resources | Returns the specified account&#39;s list of branding resources (metadata).
[**getBrandResourcesByContentType**](DSAccountsApi.md#getbrandresourcesbycontenttype) | **GET** /v2/accounts/{accountId}/brands/{brandId}/resources/{resourceContentType} | Returns the specified branding resource file.
[**getConsumerDisclosure**](DSAccountsApi.md#getconsumerdisclosure) | **GET** /v2/accounts/{accountId}/consumer_disclosure/{langCode} | Gets the Electronic Record and Signature Disclosure.
[**getConsumerDisclosureDefault**](DSAccountsApi.md#getconsumerdisclosuredefault) | **GET** /v2/accounts/{accountId}/consumer_disclosure | Gets the Electronic Record and Signature Disclosure for the account.
[**getENoteConfiguration**](DSAccountsApi.md#getenoteconfiguration) | **GET** /v2/accounts/{accountId}/settings/enote_configuration | Returns the configuration information for the eNote eOriginal integration.
[**getPasswordRules**](DSAccountsApi.md#getpasswordrules) | **GET** /v2/accounts/{accountId}/settings/password_rules | Get the password rules
[**getPasswordRules_0**](DSAccountsApi.md#getpasswordrules_0) | **GET** /v2/current_user/password_rules | Get membership account password rules
[**getPermissionProfile**](DSAccountsApi.md#getpermissionprofile) | **GET** /v2/accounts/{accountId}/permission_profiles/{permissionProfileId} | Returns a permissions profile in the specified account.
[**getProvisioning**](DSAccountsApi.md#getprovisioning) | **GET** /v2/accounts/provisioning | Retrieves the account provisioning information for the account.
[**getSupportedLanguages**](DSAccountsApi.md#getsupportedlanguages) | **GET** /v2/accounts/{accountId}/supported_languages | Gets list of supported languages for recipient language setting.
[**getWatermark**](DSAccountsApi.md#getwatermark) | **GET** /v2/accounts/{accountId}/watermark | Get watermark information.
[**getWatermarkPreview**](DSAccountsApi.md#getwatermarkpreview) | **PUT** /v2/accounts/{accountId}/watermark/preview | Get watermark preview.
[**listBrands**](DSAccountsApi.md#listbrands) | **GET** /v2/accounts/{accountId}/brands | Gets a list of brand profiles.
[**listCustomFields**](DSAccountsApi.md#listcustomfields) | **GET** /v2/accounts/{accountId}/custom_fields | Gets a list of custom fields associated with the account.
[**listPermissions**](DSAccountsApi.md#listpermissions) | **GET** /v2/accounts/{accountId}/permission_profiles | Gets a list of permission profiles.
[**listRecipientNamesByEmail**](DSAccountsApi.md#listrecipientnamesbyemail) | **GET** /v2/accounts/{accountId}/recipient_names | Gets recipient names associated with an email address.
[**listSettings**](DSAccountsApi.md#listsettings) | **GET** /v2/accounts/{accountId}/settings | Gets account settings information.
[**listSharedAccess**](DSAccountsApi.md#listsharedaccess) | **GET** /v2/accounts/{accountId}/shared_access | Reserved: Gets the shared item status for one or more users.
[**listSignatureProviders**](DSAccountsApi.md#listsignatureproviders) | **GET** /v2/accounts/{accountId}/signatureProviders | Returns Account available signature providers for specified account.
[**listUnsupportedFileTypes**](DSAccountsApi.md#listunsupportedfiletypes) | **GET** /v2/accounts/{accountId}/unsupported_file_types | Gets a list of unsupported file types.
[**updateAccountTabSettings**](DSAccountsApi.md#updateaccounttabsettings) | **PUT** /v2/accounts/{accountId}/settings/tabs | Modifies tab settings for specified account
[**updateBrand**](DSAccountsApi.md#updatebrand) | **PUT** /v2/accounts/{accountId}/brands/{brandId} | Updates an existing brand.
[**updateBrandLogoByType**](DSAccountsApi.md#updatebrandlogobytype) | **PUT** /v2/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Put one branding logo.
[**updateBrandResourcesByContentType**](DSAccountsApi.md#updatebrandresourcesbycontenttype) | **PUT** /v2/accounts/{accountId}/brands/{brandId}/resources/{resourceContentType} | Uploads a branding resource file.
[**updateConsumerDisclosure**](DSAccountsApi.md#updateconsumerdisclosure) | **PUT** /v2/accounts/{accountId}/consumer_disclosure/{langCode} | Update Consumer Disclosure.
[**updateCustomField**](DSAccountsApi.md#updatecustomfield) | **PUT** /v2/accounts/{accountId}/custom_fields/{customFieldId} | Updates an existing account custom field.
[**updateENoteConfiguration**](DSAccountsApi.md#updateenoteconfiguration) | **PUT** /v2/accounts/{accountId}/settings/enote_configuration | Updates configuration information for the eNote eOriginal integration.
[**updatePasswordRules**](DSAccountsApi.md#updatepasswordrules) | **PUT** /v2/accounts/{accountId}/settings/password_rules | Update the password rules
[**updatePermissionProfile**](DSAccountsApi.md#updatepermissionprofile) | **PUT** /v2/accounts/{accountId}/permission_profiles/{permissionProfileId} | Updates a permission profile within the specified account.
[**updateSettings**](DSAccountsApi.md#updatesettings) | **PUT** /v2/accounts/{accountId}/settings | Updates the account settings for an account.
[**updateSharedAccess**](DSAccountsApi.md#updatesharedaccess) | **PUT** /v2/accounts/{accountId}/shared_access | Reserved: Sets the shared access information for users.
[**updateWatermark**](DSAccountsApi.md#updatewatermark) | **PUT** /v2/accounts/{accountId}/watermark | Update watermark information.


# **create**
```objc
-(NSNumber*) createWithPreviewBillingPlan: (NSString*) previewBillingPlan
    varNewAccountDefinition: (DSNewAccountDefinition*) varNewAccountDefinition
        completionHandler: (void (^)(DSNewAccountSummary* output, NSError* error)) handler;
```

Creates new accounts.

Creates new DocuSign service accounts.  This is used to create multiple DocuSign accounts with one call. It uses the same information and formats as the normal a  [Accounts:create](accounts_create) call with the information included within a `newAccountRequests` element. A maximum of 100 new accounts can be created at one time.  Note that the structure of the XML request is slightly different than the JSON request, in that the new account information is included in a `newAccountDefinition` property inside the `newAccountRequests` element. Response  The response returns the new account ID, password and the default user information for each newly created account.  A 201 code is returned if the call succeeded.  While the call may have succeed, some of the individual account requests may have failed. In the case of failures to create the account,  an `errorDetails` node is added in the response to each specific request that failed.

### Example 
```objc

NSString* previewBillingPlan = @"previewBillingPlan_example"; // When set to **true**, creates the account using a preview billing plan. (optional)
DSNewAccountDefinition* varNewAccountDefinition = [[DSNewAccountDefinition alloc] init]; //  (optional)

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Creates new accounts.
[apiInstance createWithPreviewBillingPlan:previewBillingPlan
              varNewAccountDefinition:varNewAccountDefinition
          completionHandler: ^(DSNewAccountSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->create: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **previewBillingPlan** | **NSString***| When set to **true**, creates the account using a preview billing plan. | [optional] 
 **varNewAccountDefinition** | [**DSNewAccountDefinition***](DSNewAccountDefinition*.md)|  | [optional] 

### Return type

[**DSNewAccountSummary***](DSNewAccountSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBrand**
```objc
-(NSNumber*) createBrandWithAccountId: (DSBrand*) brand
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler;
```

Creates one or more brand profile files for the account.

Creates one or more brand profile files for the account. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSig`) must be set to **true** for the account to use this call.  An error is returned if `brandId` property for a brand profile is already set for the account. To upload a new version of an existing brand profile, you must delete the profile and then upload the newer version.  When brand profile files are being uploaded, they must be combined into one zip file and the `Content-Type` must be `application/zip`.

### Example 
```objc

DSBrand* brand = [[DSBrand alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Creates one or more brand profile files for the account.
[apiInstance createBrandWithAccountId:brand
              accountId:accountId
          completionHandler: ^(DSBrandsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->createBrand: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brand** | [**DSBrand***](DSBrand*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBrandsResponse***](DSBrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomField**
```objc
-(NSNumber*) createCustomFieldWithAccountId: (NSString*) applyToTemplates
    customField: (DSCustomField*) customField
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Creates an acount custom field.

### Example 
```objc

NSString* applyToTemplates = @"applyToTemplates_example"; //  (optional)
DSCustomField* customField = [[DSCustomField alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Creates an acount custom field.
[apiInstance createCustomFieldWithAccountId:applyToTemplates
              customField:customField
              accountId:accountId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->createCustomField: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applyToTemplates** | **NSString***|  | [optional] 
 **customField** | [**DSCustomField***](DSCustomField*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSCustomFields***](DSCustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEMortgageTransaction**
```objc
-(NSNumber*) createEMortgageTransactionWithAccountId: (DSPostTransactionsRequest*) postTransactionsRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSPostTransactionsResponse* output, NSError* error)) handler;
```

Starts a new eMortgage Transaction

### Example 
```objc

DSPostTransactionsRequest* postTransactionsRequest = [[DSPostTransactionsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Starts a new eMortgage Transaction
[apiInstance createEMortgageTransactionWithAccountId:postTransactionsRequest
              accountId:accountId
          completionHandler: ^(DSPostTransactionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->createEMortgageTransaction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postTransactionsRequest** | [**DSPostTransactionsRequest***](DSPostTransactionsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSPostTransactionsResponse***](DSPostTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPermissionProfile**
```objc
-(NSNumber*) createPermissionProfileWithAccountId: (NSString*) include
    permissionProfile: (DSPermissionProfile*) permissionProfile
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSPermissionProfile* output, NSError* error)) handler;
```

Creates a new permission profile in the specified account.

### Example 
```objc

NSString* include = @"include_example"; //  (optional)
DSPermissionProfile* permissionProfile = [[DSPermissionProfile alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Creates a new permission profile in the specified account.
[apiInstance createPermissionProfileWithAccountId:include
              permissionProfile:permissionProfile
              accountId:accountId
          completionHandler: ^(DSPermissionProfile* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->createPermissionProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***|  | [optional] 
 **permissionProfile** | [**DSPermissionProfile***](DSPermissionProfile*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSPermissionProfile***](DSPermissionProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
```objc
-(NSNumber*) deleteWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes the specified account.

This closes the specified account. You must be an account admin to close your account. Once closed, an account must be reopened by DocuSign.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Deletes the specified account.
[apiInstance deleteWithAccountId:accountId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->delete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBrand**
```objc
-(NSNumber*) deleteBrandWithAccountId: (NSString*) accountId
    brandId: (NSString*) brandId
        completionHandler: (void (^)(NSError* error)) handler;
```

Removes a brand.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Removes a brand.
[apiInstance deleteBrandWithAccountId:accountId
              brandId:brandId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->deleteBrand: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBrandLogoByType**
```objc
-(NSNumber*) deleteBrandLogoByTypeWithAccountId: (NSString*) accountId
    brandId: (NSString*) brandId
    logoType: (NSString*) logoType
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete one branding logo.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.
NSString* logoType = @"logoType_example"; // One of **Primary**, **Secondary** or **Email**.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Delete one branding logo.
[apiInstance deleteBrandLogoByTypeWithAccountId:accountId
              brandId:brandId
              logoType:logoType
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->deleteBrandLogoByType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 
 **logoType** | **NSString***| One of **Primary**, **Secondary** or **Email**. | 

### Return type

void (empty response body)

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
        completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler;
```

Deletes one or more brand profiles.

Deletes one or more brand profiles from an account. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSend`) must be set to **true** to use this call.

### Example 
```objc

DSBrandsRequest* brandsRequest = [[DSBrandsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Deletes one or more brand profiles.
[apiInstance deleteBrandsWithAccountId:brandsRequest
              accountId:accountId
          completionHandler: ^(DSBrandsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->deleteBrands: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brandsRequest** | [**DSBrandsRequest***](DSBrandsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBrandsResponse***](DSBrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCaptiveRecipient**
```objc
-(NSNumber*) deleteCaptiveRecipientWithAccountId: (DSCaptiveRecipientInformation*) captiveRecipientInformation
    accountId: (NSString*) accountId
    recipientPart: (NSString*) recipientPart
        completionHandler: (void (^)(DSCaptiveRecipientInformation* output, NSError* error)) handler;
```

Deletes the signature for one or more captive recipient records.

Deletes the signature for one or more captive recipient records; it is primarily used for testing. This provides a way to reset the signature associated with a client user ID so that a new signature can be created the next time the client user ID is used.

### Example 
```objc

DSCaptiveRecipientInformation* captiveRecipientInformation = [[DSCaptiveRecipientInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* recipientPart = @"recipientPart_example"; // 

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Deletes the signature for one or more captive recipient records.
[apiInstance deleteCaptiveRecipientWithAccountId:captiveRecipientInformation
              accountId:accountId
              recipientPart:recipientPart
          completionHandler: ^(DSCaptiveRecipientInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->deleteCaptiveRecipient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **captiveRecipientInformation** | [**DSCaptiveRecipientInformation***](DSCaptiveRecipientInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **recipientPart** | **NSString***|  | 

### Return type

[**DSCaptiveRecipientInformation***](DSCaptiveRecipientInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomField**
```objc
-(NSNumber*) deleteCustomFieldWithAccountId: (NSString*) applyToTemplates
    accountId: (NSString*) accountId
    customFieldId: (NSString*) customFieldId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete an existing account custom field.

### Example 
```objc

NSString* applyToTemplates = @"applyToTemplates_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* customFieldId = @"customFieldId_example"; // 

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Delete an existing account custom field.
[apiInstance deleteCustomFieldWithAccountId:applyToTemplates
              accountId:accountId
              customFieldId:customFieldId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->deleteCustomField: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applyToTemplates** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **customFieldId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteENoteConfiguration**
```objc
-(NSNumber*) deleteENoteConfigurationWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes configuration information for the eNote eOriginal integration.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Deletes configuration information for the eNote eOriginal integration.
[apiInstance deleteENoteConfigurationWithAccountId:accountId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->deleteENoteConfiguration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePermissionProfile**
```objc
-(NSNumber*) deletePermissionProfileWithAccountId: (NSString*) accountId
    permissionProfileId: (NSString*) permissionProfileId
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes a permissions profile within the specified account.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* permissionProfileId = @"permissionProfileId_example"; // 

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Deletes a permissions profile within the specified account.
[apiInstance deletePermissionProfileWithAccountId:accountId
              permissionProfileId:permissionProfileId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->deletePermissionProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **permissionProfileId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountInformation**
```objc
-(NSNumber*) getAccountInformationWithAccountId: (NSString*) includeAccountSettings
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSAccountInformation* output, NSError* error)) handler;
```

Retrieves the account information for the specified account.

Retrieves the account information for the specified account.  **Response** The `canUpgrade` property contains is a Boolean that indicates whether the account can be upgraded through the API. 

### Example 
```objc

NSString* includeAccountSettings = @"includeAccountSettings_example"; // When set to **true**, includes the account settings for the account in the response. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Retrieves the account information for the specified account.
[apiInstance getAccountInformationWithAccountId:includeAccountSettings
              accountId:accountId
          completionHandler: ^(DSAccountInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getAccountInformation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeAccountSettings** | **NSString***| When set to **true**, includes the account settings for the account in the response. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSAccountInformation***](DSAccountInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTabSettings**
```objc
-(NSNumber*) getAccountTabSettingsWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSTabAccountSettings* output, NSError* error)) handler;
```

Returns tab settings list for specified account

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Returns tab settings list for specified account
[apiInstance getAccountTabSettingsWithAccountId:accountId
          completionHandler: ^(DSTabAccountSettings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getAccountTabSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSTabAccountSettings***](DSTabAccountSettings.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllPaymentGatewayAccounts**
```objc
-(NSNumber*) getAllPaymentGatewayAccountsWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSPaymentGatewayAccountsInfo* output, NSError* error)) handler;
```

Get all payment gateway account for the provided accountId

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Get all payment gateway account for the provided accountId
[apiInstance getAllPaymentGatewayAccountsWithAccountId:accountId
          completionHandler: ^(DSPaymentGatewayAccountsInfo* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getAllPaymentGatewayAccounts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSPaymentGatewayAccountsInfo***](DSPaymentGatewayAccountsInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBillingCharges**
```objc
-(NSNumber*) getBillingChargesWithAccountId: (NSString*) includeCharges
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSBillingChargeResponse* output, NSError* error)) handler;
```

Gets list of recurring and usage charges for the account.

Retrieves the list of recurring and usage charges for the account. This can be used to determine the charge structure and usage of charge plan items.   Privileges required: account administrator 

### Example 
```objc

NSString* includeCharges = @"includeCharges_example"; // Specifies which billing charges to return. Valid values are:  * envelopes * seats  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets list of recurring and usage charges for the account.
[apiInstance getBillingChargesWithAccountId:includeCharges
              accountId:accountId
          completionHandler: ^(DSBillingChargeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getBillingCharges: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeCharges** | **NSString***| Specifies which billing charges to return. Valid values are:  * envelopes * seats  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBillingChargeResponse***](DSBillingChargeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrand**
```objc
-(NSNumber*) getBrandWithAccountId: (NSString*) includeExternalReferences
    includeLogos: (NSString*) includeLogos
    accountId: (NSString*) accountId
    brandId: (NSString*) brandId
        completionHandler: (void (^)(DSBrand* output, NSError* error)) handler;
```

Get information for a specific brand.

### Example 
```objc

NSString* includeExternalReferences = @"includeExternalReferences_example"; //  (optional)
NSString* includeLogos = @"includeLogos_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Get information for a specific brand.
[apiInstance getBrandWithAccountId:includeExternalReferences
              includeLogos:includeLogos
              accountId:accountId
              brandId:brandId
          completionHandler: ^(DSBrand* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getBrand: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeExternalReferences** | **NSString***|  | [optional] 
 **includeLogos** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 

### Return type

[**DSBrand***](DSBrand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandExportFile**
```objc
-(NSNumber*) getBrandExportFileWithAccountId: (NSString*) accountId
    brandId: (NSString*) brandId
        completionHandler: (void (^)(NSError* error)) handler;
```

Export a specific brand.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Export a specific brand.
[apiInstance getBrandExportFileWithAccountId:accountId
              brandId:brandId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getBrandExportFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandLogoByType**
```objc
-(NSNumber*) getBrandLogoByTypeWithAccountId: (NSString*) accountId
    brandId: (NSString*) brandId
    logoType: (NSString*) logoType
        completionHandler: (void (^)(NSError* error)) handler;
```

Obtains the specified image for a brand.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.
NSString* logoType = @"logoType_example"; // One of **Primary**, **Secondary** or **Email**.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Obtains the specified image for a brand.
[apiInstance getBrandLogoByTypeWithAccountId:accountId
              brandId:brandId
              logoType:logoType
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getBrandLogoByType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 
 **logoType** | **NSString***| One of **Primary**, **Secondary** or **Email**. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandResources**
```objc
-(NSNumber*) getBrandResourcesWithAccountId: (NSString*) accountId
    brandId: (NSString*) brandId
        completionHandler: (void (^)(DSBrandResourcesList* output, NSError* error)) handler;
```

Returns the specified account's list of branding resources (metadata).

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Returns the specified account's list of branding resources (metadata).
[apiInstance getBrandResourcesWithAccountId:accountId
              brandId:brandId
          completionHandler: ^(DSBrandResourcesList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getBrandResources: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 

### Return type

[**DSBrandResourcesList***](DSBrandResourcesList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandResourcesByContentType**
```objc
-(NSNumber*) getBrandResourcesByContentTypeWithAccountId: (NSString*) langcode
    returnMaster: (NSString*) returnMaster
    accountId: (NSString*) accountId
    brandId: (NSString*) brandId
    resourceContentType: (NSString*) resourceContentType
        completionHandler: (void (^)(NSError* error)) handler;
```

Returns the specified branding resource file.

### Example 
```objc

NSString* langcode = @"langcode_example"; //  (optional)
NSString* returnMaster = @"returnMaster_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.
NSString* resourceContentType = @"resourceContentType_example"; // 

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Returns the specified branding resource file.
[apiInstance getBrandResourcesByContentTypeWithAccountId:langcode
              returnMaster:returnMaster
              accountId:accountId
              brandId:brandId
              resourceContentType:resourceContentType
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getBrandResourcesByContentType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **langcode** | **NSString***|  | [optional] 
 **returnMaster** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 
 **resourceContentType** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsumerDisclosure**
```objc
-(NSNumber*) getConsumerDisclosureWithAccountId: (NSString*) accountId
    langCode: (NSString*) langCode
        completionHandler: (void (^)(DSConsumerDisclosure* output, NSError* error)) handler;
```

Gets the Electronic Record and Signature Disclosure.

Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, for the requested envelope recipient. This might be different than the current account disclosure depending on account settings, such as branding, and when the account disclosure was last updated. An optional query string can be included to return the language for the disclosure.  

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* langCode = @"langCode_example"; // The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to �browser� to automatically detect the browser language being used by the viewer and display the disclosure in that language.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets the Electronic Record and Signature Disclosure.
[apiInstance getConsumerDisclosureWithAccountId:accountId
              langCode:langCode
          completionHandler: ^(DSConsumerDisclosure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getConsumerDisclosure: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **langCode** | **NSString***| The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to �browser� to automatically detect the browser language being used by the viewer and display the disclosure in that language. | 

### Return type

[**DSConsumerDisclosure***](DSConsumerDisclosure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsumerDisclosureDefault**
```objc
-(NSNumber*) getConsumerDisclosureDefaultWithAccountId: (NSString*) langCode
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSConsumerDisclosure* output, NSError* error)) handler;
```

Gets the Electronic Record and Signature Disclosure for the account.

Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account. You can use an optional query string to set the language for the disclosure.

### Example 
```objc

NSString* langCode = @"langCode_example"; // Specifies the language used in the response. The supported languages, with the language value shown in parenthesis, are: Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk), and Vietnamese (vi).  Additionally, the value can be set to `browser` to automatically detect the browser language being used by the viewer and display the disclosure in that language.  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets the Electronic Record and Signature Disclosure for the account.
[apiInstance getConsumerDisclosureDefaultWithAccountId:langCode
              accountId:accountId
          completionHandler: ^(DSConsumerDisclosure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getConsumerDisclosureDefault: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **langCode** | **NSString***| Specifies the language used in the response. The supported languages, with the language value shown in parenthesis, are: Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk), and Vietnamese (vi).  Additionally, the value can be set to &#x60;browser&#x60; to automatically detect the browser language being used by the viewer and display the disclosure in that language.  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSConsumerDisclosure***](DSConsumerDisclosure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getENoteConfiguration**
```objc
-(NSNumber*) getENoteConfigurationWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSENoteConfiguration* output, NSError* error)) handler;
```

Returns the configuration information for the eNote eOriginal integration.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Returns the configuration information for the eNote eOriginal integration.
[apiInstance getENoteConfigurationWithAccountId:accountId
          completionHandler: ^(DSENoteConfiguration* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getENoteConfiguration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSENoteConfiguration***](DSENoteConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPasswordRules**
```objc
-(NSNumber*) getPasswordRulesWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSAccountPasswordRules* output, NSError* error)) handler;
```

Get the password rules

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Get the password rules
[apiInstance getPasswordRulesWithAccountId:accountId
          completionHandler: ^(DSAccountPasswordRules* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getPasswordRules: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSAccountPasswordRules***](DSAccountPasswordRules.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPasswordRules_0**
```objc
-(NSNumber*) getPasswordRules_1WithCompletionHandler: 
        (void (^)(DSUserPasswordRules* output, NSError* error)) handler;
```

Get membership account password rules

### Example 
```objc


DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Get membership account password rules
[apiInstance getPasswordRules_1WithCompletionHandler: 
          ^(DSUserPasswordRules* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getPasswordRules_0: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DSUserPasswordRules***](DSUserPasswordRules.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPermissionProfile**
```objc
-(NSNumber*) getPermissionProfileWithAccountId: (NSString*) include
    accountId: (NSString*) accountId
    permissionProfileId: (NSString*) permissionProfileId
        completionHandler: (void (^)(DSPermissionProfile* output, NSError* error)) handler;
```

Returns a permissions profile in the specified account.

### Example 
```objc

NSString* include = @"include_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* permissionProfileId = @"permissionProfileId_example"; // 

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Returns a permissions profile in the specified account.
[apiInstance getPermissionProfileWithAccountId:include
              accountId:accountId
              permissionProfileId:permissionProfileId
          completionHandler: ^(DSPermissionProfile* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getPermissionProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **permissionProfileId** | **NSString***|  | 

### Return type

[**DSPermissionProfile***](DSPermissionProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProvisioning**
```objc
-(NSNumber*) getProvisioningWithCompletionHandler: 
        (void (^)(DSProvisioningInformation* output, NSError* error)) handler;
```

Retrieves the account provisioning information for the account.

Retrieves the account provisioning information for the account.

### Example 
```objc


DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Retrieves the account provisioning information for the account.
[apiInstance getProvisioningWithCompletionHandler: 
          ^(DSProvisioningInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getProvisioning: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DSProvisioningInformation***](DSProvisioningInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSupportedLanguages**
```objc
-(NSNumber*) getSupportedLanguagesWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSSupportedLanguages* output, NSError* error)) handler;
```

Gets list of supported languages for recipient language setting.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets list of supported languages for recipient language setting.
[apiInstance getSupportedLanguagesWithAccountId:accountId
          completionHandler: ^(DSSupportedLanguages* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getSupportedLanguages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSSupportedLanguages***](DSSupportedLanguages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatermark**
```objc
-(NSNumber*) getWatermarkWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSWatermark* output, NSError* error)) handler;
```

Get watermark information.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Get watermark information.
[apiInstance getWatermarkWithAccountId:accountId
          completionHandler: ^(DSWatermark* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getWatermark: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSWatermark***](DSWatermark.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatermarkPreview**
```objc
-(NSNumber*) getWatermarkPreviewWithAccountId: (DSWatermark*) watermark
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSWatermark* output, NSError* error)) handler;
```

Get watermark preview.

### Example 
```objc

DSWatermark* watermark = [[DSWatermark alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Get watermark preview.
[apiInstance getWatermarkPreviewWithAccountId:watermark
              accountId:accountId
          completionHandler: ^(DSWatermark* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->getWatermarkPreview: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watermark** | [**DSWatermark***](DSWatermark*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSWatermark***](DSWatermark.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBrands**
```objc
-(NSNumber*) listBrandsWithAccountId: (NSString*) excludeDistributorBrand
    includeLogos: (NSString*) includeLogos
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler;
```

Gets a list of brand profiles.

Retrieves the list of brand profiles associated with the account and the default brand profiles. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSend`)  must be set to **true** for the account to use this call.

### Example 
```objc

NSString* excludeDistributorBrand = @"excludeDistributorBrand_example"; // When set to **true**, excludes distributor brand information from the response set. (optional)
NSString* includeLogos = @"includeLogos_example"; // When set to **true**, returns the logos associated with the brand. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets a list of brand profiles.
[apiInstance listBrandsWithAccountId:excludeDistributorBrand
              includeLogos:includeLogos
              accountId:accountId
          completionHandler: ^(DSBrandsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->listBrands: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **excludeDistributorBrand** | **NSString***| When set to **true**, excludes distributor brand information from the response set. | [optional] 
 **includeLogos** | **NSString***| When set to **true**, returns the logos associated with the brand. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBrandsResponse***](DSBrandsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomFields**
```objc
-(NSNumber*) listCustomFieldsWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Gets a list of custom fields associated with the account.

Retrieves a list of envelope custom fields associated with the account. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.  There are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. The list custom field lets the sender select the value of the field from a list you provide.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets a list of custom fields associated with the account.
[apiInstance listCustomFieldsWithAccountId:accountId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->listCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSCustomFields***](DSCustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPermissions**
```objc
-(NSNumber*) listPermissionsWithAccountId: (NSString*) include
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSPermissionProfileInformation* output, NSError* error)) handler;
```

Gets a list of permission profiles.

Retrieves a list of Permission Profiles. Permission Profiles are a standard set of user permissions that you can apply to individual users or users in a Group. This makes it easier to manage user permissions for a large number of users, without having to change permissions on a user-by-user basis.  Currently, Permission Profiles can only be created and modified in the DocuSign console.

### Example 
```objc

NSString* include = @"include_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets a list of permission profiles.
[apiInstance listPermissionsWithAccountId:include
              accountId:accountId
          completionHandler: ^(DSPermissionProfileInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->listPermissions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSPermissionProfileInformation***](DSPermissionProfileInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecipientNamesByEmail**
```objc
-(NSNumber*) listRecipientNamesByEmailWithAccountId: (NSString*) email
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSRecipientNamesResponse* output, NSError* error)) handler;
```

Gets recipient names associated with an email address.

Retrieves a list of recipients in the specified account that are associated with a email address supplied in the query string.

### Example 
```objc

NSString* email = @"email_example"; // The email address for the user (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets recipient names associated with an email address.
[apiInstance listRecipientNamesByEmailWithAccountId:email
              accountId:accountId
          completionHandler: ^(DSRecipientNamesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->listRecipientNamesByEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| The email address for the user | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSRecipientNamesResponse***](DSRecipientNamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSettings**
```objc
-(NSNumber*) listSettingsWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSAccountSettingsInformation* output, NSError* error)) handler;
```

Gets account settings information.

Retrieves the account settings information for the specified account.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets account settings information.
[apiInstance listSettingsWithAccountId:accountId
          completionHandler: ^(DSAccountSettingsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->listSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSAccountSettingsInformation***](DSAccountSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSharedAccess**
```objc
-(NSNumber*) listSharedAccessWithAccountId: (NSString*) count
    envelopesNotSharedUserStatus: (NSString*) envelopesNotSharedUserStatus
    folderIds: (NSString*) folderIds
    itemType: (NSString*) itemType
    searchText: (NSString*) searchText
    shared: (NSString*) shared
    startPosition: (NSString*) startPosition
    userIds: (NSString*) userIds
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSAccountSharedAccess* output, NSError* error)) handler;
```

Reserved: Gets the shared item status for one or more users.

Reserved: Retrieves shared item status for one or more users and types of items.  Users with account administration privileges can retrieve shared access information for all account users. Users without account administrator privileges can only retrieve shared access information for themselves and the returned information is limited to the retrieving the status of all members of the account that are sharing their folders to the user. This is equivalent to setting the shared=shared_from.

### Example 
```objc

NSString* count = @"count_example"; // Specifies maximum number of results included in the response. If no value is specified, this defaults to 1000. (optional)
NSString* envelopesNotSharedUserStatus = @"envelopesNotSharedUserStatus_example"; //  (optional)
NSString* folderIds = @"folderIds_example"; //  (optional)
NSString* itemType = @"itemType_example"; // Specifies the type of shared item being requested. The accepted values are: -envelopes: returns information about envelope sharing between users. (optional)
NSString* searchText = @"searchText_example"; // This can be used to filter user names in the response. The wild-card ‘*’ (asterisk) can be used around the string. (optional)
NSString* shared = @"shared_example"; // Specifies which users should be included in the response. Multiple values can be used in the query by using a comma separated list of shared values. If the requestor does not have account administrator privileges, the shared_to value is used. Requestors that do not have account administrator privileges can only use the shared_to, any other setting will result in an error. The accepted values are:  -not_shared: Returns account users that the specified item type is not being shared with and that are not sharing the specified item type with the user.  User X (Share) X Account user  -shared_to: Returns account users that the specified item type is not being shared with and who are sharing the specified item type with the user (only shared to the user).  User X (Share) Account user  -shared_from: Returns account users that the specified item type is being shared with and who are not sharing the specified item type with the user (only shared from the user).  User (Share) >> Account user  -shared_to_and_from: Returns account users that the specified item type is being shared with and who are sharing the specified item type with the user.  User << (Share) >> Account user (optional)
NSString* startPosition = @"startPosition_example"; // If the response set exceeds Count, this can be used to specify that the method should return users starting at the specified index. The first index is 0, and should be used in the first GET call. Typically this number is a multiple of Count. If no value is specified, this defaults to be 0.  (optional)
NSString* userIds = @"userIds_example"; // A comma separated list of userIds for whom the shared item information is being requested.  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Reserved: Gets the shared item status for one or more users.
[apiInstance listSharedAccessWithAccountId:count
              envelopesNotSharedUserStatus:envelopesNotSharedUserStatus
              folderIds:folderIds
              itemType:itemType
              searchText:searchText
              shared:shared
              startPosition:startPosition
              userIds:userIds
              accountId:accountId
          completionHandler: ^(DSAccountSharedAccess* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->listSharedAccess: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***| Specifies maximum number of results included in the response. If no value is specified, this defaults to 1000. | [optional] 
 **envelopesNotSharedUserStatus** | **NSString***|  | [optional] 
 **folderIds** | **NSString***|  | [optional] 
 **itemType** | **NSString***| Specifies the type of shared item being requested. The accepted values are: -envelopes: returns information about envelope sharing between users. | [optional] 
 **searchText** | **NSString***| This can be used to filter user names in the response. The wild-card ‘*’ (asterisk) can be used around the string. | [optional] 
 **shared** | **NSString***| Specifies which users should be included in the response. Multiple values can be used in the query by using a comma separated list of shared values. If the requestor does not have account administrator privileges, the shared_to value is used. Requestors that do not have account administrator privileges can only use the shared_to, any other setting will result in an error. The accepted values are:  -not_shared: Returns account users that the specified item type is not being shared with and that are not sharing the specified item type with the user.  User X (Share) X Account user  -shared_to: Returns account users that the specified item type is not being shared with and who are sharing the specified item type with the user (only shared to the user).  User X (Share) Account user  -shared_from: Returns account users that the specified item type is being shared with and who are not sharing the specified item type with the user (only shared from the user).  User (Share) &gt;&gt; Account user  -shared_to_and_from: Returns account users that the specified item type is being shared with and who are sharing the specified item type with the user.  User &lt;&lt; (Share) &gt;&gt; Account user | [optional] 
 **startPosition** | **NSString***| If the response set exceeds Count, this can be used to specify that the method should return users starting at the specified index. The first index is 0, and should be used in the first GET call. Typically this number is a multiple of Count. If no value is specified, this defaults to be 0.  | [optional] 
 **userIds** | **NSString***| A comma separated list of userIds for whom the shared item information is being requested.  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSAccountSharedAccess***](DSAccountSharedAccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSignatureProviders**
```objc
-(NSNumber*) listSignatureProvidersWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSAccountSignatureProviders* output, NSError* error)) handler;
```

Returns Account available signature providers for specified account.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Returns Account available signature providers for specified account.
[apiInstance listSignatureProvidersWithAccountId:accountId
          completionHandler: ^(DSAccountSignatureProviders* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->listSignatureProviders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSAccountSignatureProviders***](DSAccountSignatureProviders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUnsupportedFileTypes**
```objc
-(NSNumber*) listUnsupportedFileTypesWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSFileTypeList* output, NSError* error)) handler;
```

Gets a list of unsupported file types.

Retrieves a list of file types (mime-types and file-extensions) that are not supported for upload through the DocuSign system.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Gets a list of unsupported file types.
[apiInstance listUnsupportedFileTypesWithAccountId:accountId
          completionHandler: ^(DSFileTypeList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->listUnsupportedFileTypes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSFileTypeList***](DSFileTypeList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccountTabSettings**
```objc
-(NSNumber*) updateAccountTabSettingsWithAccountId: (DSTabAccountSettings*) tabAccountSettings
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSTabAccountSettings* output, NSError* error)) handler;
```

Modifies tab settings for specified account

### Example 
```objc

DSTabAccountSettings* tabAccountSettings = [[DSTabAccountSettings alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Modifies tab settings for specified account
[apiInstance updateAccountTabSettingsWithAccountId:tabAccountSettings
              accountId:accountId
          completionHandler: ^(DSTabAccountSettings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateAccountTabSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tabAccountSettings** | [**DSTabAccountSettings***](DSTabAccountSettings*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSTabAccountSettings***](DSTabAccountSettings.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBrand**
```objc
-(NSNumber*) updateBrandWithAccountId: (DSBrand*) brand
    accountId: (NSString*) accountId
    brandId: (NSString*) brandId
        completionHandler: (void (^)(DSBrand* output, NSError* error)) handler;
```

Updates an existing brand.

### Example 
```objc

DSBrand* brand = [[DSBrand alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Updates an existing brand.
[apiInstance updateBrandWithAccountId:brand
              accountId:accountId
              brandId:brandId
          completionHandler: ^(DSBrand* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateBrand: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brand** | [**DSBrand***](DSBrand*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 

### Return type

[**DSBrand***](DSBrand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBrandLogoByType**
```objc
-(NSNumber*) updateBrandLogoByTypeWithAccountId: (NSString*) accountId
    brandId: (NSString*) brandId
    logoType: (NSString*) logoType
        completionHandler: (void (^)(NSError* error)) handler;
```

Put one branding logo.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.
NSString* logoType = @"logoType_example"; // One of **Primary**, **Secondary** or **Email**.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Put one branding logo.
[apiInstance updateBrandLogoByTypeWithAccountId:accountId
              brandId:brandId
              logoType:logoType
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateBrandLogoByType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 
 **logoType** | **NSString***| One of **Primary**, **Secondary** or **Email**. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBrandResourcesByContentType**
```objc
-(NSNumber*) updateBrandResourcesByContentTypeWithAccountId: (NSString*) accountId
    brandId: (NSString*) brandId
    resourceContentType: (NSString*) resourceContentType
        completionHandler: (void (^)(DSBrandResources* output, NSError* error)) handler;
```

Uploads a branding resource file.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* brandId = @"brandId_example"; // The unique identifier of a brand.
NSString* resourceContentType = @"resourceContentType_example"; // 

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Uploads a branding resource file.
[apiInstance updateBrandResourcesByContentTypeWithAccountId:accountId
              brandId:brandId
              resourceContentType:resourceContentType
          completionHandler: ^(DSBrandResources* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateBrandResourcesByContentType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **brandId** | **NSString***| The unique identifier of a brand. | 
 **resourceContentType** | **NSString***|  | 

### Return type

[**DSBrandResources***](DSBrandResources.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConsumerDisclosure**
```objc
-(NSNumber*) updateConsumerDisclosureWithAccountId: (NSString*) includeMetadata
    consumerDisclosure: (DSConsumerDisclosure*) consumerDisclosure
    accountId: (NSString*) accountId
    langCode: (NSString*) langCode
        completionHandler: (void (^)(DSConsumerDisclosure* output, NSError* error)) handler;
```

Update Consumer Disclosure.

### Example 
```objc

NSString* includeMetadata = @"includeMetadata_example"; //  (optional)
DSConsumerDisclosure* consumerDisclosure = [[DSConsumerDisclosure alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* langCode = @"langCode_example"; // The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to �browser� to automatically detect the browser language being used by the viewer and display the disclosure in that language.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Update Consumer Disclosure.
[apiInstance updateConsumerDisclosureWithAccountId:includeMetadata
              consumerDisclosure:consumerDisclosure
              accountId:accountId
              langCode:langCode
          completionHandler: ^(DSConsumerDisclosure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateConsumerDisclosure: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeMetadata** | **NSString***|  | [optional] 
 **consumerDisclosure** | [**DSConsumerDisclosure***](DSConsumerDisclosure*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **langCode** | **NSString***| The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to �browser� to automatically detect the browser language being used by the viewer and display the disclosure in that language. | 

### Return type

[**DSConsumerDisclosure***](DSConsumerDisclosure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomField**
```objc
-(NSNumber*) updateCustomFieldWithAccountId: (NSString*) applyToTemplates
    customField: (DSCustomField*) customField
    accountId: (NSString*) accountId
    customFieldId: (NSString*) customFieldId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Updates an existing account custom field.

### Example 
```objc

NSString* applyToTemplates = @"applyToTemplates_example"; //  (optional)
DSCustomField* customField = [[DSCustomField alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* customFieldId = @"customFieldId_example"; // 

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Updates an existing account custom field.
[apiInstance updateCustomFieldWithAccountId:applyToTemplates
              customField:customField
              accountId:accountId
              customFieldId:customFieldId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateCustomField: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applyToTemplates** | **NSString***|  | [optional] 
 **customField** | [**DSCustomField***](DSCustomField*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **customFieldId** | **NSString***|  | 

### Return type

[**DSCustomFields***](DSCustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateENoteConfiguration**
```objc
-(NSNumber*) updateENoteConfigurationWithAccountId: (DSENoteConfiguration*) eNoteConfiguration
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSENoteConfiguration* output, NSError* error)) handler;
```

Updates configuration information for the eNote eOriginal integration.

### Example 
```objc

DSENoteConfiguration* eNoteConfiguration = [[DSENoteConfiguration alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Updates configuration information for the eNote eOriginal integration.
[apiInstance updateENoteConfigurationWithAccountId:eNoteConfiguration
              accountId:accountId
          completionHandler: ^(DSENoteConfiguration* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateENoteConfiguration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eNoteConfiguration** | [**DSENoteConfiguration***](DSENoteConfiguration*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSENoteConfiguration***](DSENoteConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePasswordRules**
```objc
-(NSNumber*) updatePasswordRulesWithAccountId: (DSAccountPasswordRules*) accountPasswordRules
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSAccountPasswordRules* output, NSError* error)) handler;
```

Update the password rules

### Example 
```objc

DSAccountPasswordRules* accountPasswordRules = [[DSAccountPasswordRules alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Update the password rules
[apiInstance updatePasswordRulesWithAccountId:accountPasswordRules
              accountId:accountId
          completionHandler: ^(DSAccountPasswordRules* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updatePasswordRules: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountPasswordRules** | [**DSAccountPasswordRules***](DSAccountPasswordRules*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSAccountPasswordRules***](DSAccountPasswordRules.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePermissionProfile**
```objc
-(NSNumber*) updatePermissionProfileWithAccountId: (NSString*) include
    permissionProfile: (DSPermissionProfile*) permissionProfile
    accountId: (NSString*) accountId
    permissionProfileId: (NSString*) permissionProfileId
        completionHandler: (void (^)(DSPermissionProfile* output, NSError* error)) handler;
```

Updates a permission profile within the specified account.

### Example 
```objc

NSString* include = @"include_example"; //  (optional)
DSPermissionProfile* permissionProfile = [[DSPermissionProfile alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* permissionProfileId = @"permissionProfileId_example"; // 

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Updates a permission profile within the specified account.
[apiInstance updatePermissionProfileWithAccountId:include
              permissionProfile:permissionProfile
              accountId:accountId
              permissionProfileId:permissionProfileId
          completionHandler: ^(DSPermissionProfile* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updatePermissionProfile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***|  | [optional] 
 **permissionProfile** | [**DSPermissionProfile***](DSPermissionProfile*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **permissionProfileId** | **NSString***|  | 

### Return type

[**DSPermissionProfile***](DSPermissionProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSettings**
```objc
-(NSNumber*) updateSettingsWithAccountId: (DSAccountSettingsInformation*) accountSettingsInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the account settings for an account.

Updates the account settings for the specified account.

### Example 
```objc

DSAccountSettingsInformation* accountSettingsInformation = [[DSAccountSettingsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Updates the account settings for an account.
[apiInstance updateSettingsWithAccountId:accountSettingsInformation
              accountId:accountId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountSettingsInformation** | [**DSAccountSettingsInformation***](DSAccountSettingsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSharedAccess**
```objc
-(NSNumber*) updateSharedAccessWithAccountId: (NSString*) itemType
    userIds: (NSString*) userIds
    accountSharedAccess: (DSAccountSharedAccess*) accountSharedAccess
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSAccountSharedAccess* output, NSError* error)) handler;
```

Reserved: Sets the shared access information for users.

Reserved: Sets the shared access information for one or more users.

### Example 
```objc

NSString* itemType = @"itemType_example"; //  (optional)
NSString* userIds = @"userIds_example"; //  (optional)
DSAccountSharedAccess* accountSharedAccess = [[DSAccountSharedAccess alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Reserved: Sets the shared access information for users.
[apiInstance updateSharedAccessWithAccountId:itemType
              userIds:userIds
              accountSharedAccess:accountSharedAccess
              accountId:accountId
          completionHandler: ^(DSAccountSharedAccess* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateSharedAccess: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemType** | **NSString***|  | [optional] 
 **userIds** | **NSString***|  | [optional] 
 **accountSharedAccess** | [**DSAccountSharedAccess***](DSAccountSharedAccess*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSAccountSharedAccess***](DSAccountSharedAccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWatermark**
```objc
-(NSNumber*) updateWatermarkWithAccountId: (DSWatermark*) watermark
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSWatermark* output, NSError* error)) handler;
```

Update watermark information.

### Example 
```objc

DSWatermark* watermark = [[DSWatermark alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSAccountsApi*apiInstance = [[DSAccountsApi alloc] init];

// Update watermark information.
[apiInstance updateWatermarkWithAccountId:watermark
              accountId:accountId
          completionHandler: ^(DSWatermark* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSAccountsApi->updateWatermark: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watermark** | [**DSWatermark***](DSWatermark*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSWatermark***](DSWatermark.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

