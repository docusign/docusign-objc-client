# DSTemplatesApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomFields**](DSTemplatesApi.md#createcustomfields) | **POST** /v2/accounts/{accountId}/templates/{templateId}/custom_fields | Creates custom document fields in an existing template document.
[**createDocumentFields**](DSTemplatesApi.md#createdocumentfields) | **POST** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Creates custom document fields in an existing template document.
[**createEditView**](DSTemplatesApi.md#createeditview) | **POST** /v2/accounts/{accountId}/templates/{templateId}/views/edit | Provides a URL to start an edit view of the Template UI
[**createLock**](DSTemplatesApi.md#createlock) | **POST** /v2/accounts/{accountId}/templates/{templateId}/lock | Lock a template.
[**createRecipients**](DSTemplatesApi.md#createrecipients) | **POST** /v2/accounts/{accountId}/templates/{templateId}/recipients | Adds tabs for a recipient.
[**createTabs**](DSTemplatesApi.md#createtabs) | **POST** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Adds tabs for a recipient.
[**createTemplate**](DSTemplatesApi.md#createtemplate) | **POST** /v2/accounts/{accountId}/templates | Creates an envelope from a template.
[**deleteBulkRecipients**](DSTemplatesApi.md#deletebulkrecipients) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Deletes the bulk recipient list on a template.
[**deleteCustomFields**](DSTemplatesApi.md#deletecustomfields) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/custom_fields | Deletes envelope custom fields in a template.
[**deleteDocumentFields**](DSTemplatesApi.md#deletedocumentfields) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Deletes custom document fields from an existing template document.
[**deleteDocumentPage**](DSTemplatesApi.md#deletedocumentpage) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber} | Deletes a page from a document in an template.
[**deleteDocuments**](DSTemplatesApi.md#deletedocuments) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/documents | Deletes documents from a template.
[**deleteGroupShare**](DSTemplatesApi.md#deletegroupshare) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/{templatePart} | Removes a member group&#39;s sharing permissions for a template.
[**deleteLock**](DSTemplatesApi.md#deletelock) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/lock | Deletes a template lock.
[**deleteRecipient**](DSTemplatesApi.md#deleterecipient) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId} | Deletes the specified recipient file from a template.
[**deleteRecipients**](DSTemplatesApi.md#deleterecipients) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/recipients | Deletes recipients from a template.
[**deleteTabs**](DSTemplatesApi.md#deletetabs) | **DELETE** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Deletes the tabs associated with a recipient in a template.
[**get**](DSTemplatesApi.md#get) | **GET** /v2/accounts/{accountId}/templates/{templateId} | Gets a list of templates for a specified account.
[**getDocument**](DSTemplatesApi.md#getdocument) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId} | Gets PDF documents from a template.
[**getDocumentPageImage**](DSTemplatesApi.md#getdocumentpageimage) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image | Gets a page image from a template for display.
[**getDocumentTabs**](DSTemplatesApi.md#getdocumenttabs) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/tabs | Returns tabs on the document.
[**getLock**](DSTemplatesApi.md#getlock) | **GET** /v2/accounts/{accountId}/templates/{templateId}/lock | Gets template lock information.
[**getNotificationSettings**](DSTemplatesApi.md#getnotificationsettings) | **GET** /v2/accounts/{accountId}/templates/{templateId}/notification | Gets template notification information.
[**getPageTabs**](DSTemplatesApi.md#getpagetabs) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/tabs | Returns tabs on the specified page.
[**getPages**](DSTemplatesApi.md#getpages) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages | Returns document page image(s) based on input.
[**listBulkRecipients**](DSTemplatesApi.md#listbulkrecipients) | **GET** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Gets the bulk recipient file from a template.
[**listCustomFields**](DSTemplatesApi.md#listcustomfields) | **GET** /v2/accounts/{accountId}/templates/{templateId}/custom_fields | Gets the custom document fields from a template.
[**listDocumentFields**](DSTemplatesApi.md#listdocumentfields) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Gets the custom document fields for a an existing template document.
[**listDocuments**](DSTemplatesApi.md#listdocuments) | **GET** /v2/accounts/{accountId}/templates/{templateId}/documents | Gets a list of documents associated with a template.
[**listRecipients**](DSTemplatesApi.md#listrecipients) | **GET** /v2/accounts/{accountId}/templates/{templateId}/recipients | Gets recipient information from a template.
[**listTabs**](DSTemplatesApi.md#listtabs) | **GET** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Gets the tabs information for a signer or sign-in-person recipient in a template.
[**listTemplates**](DSTemplatesApi.md#listtemplates) | **GET** /v2/accounts/{accountId}/templates | Gets the definition of a template.
[**rotateDocumentPage**](DSTemplatesApi.md#rotatedocumentpage) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image | Rotates page image from a template for display.
[**update**](DSTemplatesApi.md#update) | **PUT** /v2/accounts/{accountId}/templates/{templateId} | Updates an existing template.
[**updateBulkRecipients**](DSTemplatesApi.md#updatebulkrecipients) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Adds or replaces the bulk recipients list in a template.
[**updateCustomFields**](DSTemplatesApi.md#updatecustomfields) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/custom_fields | Updates envelope custom fields in a template.
[**updateDocument**](DSTemplatesApi.md#updatedocument) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId} | Adds a document to a template document.
[**updateDocumentFields**](DSTemplatesApi.md#updatedocumentfields) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Updates existing custom document fields in an existing template document.
[**updateDocuments**](DSTemplatesApi.md#updatedocuments) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/documents | Adds documents to a template document.
[**updateGroupShare**](DSTemplatesApi.md#updategroupshare) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/{templatePart} | Shares a template with a group
[**updateLock**](DSTemplatesApi.md#updatelock) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/lock | Updates a template lock.
[**updateNotificationSettings**](DSTemplatesApi.md#updatenotificationsettings) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/notification | Updates the notification  structure for an existing template.
[**updateRecipients**](DSTemplatesApi.md#updaterecipients) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/recipients | Updates recipients in a template.
[**updateTabs**](DSTemplatesApi.md#updatetabs) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Updates the tabs for a recipient.


# **createCustomFields**
```objc
-(NSNumber*) createCustomFieldsWithAccountId: (DSTemplateCustomFields*) templateCustomFields
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Creates custom document fields in an existing template document.

Creates custom document fields in an existing template document.

### Example 
```objc

DSTemplateCustomFields* templateCustomFields = [[DSTemplateCustomFields alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Creates custom document fields in an existing template document.
[apiInstance createCustomFieldsWithAccountId:templateCustomFields
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->createCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateCustomFields** | [**DSTemplateCustomFields***](DSTemplateCustomFields*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSCustomFields***](DSCustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDocumentFields**
```objc
-(NSNumber*) createDocumentFieldsWithAccountId: (DSDocumentFieldsInformation*) documentFieldsInformation
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler;
```

Creates custom document fields in an existing template document.

Creates custom document fields in an existing template document.

### Example 
```objc

DSDocumentFieldsInformation* documentFieldsInformation = [[DSDocumentFieldsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Creates custom document fields in an existing template document.
[apiInstance createDocumentFieldsWithAccountId:documentFieldsInformation
              accountId:accountId
              templateId:templateId
              documentId:documentId
          completionHandler: ^(DSDocumentFieldsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->createDocumentFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentFieldsInformation** | [**DSDocumentFieldsInformation***](DSDocumentFieldsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSDocumentFieldsInformation***](DSDocumentFieldsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEditView**
```objc
-(NSNumber*) createEditViewWithAccountId: (DSReturnUrlRequest*) returnUrlRequest
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSViewUrl* output, NSError* error)) handler;
```

Provides a URL to start an edit view of the Template UI

### Example 
```objc

DSReturnUrlRequest* returnUrlRequest = [[DSReturnUrlRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Provides a URL to start an edit view of the Template UI
[apiInstance createEditViewWithAccountId:returnUrlRequest
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSViewUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->createEditView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnUrlRequest** | [**DSReturnUrlRequest***](DSReturnUrlRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSViewUrl***](DSViewUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createLock**
```objc
-(NSNumber*) createLockWithAccountId: (DSLockRequest*) lockRequest
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler;
```

Lock a template.

Locks the specified template, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the template.  ###### Note: Users must have envelope locking capability enabled to use this function (the userSetting property `canLockEnvelopes` must be set to **true** for the user).

### Example 
```objc

DSLockRequest* lockRequest = [[DSLockRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Lock a template.
[apiInstance createLockWithAccountId:lockRequest
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSLockInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->createLock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lockRequest** | [**DSLockRequest***](DSLockRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSLockInformation***](DSLockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipients**
```objc
-(NSNumber*) createRecipientsWithAccountId: (NSString*) resendEnvelope
    templateRecipients: (DSTemplateRecipients*) templateRecipients
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler;
```

Adds tabs for a recipient.

Adds one or more recipients to a template.

### Example 
```objc

NSString* resendEnvelope = @"resendEnvelope_example"; //  (optional)
DSTemplateRecipients* templateRecipients = [[DSTemplateRecipients alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Adds tabs for a recipient.
[apiInstance createRecipientsWithAccountId:resendEnvelope
              templateRecipients:templateRecipients
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->createRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendEnvelope** | **NSString***|  | [optional] 
 **templateRecipients** | [**DSTemplateRecipients***](DSTemplateRecipients*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSRecipients***](DSRecipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTabs**
```objc
-(NSNumber*) createTabsWithAccountId: (DSTemplateTabs*) templateTabs
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Adds tabs for a recipient.

Adds one or more tabs for a recipient.

### Example 
```objc

DSTemplateTabs* templateTabs = [[DSTemplateTabs alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Adds tabs for a recipient.
[apiInstance createTabsWithAccountId:templateTabs
              accountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->createTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateTabs** | [**DSTemplateTabs***](DSTemplateTabs*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTemplate**
```objc
-(NSNumber*) createTemplateWithAccountId: (DSEnvelopeTemplate*) envelopeTemplate
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSTemplateSummary* output, NSError* error)) handler;
```

Creates an envelope from a template.

Creates a template definition using a multipart request.  ###Template Email Subject Merge Fields  Call this endpoint to insert a recipient name and email address merge fields into the email subject line when creating or sending from a template.  The merge fields, based on the recipient’s role name, are added to the `emailSubject` property when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient. ###### Note: If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.  To add a recipient’s name in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  [[<roleName>_UserName]]  Example:  `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`  To add a recipient’s email address in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  [[<roleName>_Email]]  Example:  `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`   In both cases the <roleName> is the recipient's contents of the `roleName` property in the template.  For cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.

### Example 
```objc

DSEnvelopeTemplate* envelopeTemplate = [[DSEnvelopeTemplate alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Creates an envelope from a template.
[apiInstance createTemplateWithAccountId:envelopeTemplate
              accountId:accountId
          completionHandler: ^(DSTemplateSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->createTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **envelopeTemplate** | [**DSEnvelopeTemplate***](DSEnvelopeTemplate*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSTemplateSummary***](DSTemplateSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBulkRecipients**
```objc
-(NSNumber*) deleteBulkRecipientsWithAccountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSBulkRecipientsUpdateResponse* output, NSError* error)) handler;
```

Deletes the bulk recipient list on a template.

Deletes the bulk recipient list on a template.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes the bulk recipient list on a template.
[apiInstance deleteBulkRecipientsWithAccountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSBulkRecipientsUpdateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteBulkRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSBulkRecipientsUpdateResponse***](DSBulkRecipientsUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomFields**
```objc
-(NSNumber*) deleteCustomFieldsWithAccountId: (DSTemplateCustomFields*) templateCustomFields
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Deletes envelope custom fields in a template.

Deletes envelope custom fields in a template.

### Example 
```objc

DSTemplateCustomFields* templateCustomFields = [[DSTemplateCustomFields alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes envelope custom fields in a template.
[apiInstance deleteCustomFieldsWithAccountId:templateCustomFields
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateCustomFields** | [**DSTemplateCustomFields***](DSTemplateCustomFields*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSCustomFields***](DSCustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocumentFields**
```objc
-(NSNumber*) deleteDocumentFieldsWithAccountId: (DSDocumentFieldsInformation*) documentFieldsInformation
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler;
```

Deletes custom document fields from an existing template document.

Deletes custom document fields from an existing template document.

### Example 
```objc

DSDocumentFieldsInformation* documentFieldsInformation = [[DSDocumentFieldsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes custom document fields from an existing template document.
[apiInstance deleteDocumentFieldsWithAccountId:documentFieldsInformation
              accountId:accountId
              templateId:templateId
              documentId:documentId
          completionHandler: ^(DSDocumentFieldsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteDocumentFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentFieldsInformation** | [**DSDocumentFieldsInformation***](DSDocumentFieldsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSDocumentFieldsInformation***](DSDocumentFieldsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocumentPage**
```objc
-(NSNumber*) deleteDocumentPageWithAccountId: (DSPageRequest*) pageRequest
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
    pageNumber: (NSString*) pageNumber
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes a page from a document in an template.

Deletes a page from a document in a template based on the page number.

### Example 
```objc

DSPageRequest* pageRequest = [[DSPageRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* pageNumber = @"pageNumber_example"; // The page number being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes a page from a document in an template.
[apiInstance deleteDocumentPageWithAccountId:pageRequest
              accountId:accountId
              templateId:templateId
              documentId:documentId
              pageNumber:pageNumber
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteDocumentPage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageRequest** | [**DSPageRequest***](DSPageRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 
 **pageNumber** | **NSString***| The page number being accessed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocuments**
```objc
-(NSNumber*) deleteDocumentsWithAccountId: (DSEnvelopeDefinition*) envelopeDefinition
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error)) handler;
```

Deletes documents from a template.

Deletes one or more documents from an existing template.

### Example 
```objc

DSEnvelopeDefinition* envelopeDefinition = [[DSEnvelopeDefinition alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes documents from a template.
[apiInstance deleteDocumentsWithAccountId:envelopeDefinition
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSTemplateDocumentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteDocuments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **envelopeDefinition** | [**DSEnvelopeDefinition***](DSEnvelopeDefinition*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSTemplateDocumentsResult***](DSTemplateDocumentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroupShare**
```objc
-(NSNumber*) deleteGroupShareWithAccountId: (DSGroupInformation*) groupInformation
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    templatePart: (NSString*) templatePart
        completionHandler: (void (^)(DSGroupInformation* output, NSError* error)) handler;
```

Removes a member group's sharing permissions for a template.

Removes a member group's sharing permissions for a specified template.

### Example 
```objc

DSGroupInformation* groupInformation = [[DSGroupInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* templatePart = @"templatePart_example"; // Currently, the only defined part is **groups**.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Removes a member group's sharing permissions for a template.
[apiInstance deleteGroupShareWithAccountId:groupInformation
              accountId:accountId
              templateId:templateId
              templatePart:templatePart
          completionHandler: ^(DSGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteGroupShare: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupInformation** | [**DSGroupInformation***](DSGroupInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **templatePart** | **NSString***| Currently, the only defined part is **groups**. | 

### Return type

[**DSGroupInformation***](DSGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLock**
```objc
-(NSNumber*) deleteLockWithAccountId: (DSLockRequest*) lockRequest
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler;
```

Deletes a template lock.

Deletes the lock from the specified template. The `X-DocuSign-Edit` header must be included in the request.

### Example 
```objc

DSLockRequest* lockRequest = [[DSLockRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes a template lock.
[apiInstance deleteLockWithAccountId:lockRequest
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSLockInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteLock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lockRequest** | [**DSLockRequest***](DSLockRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSLockInformation***](DSLockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRecipient**
```objc
-(NSNumber*) deleteRecipientWithAccountId: (DSTemplateRecipients*) templateRecipients
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler;
```

Deletes the specified recipient file from a template.

Deletes the specified recipient file from the specified template.

### Example 
```objc

DSTemplateRecipients* templateRecipients = [[DSTemplateRecipients alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes the specified recipient file from a template.
[apiInstance deleteRecipientWithAccountId:templateRecipients
              accountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteRecipient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateRecipients** | [**DSTemplateRecipients***](DSTemplateRecipients*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSRecipients***](DSRecipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRecipients**
```objc
-(NSNumber*) deleteRecipientsWithAccountId: (DSTemplateRecipients*) templateRecipients
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler;
```

Deletes recipients from a template.

Deletes one or more recipients from a template. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.

### Example 
```objc

DSTemplateRecipients* templateRecipients = [[DSTemplateRecipients alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes recipients from a template.
[apiInstance deleteRecipientsWithAccountId:templateRecipients
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateRecipients** | [**DSTemplateRecipients***](DSTemplateRecipients*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSRecipients***](DSRecipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTabs**
```objc
-(NSNumber*) deleteTabsWithAccountId: (DSTemplateTabs*) templateTabs
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Deletes the tabs associated with a recipient in a template.

Deletes one or more tabs associated with a recipient in a template.

### Example 
```objc

DSTemplateTabs* templateTabs = [[DSTemplateTabs alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Deletes the tabs associated with a recipient in a template.
[apiInstance deleteTabsWithAccountId:templateTabs
              accountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->deleteTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateTabs** | [**DSTemplateTabs***](DSTemplateTabs*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```objc
-(NSNumber*) getWithAccountId: (NSString*) include
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSEnvelopeTemplate* output, NSError* error)) handler;
```

Gets a list of templates for a specified account.

Retrieves the definition of the specified template.

### Example 
```objc

NSString* include = @"include_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets a list of templates for a specified account.
[apiInstance getWithAccountId:include
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSEnvelopeTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->get: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSEnvelopeTemplate***](DSEnvelopeTemplate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocument**
```objc
-(NSNumber*) getDocumentWithAccountId: (NSString*) encrypt
    showChanges: (NSString*) showChanges
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Gets PDF documents from a template.

Retrieves one or more PDF documents from the specified template.  You can specify the ID of the document to retrieve or can specify `combined` to retrieve all documents in the template as one pdf.

### Example 
```objc

NSString* encrypt = @"encrypt_example"; //  (optional)
NSString* showChanges = @"showChanges_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets PDF documents from a template.
[apiInstance getDocumentWithAccountId:encrypt
              showChanges:showChanges
              accountId:accountId
              templateId:templateId
              documentId:documentId
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->getDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **encrypt** | **NSString***|  | [optional] 
 **showChanges** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

**NSURL***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentPageImage**
```objc
-(NSNumber*) getDocumentPageImageWithAccountId: (NSString*) dpi
    maxHeight: (NSString*) maxHeight
    maxWidth: (NSString*) maxWidth
    showChanges: (NSString*) showChanges
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
    pageNumber: (NSString*) pageNumber
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Gets a page image from a template for display.

Retrieves a page image for display from the specified template.

### Example 
```objc

NSString* dpi = @"dpi_example"; //  (optional)
NSString* maxHeight = @"maxHeight_example"; //  (optional)
NSString* maxWidth = @"maxWidth_example"; //  (optional)
NSString* showChanges = @"showChanges_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* pageNumber = @"pageNumber_example"; // The page number being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets a page image from a template for display.
[apiInstance getDocumentPageImageWithAccountId:dpi
              maxHeight:maxHeight
              maxWidth:maxWidth
              showChanges:showChanges
              accountId:accountId
              templateId:templateId
              documentId:documentId
              pageNumber:pageNumber
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->getDocumentPageImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dpi** | **NSString***|  | [optional] 
 **maxHeight** | **NSString***|  | [optional] 
 **maxWidth** | **NSString***|  | [optional] 
 **showChanges** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 
 **pageNumber** | **NSString***| The page number being accessed. | 

### Return type

**NSURL***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentTabs**
```objc
-(NSNumber*) getDocumentTabsWithAccountId: (NSString*) pageNumbers
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Returns tabs on the document.

### Example 
```objc

NSString* pageNumbers = @"pageNumbers_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Returns tabs on the document.
[apiInstance getDocumentTabsWithAccountId:pageNumbers
              accountId:accountId
              templateId:templateId
              documentId:documentId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->getDocumentTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumbers** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLock**
```objc
-(NSNumber*) getLockWithAccountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler;
```

Gets template lock information.

Retrieves general information about the template lock.  If the call is made by the user who has the lock and the request has the same integrator key as original, then the `X-DocuSign-Edit` header  field and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets template lock information.
[apiInstance getLockWithAccountId:accountId
              templateId:templateId
          completionHandler: ^(DSLockInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->getLock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSLockInformation***](DSLockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationSettings**
```objc
-(NSNumber*) getNotificationSettingsWithAccountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSNotification* output, NSError* error)) handler;
```

Gets template notification information.

Retrieves the envelope notification, reminders and expirations, information for an existing template.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets template notification information.
[apiInstance getNotificationSettingsWithAccountId:accountId
              templateId:templateId
          completionHandler: ^(DSNotification* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->getNotificationSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSNotification***](DSNotification.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPageTabs**
```objc
-(NSNumber*) getPageTabsWithAccountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
    pageNumber: (NSString*) pageNumber
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Returns tabs on the specified page.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* pageNumber = @"pageNumber_example"; // The page number being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Returns tabs on the specified page.
[apiInstance getPageTabsWithAccountId:accountId
              templateId:templateId
              documentId:documentId
              pageNumber:pageNumber
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->getPageTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 
 **pageNumber** | **NSString***| The page number being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPages**
```objc
-(NSNumber*) getPagesWithAccountId: (NSString*) count
    dpi: (NSString*) dpi
    maxHeight: (NSString*) maxHeight
    maxWidth: (NSString*) maxWidth
    nocache: (NSString*) nocache
    showChanges: (NSString*) showChanges
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSPageImages* output, NSError* error)) handler;
```

Returns document page image(s) based on input.

### Example 
```objc

NSString* count = @"count_example"; //  (optional)
NSString* dpi = @"dpi_example"; //  (optional)
NSString* maxHeight = @"maxHeight_example"; //  (optional)
NSString* maxWidth = @"maxWidth_example"; //  (optional)
NSString* nocache = @"nocache_example"; //  (optional)
NSString* showChanges = @"showChanges_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Returns document page image(s) based on input.
[apiInstance getPagesWithAccountId:count
              dpi:dpi
              maxHeight:maxHeight
              maxWidth:maxWidth
              nocache:nocache
              showChanges:showChanges
              startPosition:startPosition
              accountId:accountId
              templateId:templateId
              documentId:documentId
          completionHandler: ^(DSPageImages* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->getPages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***|  | [optional] 
 **dpi** | **NSString***|  | [optional] 
 **maxHeight** | **NSString***|  | [optional] 
 **maxWidth** | **NSString***|  | [optional] 
 **nocache** | **NSString***|  | [optional] 
 **showChanges** | **NSString***|  | [optional] 
 **startPosition** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSPageImages***](DSPageImages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBulkRecipients**
```objc
-(NSNumber*) listBulkRecipientsWithAccountId: (NSString*) includeTabs
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSBulkRecipientsResponse* output, NSError* error)) handler;
```

Gets the bulk recipient file from a template.

Retrieves the bulk recipient file information from a template that has a bulk recipient.

### Example 
```objc

NSString* includeTabs = @"includeTabs_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets the bulk recipient file from a template.
[apiInstance listBulkRecipientsWithAccountId:includeTabs
              startPosition:startPosition
              accountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSBulkRecipientsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->listBulkRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTabs** | **NSString***|  | [optional] 
 **startPosition** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSBulkRecipientsResponse***](DSBulkRecipientsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomFields**
```objc
-(NSNumber*) listCustomFieldsWithAccountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Gets the custom document fields from a template.

Retrieves the custom document field information from an existing template.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets the custom document fields from a template.
[apiInstance listCustomFieldsWithAccountId:accountId
              templateId:templateId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->listCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSCustomFields***](DSCustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocumentFields**
```objc
-(NSNumber*) listDocumentFieldsWithAccountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler;
```

Gets the custom document fields for a an existing template document.

Retrieves the custom document fields for an existing template document.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets the custom document fields for a an existing template document.
[apiInstance listDocumentFieldsWithAccountId:accountId
              templateId:templateId
              documentId:documentId
          completionHandler: ^(DSDocumentFieldsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->listDocumentFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSDocumentFieldsInformation***](DSDocumentFieldsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocuments**
```objc
-(NSNumber*) listDocumentsWithAccountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error)) handler;
```

Gets a list of documents associated with a template.

Retrieves a list of documents associated with the specified template.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets a list of documents associated with a template.
[apiInstance listDocumentsWithAccountId:accountId
              templateId:templateId
          completionHandler: ^(DSTemplateDocumentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->listDocuments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSTemplateDocumentsResult***](DSTemplateDocumentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecipients**
```objc
-(NSNumber*) listRecipientsWithAccountId: (NSString*) includeAnchorTabLocations
    includeExtended: (NSString*) includeExtended
    includeTabs: (NSString*) includeTabs
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler;
```

Gets recipient information from a template.

Retrieves the information for all recipients in the specified template.

### Example 
```objc

NSString* includeAnchorTabLocations = @"includeAnchorTabLocations_example"; //  When set to **true** and `include_tabs` is set to **true**, all tabs with anchor tab properties are included in the response.  (optional)
NSString* includeExtended = @"includeExtended_example"; //  When set to **true**, the extended properties are included in the response.  (optional)
NSString* includeTabs = @"includeTabs_example"; // When set to **true**, the tab information associated with the recipient is included in the response. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets recipient information from a template.
[apiInstance listRecipientsWithAccountId:includeAnchorTabLocations
              includeExtended:includeExtended
              includeTabs:includeTabs
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->listRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeAnchorTabLocations** | **NSString***|  When set to **true** and &#x60;include_tabs&#x60; is set to **true**, all tabs with anchor tab properties are included in the response.  | [optional] 
 **includeExtended** | **NSString***|  When set to **true**, the extended properties are included in the response.  | [optional] 
 **includeTabs** | **NSString***| When set to **true**, the tab information associated with the recipient is included in the response. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSRecipients***](DSRecipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTabs**
```objc
-(NSNumber*) listTabsWithAccountId: (NSString*) includeAnchorTabLocations
    includeMetadata: (NSString*) includeMetadata
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Gets the tabs information for a signer or sign-in-person recipient in a template.

Gets the tabs information for a signer or sign-in-person recipient in a template.

### Example 
```objc

NSString* includeAnchorTabLocations = @"includeAnchorTabLocations_example"; // When set to **true**, all tabs with anchor tab properties are included in the response.  (optional)
NSString* includeMetadata = @"includeMetadata_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets the tabs information for a signer or sign-in-person recipient in a template.
[apiInstance listTabsWithAccountId:includeAnchorTabLocations
              includeMetadata:includeMetadata
              accountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->listTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeAnchorTabLocations** | **NSString***| When set to **true**, all tabs with anchor tab properties are included in the response.  | [optional] 
 **includeMetadata** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTemplates**
```objc
-(NSNumber*) listTemplatesWithAccountId: (NSString*) count
    folder: (NSString*) folder
    folderIds: (NSString*) folderIds
    folderTypes: (NSString*) folderTypes
    fromDate: (NSString*) fromDate
    include: (NSString*) include
    order: (NSString*) order
    orderBy: (NSString*) orderBy
    searchText: (NSString*) searchText
    shared: (NSString*) shared
    sharedByMe: (NSString*) sharedByMe
    startPosition: (NSString*) startPosition
    toDate: (NSString*) toDate
    usedFromDate: (NSString*) usedFromDate
    usedToDate: (NSString*) usedToDate
    userFilter: (NSString*) userFilter
    userId: (NSString*) userId
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSEnvelopeTemplateResults* output, NSError* error)) handler;
```

Gets the definition of a template.

Retrieves the list of templates for the specified account. The request can be limited to a specific folder.

### Example 
```objc

NSString* count = @"count_example"; // Number of records to return in the cache. (optional)
NSString* folder = @"folder_example"; // The query value can be a folder name or folder ID. The response will only return templates in the specified folder. (optional)
NSString* folderIds = @"folderIds_example"; // A comma separated list of folder ID GUIDs. (optional)
NSString* folderTypes = @"folderTypes_example"; //  (optional)
NSString* fromDate = @"fromDate_example"; // Start of the search date range. Only returns templates created on or after this date/time. If no value is specified, there is no limit on the earliest date created. (optional)
NSString* include = @"include_example"; // A comma separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications. (optional)
NSString* order = @"order_example"; // Sets the direction order used to sort the list. Valid values are: -asc = ascending sort order (a to z)  -desc = descending sort order (z to a) (optional)
NSString* orderBy = @"orderBy_example"; // Sets the file attribute used to sort the list. Valid values are:  -name: template name  -modified: date/time template was last modified.  -used: date/time the template was last used. (optional)
NSString* searchText = @"searchText_example"; // The search text used to search the names of templates. (optional)
NSString* shared = @"shared_example"; //  (optional)
NSString* sharedByMe = @"sharedByMe_example"; // If true, the response only includes templates shared by the user. If false, the response only returns template not shared by the user. If not specified, the response is not affected. (optional)
NSString* startPosition = @"startPosition_example"; // The starting index for the first template shown in the response. This must be greater than or equal to 0 (zero). (optional)
NSString* toDate = @"toDate_example"; // End of the search date range. Only returns templates created up to this date/time. If no value is provided, this defaults to the current date. (optional)
NSString* usedFromDate = @"usedFromDate_example"; // Start of the search date range. Only returns templates used or edited on or after this date/time. If no value is specified, there is no limit on the earliest date used. (optional)
NSString* usedToDate = @"usedToDate_example"; // End of the search date range. Only returns templates used or edited up to this date/time. If no value is provided, this defaults to the current date. (optional)
NSString* userFilter = @"userFilter_example"; // Sets if the templates shown in the response Valid values are:  -owned_by_me: only shows templates the user owns.  -shared_with_me: only shows templates that are shared with the user.  -all: shows all templates owned or shared with the user. (optional)
NSString* userId = @"userId_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Gets the definition of a template.
[apiInstance listTemplatesWithAccountId:count
              folder:folder
              folderIds:folderIds
              folderTypes:folderTypes
              fromDate:fromDate
              include:include
              order:order
              orderBy:orderBy
              searchText:searchText
              shared:shared
              sharedByMe:sharedByMe
              startPosition:startPosition
              toDate:toDate
              usedFromDate:usedFromDate
              usedToDate:usedToDate
              userFilter:userFilter
              userId:userId
              accountId:accountId
          completionHandler: ^(DSEnvelopeTemplateResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->listTemplates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***| Number of records to return in the cache. | [optional] 
 **folder** | **NSString***| The query value can be a folder name or folder ID. The response will only return templates in the specified folder. | [optional] 
 **folderIds** | **NSString***| A comma separated list of folder ID GUIDs. | [optional] 
 **folderTypes** | **NSString***|  | [optional] 
 **fromDate** | **NSString***| Start of the search date range. Only returns templates created on or after this date/time. If no value is specified, there is no limit on the earliest date created. | [optional] 
 **include** | **NSString***| A comma separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications. | [optional] 
 **order** | **NSString***| Sets the direction order used to sort the list. Valid values are: -asc &#x3D; ascending sort order (a to z)  -desc &#x3D; descending sort order (z to a) | [optional] 
 **orderBy** | **NSString***| Sets the file attribute used to sort the list. Valid values are:  -name: template name  -modified: date/time template was last modified.  -used: date/time the template was last used. | [optional] 
 **searchText** | **NSString***| The search text used to search the names of templates. | [optional] 
 **shared** | **NSString***|  | [optional] 
 **sharedByMe** | **NSString***| If true, the response only includes templates shared by the user. If false, the response only returns template not shared by the user. If not specified, the response is not affected. | [optional] 
 **startPosition** | **NSString***| The starting index for the first template shown in the response. This must be greater than or equal to 0 (zero). | [optional] 
 **toDate** | **NSString***| End of the search date range. Only returns templates created up to this date/time. If no value is provided, this defaults to the current date. | [optional] 
 **usedFromDate** | **NSString***| Start of the search date range. Only returns templates used or edited on or after this date/time. If no value is specified, there is no limit on the earliest date used. | [optional] 
 **usedToDate** | **NSString***| End of the search date range. Only returns templates used or edited up to this date/time. If no value is provided, this defaults to the current date. | [optional] 
 **userFilter** | **NSString***| Sets if the templates shown in the response Valid values are:  -owned_by_me: only shows templates the user owns.  -shared_with_me: only shows templates that are shared with the user.  -all: shows all templates owned or shared with the user. | [optional] 
 **userId** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSEnvelopeTemplateResults***](DSEnvelopeTemplateResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateDocumentPage**
```objc
-(NSNumber*) rotateDocumentPageWithAccountId: (DSPageRequest*) pageRequest
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
    pageNumber: (NSString*) pageNumber
        completionHandler: (void (^)(NSError* error)) handler;
```

Rotates page image from a template for display.

Rotates page image from a template for display. The page image can be rotated to the left or right.

### Example 
```objc

DSPageRequest* pageRequest = [[DSPageRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* pageNumber = @"pageNumber_example"; // The page number being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Rotates page image from a template for display.
[apiInstance rotateDocumentPageWithAccountId:pageRequest
              accountId:accountId
              templateId:templateId
              documentId:documentId
              pageNumber:pageNumber
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->rotateDocumentPage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageRequest** | [**DSPageRequest***](DSPageRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 
 **pageNumber** | **NSString***| The page number being accessed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```objc
-(NSNumber*) updateWithAccountId: (DSEnvelopeTemplate*) envelopeTemplate
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSTemplateUpdateSummary* output, NSError* error)) handler;
```

Updates an existing template.

Updates an existing template.

### Example 
```objc

DSEnvelopeTemplate* envelopeTemplate = [[DSEnvelopeTemplate alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Updates an existing template.
[apiInstance updateWithAccountId:envelopeTemplate
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSTemplateUpdateSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->update: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **envelopeTemplate** | [**DSEnvelopeTemplate***](DSEnvelopeTemplate*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSTemplateUpdateSummary***](DSTemplateUpdateSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBulkRecipients**
```objc
-(NSNumber*) updateBulkRecipientsWithAccountId: (DSBulkRecipientsRequest*) bulkRecipientsRequest
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSBulkRecipientsSummaryResponse* output, NSError* error)) handler;
```

Adds or replaces the bulk recipients list in a template.

Updates the bulk recipients in a template using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.

### Example 
```objc

DSBulkRecipientsRequest* bulkRecipientsRequest = [[DSBulkRecipientsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Adds or replaces the bulk recipients list in a template.
[apiInstance updateBulkRecipientsWithAccountId:bulkRecipientsRequest
              accountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSBulkRecipientsSummaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateBulkRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkRecipientsRequest** | [**DSBulkRecipientsRequest***](DSBulkRecipientsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSBulkRecipientsSummaryResponse***](DSBulkRecipientsSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomFields**
```objc
-(NSNumber*) updateCustomFieldsWithAccountId: (DSTemplateCustomFields*) templateCustomFields
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Updates envelope custom fields in a template.

Updates the custom fields in a template.  Each custom field used in a template must have a unique name.

### Example 
```objc

DSTemplateCustomFields* templateCustomFields = [[DSTemplateCustomFields alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Updates envelope custom fields in a template.
[apiInstance updateCustomFieldsWithAccountId:templateCustomFields
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateCustomFields** | [**DSTemplateCustomFields***](DSTemplateCustomFields*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSCustomFields***](DSCustomFields.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDocument**
```objc
-(NSNumber*) updateDocumentWithAccountId: (NSString*) applyDocumentFields
    isEnvelopeDefinition: (NSString*) isEnvelopeDefinition
    envelopeDefinition: (DSEnvelopeDefinition*) envelopeDefinition
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSEnvelopeDocument* output, NSError* error)) handler;
```

Adds a document to a template document.

Adds the specified document to an existing template document.

### Example 
```objc

NSString* applyDocumentFields = @"applyDocumentFields_example"; //  (optional)
NSString* isEnvelopeDefinition = @"isEnvelopeDefinition_example"; //  (optional)
DSEnvelopeDefinition* envelopeDefinition = [[DSEnvelopeDefinition alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Adds a document to a template document.
[apiInstance updateDocumentWithAccountId:applyDocumentFields
              isEnvelopeDefinition:isEnvelopeDefinition
              envelopeDefinition:envelopeDefinition
              accountId:accountId
              templateId:templateId
              documentId:documentId
          completionHandler: ^(DSEnvelopeDocument* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applyDocumentFields** | **NSString***|  | [optional] 
 **isEnvelopeDefinition** | **NSString***|  | [optional] 
 **envelopeDefinition** | [**DSEnvelopeDefinition***](DSEnvelopeDefinition*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSEnvelopeDocument***](DSEnvelopeDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDocumentFields**
```objc
-(NSNumber*) updateDocumentFieldsWithAccountId: (DSDocumentFieldsInformation*) documentFieldsInformation
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler;
```

Updates existing custom document fields in an existing template document.

Updates existing custom document fields in an existing template document.

### Example 
```objc

DSDocumentFieldsInformation* documentFieldsInformation = [[DSDocumentFieldsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Updates existing custom document fields in an existing template document.
[apiInstance updateDocumentFieldsWithAccountId:documentFieldsInformation
              accountId:accountId
              templateId:templateId
              documentId:documentId
          completionHandler: ^(DSDocumentFieldsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateDocumentFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentFieldsInformation** | [**DSDocumentFieldsInformation***](DSDocumentFieldsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSDocumentFieldsInformation***](DSDocumentFieldsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDocuments**
```objc
-(NSNumber*) updateDocumentsWithAccountId: (NSString*) applyDocumentFields
    envelopeDefinition: (DSEnvelopeDefinition*) envelopeDefinition
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSTemplateDocumentsResult* output, NSError* error)) handler;
```

Adds documents to a template document.

Adds one or more documents to an existing template document.

### Example 
```objc

NSString* applyDocumentFields = @"applyDocumentFields_example"; //  (optional)
DSEnvelopeDefinition* envelopeDefinition = [[DSEnvelopeDefinition alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Adds documents to a template document.
[apiInstance updateDocumentsWithAccountId:applyDocumentFields
              envelopeDefinition:envelopeDefinition
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSTemplateDocumentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateDocuments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applyDocumentFields** | **NSString***|  | [optional] 
 **envelopeDefinition** | [**DSEnvelopeDefinition***](DSEnvelopeDefinition*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSTemplateDocumentsResult***](DSTemplateDocumentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroupShare**
```objc
-(NSNumber*) updateGroupShareWithAccountId: (DSGroupInformation*) groupInformation
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    templatePart: (NSString*) templatePart
        completionHandler: (void (^)(DSGroupInformation* output, NSError* error)) handler;
```

Shares a template with a group

Shares a template with the specified members group.

### Example 
```objc

DSGroupInformation* groupInformation = [[DSGroupInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* templatePart = @"templatePart_example"; // Currently, the only defined part is **groups**.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Shares a template with a group
[apiInstance updateGroupShareWithAccountId:groupInformation
              accountId:accountId
              templateId:templateId
              templatePart:templatePart
          completionHandler: ^(DSGroupInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateGroupShare: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupInformation** | [**DSGroupInformation***](DSGroupInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **templatePart** | **NSString***| Currently, the only defined part is **groups**. | 

### Return type

[**DSGroupInformation***](DSGroupInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLock**
```objc
-(NSNumber*) updateLockWithAccountId: (DSLockRequest*) lockRequest
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler;
```

Updates a template lock.

Updates the lock duration time or update the `lockedByApp` property information for the specified template. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information and the `X-DocuSign-Edit` header must be included or an error will be generated.

### Example 
```objc

DSLockRequest* lockRequest = [[DSLockRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Updates a template lock.
[apiInstance updateLockWithAccountId:lockRequest
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSLockInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateLock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lockRequest** | [**DSLockRequest***](DSLockRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSLockInformation***](DSLockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNotificationSettings**
```objc
-(NSNumber*) updateNotificationSettingsWithAccountId: (DSTemplateNotificationRequest*) templateNotificationRequest
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSNotification* output, NSError* error)) handler;
```

Updates the notification  structure for an existing template.

Updates the notification structure for an existing template. Use this endpoint to set reminder and expiration notifications.

### Example 
```objc

DSTemplateNotificationRequest* templateNotificationRequest = [[DSTemplateNotificationRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Updates the notification  structure for an existing template.
[apiInstance updateNotificationSettingsWithAccountId:templateNotificationRequest
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSNotification* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateNotificationSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateNotificationRequest** | [**DSTemplateNotificationRequest***](DSTemplateNotificationRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSNotification***](DSNotification.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecipients**
```objc
-(NSNumber*) updateRecipientsWithAccountId: (NSString*) resendEnvelope
    templateRecipients: (DSTemplateRecipients*) templateRecipients
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSRecipientsUpdateSummary* output, NSError* error)) handler;
```

Updates recipients in a template.

Updates recipients in a template.   You can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.

### Example 
```objc

NSString* resendEnvelope = @"resendEnvelope_example"; //  (optional)
DSTemplateRecipients* templateRecipients = [[DSTemplateRecipients alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Updates recipients in a template.
[apiInstance updateRecipientsWithAccountId:resendEnvelope
              templateRecipients:templateRecipients
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSRecipientsUpdateSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendEnvelope** | **NSString***|  | [optional] 
 **templateRecipients** | [**DSTemplateRecipients***](DSTemplateRecipients*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSRecipientsUpdateSummary***](DSRecipientsUpdateSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTabs**
```objc
-(NSNumber*) updateTabsWithAccountId: (DSTemplateTabs*) templateTabs
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Updates the tabs for a recipient.

Updates one or more tabs for a recipient in a template.

### Example 
```objc

DSTemplateTabs* templateTabs = [[DSTemplateTabs alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSTemplatesApi*apiInstance = [[DSTemplatesApi alloc] init];

// Updates the tabs for a recipient.
[apiInstance updateTabsWithAccountId:templateTabs
              accountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSTemplatesApi->updateTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateTabs** | [**DSTemplateTabs***](DSTemplateTabs*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

