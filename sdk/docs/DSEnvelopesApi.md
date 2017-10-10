# DSEnvelopesApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**applyTemplate**](DSEnvelopesApi.md#applytemplate) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/templates | Adds templates to an envelope.
[**applyTemplateToDocument**](DSEnvelopesApi.md#applytemplatetodocument) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates | Adds templates to a document in an  envelope.
[**createChunkedUpload**](DSEnvelopesApi.md#createchunkedupload) | **POST** /v2/accounts/{accountId}/chunked_uploads | Initiate a new ChunkedUpload.
[**createConsoleView**](DSEnvelopesApi.md#createconsoleview) | **POST** /v2/accounts/{accountId}/views/console | Returns a URL to the authentication view UI.
[**createCorrectView**](DSEnvelopesApi.md#createcorrectview) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/views/correct | Returns a URL to the envelope correction UI.
[**createCustomFields**](DSEnvelopesApi.md#createcustomfields) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/custom_fields | Updates envelope custom fields for an envelope.
[**createDocumentFields**](DSEnvelopesApi.md#createdocumentfields) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields | Creates custom document fields in an existing envelope document.
[**createEditView**](DSEnvelopesApi.md#createeditview) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/views/edit | Returns a URL to the edit view UI.
[**createEmailSettings**](DSEnvelopesApi.md#createemailsettings) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/email_settings | Adds email setting overrides to an envelope.
[**createEnvelope**](DSEnvelopesApi.md#createenvelope) | **POST** /v2/accounts/{accountId}/envelopes | Creates an envelope.
[**createLock**](DSEnvelopesApi.md#createlock) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/lock | Lock an envelope.
[**createRecipient**](DSEnvelopesApi.md#createrecipient) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients | Adds one or more recipients to an envelope.
[**createRecipientView**](DSEnvelopesApi.md#createrecipientview) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/views/recipient | Returns a URL to the recipient view UI.
[**createSenderView**](DSEnvelopesApi.md#createsenderview) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/views/sender | Returns a URL to the sender view UI.
[**createTabs**](DSEnvelopesApi.md#createtabs) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs | Adds tabs for a recipient.
[**createViewLink**](DSEnvelopesApi.md#createviewlink) | **POST** /v2/accounts/{accountId}/envelopes/{envelopeId}/views/viewlink | Reserved: Returns a URL to the secure link view UI.
[**deleteAttachments**](DSEnvelopesApi.md#deleteattachments) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/attachments | Delete one or more attachments from a DRAFT envelope.
[**deleteChunkedUpload**](DSEnvelopesApi.md#deletechunkedupload) | **DELETE** /v2/accounts/{accountId}/chunked_uploads/{chunkedUploadId} | Delete an existing ChunkedUpload.
[**deleteCustomFields**](DSEnvelopesApi.md#deletecustomfields) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/custom_fields | Deletes envelope custom fields for draft and in-process envelopes.
[**deleteDocumentFields**](DSEnvelopesApi.md#deletedocumentfields) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields | Deletes custom document fields from an existing envelope document.
[**deleteDocumentPage**](DSEnvelopesApi.md#deletedocumentpage) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber} | Deletes a page from a document in an envelope.
[**deleteDocuments**](DSEnvelopesApi.md#deletedocuments) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents | Deletes documents from a draft envelope.
[**deleteEmailSettings**](DSEnvelopesApi.md#deleteemailsettings) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/email_settings | Deletes the email setting overrides for an envelope.
[**deleteLock**](DSEnvelopesApi.md#deletelock) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/lock | Deletes an envelope lock.
[**deleteRecipient**](DSEnvelopesApi.md#deleterecipient) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId} | Deletes a recipient from an envelope.
[**deleteRecipients**](DSEnvelopesApi.md#deleterecipients) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients | Deletes recipients from an envelope.
[**deleteTabs**](DSEnvelopesApi.md#deletetabs) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs | Deletes the tabs associated with a recipient.
[**deleteTemplatesFromDocument**](DSEnvelopesApi.md#deletetemplatesfromdocument) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates/{templateId} | Deletes a template from a document in an existing envelope.
[**deleteViewLink**](DSEnvelopesApi.md#deleteviewlink) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/views/viewlink | Reserved: Expires a secure view link.
[**getAttachment**](DSEnvelopesApi.md#getattachment) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/attachments/{attachmentId} | Retrieves an attachment from the envelope.
[**getAttachments**](DSEnvelopesApi.md#getattachments) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/attachments | Returns a list of attachments associated with the specified envelope
[**getChunkedUpload**](DSEnvelopesApi.md#getchunkedupload) | **GET** /v2/accounts/{accountId}/chunked_uploads/{chunkedUploadId} | Retrieves the current metadata of a ChunkedUpload.
[**getConsumerDisclosure**](DSEnvelopesApi.md#getconsumerdisclosure) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/consumer_disclosure/{langCode} | Reserved: Gets the Electronic Record and Signature Disclosure associated with the account.
[**getConsumerDisclosureDefault**](DSEnvelopesApi.md#getconsumerdisclosuredefault) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/consumer_disclosure | Gets the Electronic Record and Signature Disclosure associated with the account.
[**getDocument**](DSEnvelopesApi.md#getdocument) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId} | Gets a document from an envelope.
[**getDocumentPageImage**](DSEnvelopesApi.md#getdocumentpageimage) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/page_image | Gets a page image from an envelope for display.
[**getDocumentTabs**](DSEnvelopesApi.md#getdocumenttabs) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/tabs | Returns tabs on the document.
[**getEmailSettings**](DSEnvelopesApi.md#getemailsettings) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/email_settings | Gets the email setting overrides for an envelope.
[**getEnvelope**](DSEnvelopesApi.md#getenvelope) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId} | Gets the status of a envelope.
[**getFormData**](DSEnvelopesApi.md#getformdata) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/form_data | Returns envelope form data for an existing envelope.
[**getLock**](DSEnvelopesApi.md#getlock) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/lock | Gets envelope lock information.
[**getNotificationSettings**](DSEnvelopesApi.md#getnotificationsettings) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/notification | Gets envelope notification information.
[**getPageTabs**](DSEnvelopesApi.md#getpagetabs) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/tabs | Returns tabs on the specified page.
[**getPages**](DSEnvelopesApi.md#getpages) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages | Returns document page image(s) based on input.
[**getRecipientDocumentVisibility**](DSEnvelopesApi.md#getrecipientdocumentvisibility) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility | Returns document visibility for the recipients
[**getRecipientInitialsImage**](DSEnvelopesApi.md#getrecipientinitialsimage) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/initials_image | Gets the initials image for a user.
[**getRecipientSignature**](DSEnvelopesApi.md#getrecipientsignature) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature | Gets signature information for a signer or sign-in-person recipient.
[**getRecipientSignatureImage**](DSEnvelopesApi.md#getrecipientsignatureimage) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature_image | Retrieve signature image information for a signer/sign-in-person recipient.
[**getTemplateRecipientDocumentVisibility**](DSEnvelopesApi.md#gettemplaterecipientdocumentvisibility) | **GET** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility | Returns document visibility for the recipients
[**listAuditEvents**](DSEnvelopesApi.md#listauditevents) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/audit_events | Gets the envelope audit events for an envelope.
[**listCustomFields**](DSEnvelopesApi.md#listcustomfields) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/custom_fields | Gets the custom field information for the specified envelope.
[**listDocumentFields**](DSEnvelopesApi.md#listdocumentfields) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields | Gets the custom document fields from an  existing envelope document.
[**listDocuments**](DSEnvelopesApi.md#listdocuments) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents | Gets a list of envelope documents.
[**listRecipients**](DSEnvelopesApi.md#listrecipients) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients | Gets the status of recipients for an envelope.
[**listStatus**](DSEnvelopesApi.md#liststatus) | **PUT** /v2/accounts/{accountId}/envelopes/status | Gets the envelope status for the specified envelopes.
[**listStatusChanges**](DSEnvelopesApi.md#liststatuschanges) | **GET** /v2/accounts/{accountId}/envelopes | Gets status changes for one or more envelopes.
[**listTabs**](DSEnvelopesApi.md#listtabs) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs | Gets the tabs information for a signer or sign-in-person recipient in an envelope.
[**listTemplates**](DSEnvelopesApi.md#listtemplates) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/templates | Get List of Templates used in an Envelope
[**listTemplatesForDocument**](DSEnvelopesApi.md#listtemplatesfordocument) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates | Gets the templates associated with a document in an existing envelope.
[**putAttachment**](DSEnvelopesApi.md#putattachment) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/attachments/{attachmentId} | Add an attachment to a DRAFT or IN-PROCESS envelope.
[**putAttachments**](DSEnvelopesApi.md#putattachments) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/attachments | Add one or more attachments to a DRAFT or IN-PROCESS envelope.
[**rotateDocumentPage**](DSEnvelopesApi.md#rotatedocumentpage) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/page_image | Rotates page image from an envelope for display.
[**update**](DSEnvelopesApi.md#update) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId} | Send Draft Envelope/Void Envelope/Move/Purge Envelope/Modify draft
[**updateChunkedUpload**](DSEnvelopesApi.md#updatechunkedupload) | **PUT** /v2/accounts/{accountId}/chunked_uploads/{chunkedUploadId} | Integrity-Check and Commit a ChunkedUpload, readying it for use elsewhere.
[**updateChunkedUploadPart**](DSEnvelopesApi.md#updatechunkeduploadpart) | **PUT** /v2/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/{chunkedUploadPartSeq} | Add a chunk, a chunk &#39;part&#39;, to an existing ChunkedUpload.
[**updateCustomFields**](DSEnvelopesApi.md#updatecustomfields) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/custom_fields | Updates envelope custom fields in an envelope.
[**updateDocument**](DSEnvelopesApi.md#updatedocument) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId} | Adds a document to an existing draft envelope.
[**updateDocumentFields**](DSEnvelopesApi.md#updatedocumentfields) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields | Updates existing custom document fields in an existing envelope document.
[**updateDocuments**](DSEnvelopesApi.md#updatedocuments) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/documents | Adds one or more documents to an existing envelope document.
[**updateEmailSettings**](DSEnvelopesApi.md#updateemailsettings) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/email_settings | Updates the email setting overrides for an envelope.
[**updateLock**](DSEnvelopesApi.md#updatelock) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/lock | Updates an envelope lock.
[**updateNotificationSettings**](DSEnvelopesApi.md#updatenotificationsettings) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/notification | Sets envelope notification (Reminders/Expirations) structure for an existing envelope.
[**updateRecipientDocumentVisibility**](DSEnvelopesApi.md#updaterecipientdocumentvisibility) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility | Updates document visibility for the recipients
[**updateRecipientInitialsImage**](DSEnvelopesApi.md#updaterecipientinitialsimage) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/initials_image | Sets the initials image for an accountless signer.
[**updateRecipientSignatureImage**](DSEnvelopesApi.md#updaterecipientsignatureimage) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature_image | Sets the signature image for an accountless signer.
[**updateRecipients**](DSEnvelopesApi.md#updaterecipients) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients | Updates recipients in a draft envelope or corrects recipient information for an in process envelope.
[**updateRecipientsDocumentVisibility**](DSEnvelopesApi.md#updaterecipientsdocumentvisibility) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/document_visibility | Updates document visibility for the recipients
[**updateTabs**](DSEnvelopesApi.md#updatetabs) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs | Updates the tabs for a recipient.  
[**updateTemplateRecipientDocumentVisibility**](DSEnvelopesApi.md#updatetemplaterecipientdocumentvisibility) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility | Updates document visibility for the recipients
[**updateTemplateRecipientsDocumentVisibility**](DSEnvelopesApi.md#updatetemplaterecipientsdocumentvisibility) | **PUT** /v2/accounts/{accountId}/templates/{templateId}/recipients/document_visibility | Updates document visibility for the recipients


# **applyTemplate**
```objc
-(NSNumber*) applyTemplateWithAccountId: (DSDocumentTemplateList*) documentTemplateList
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSDocumentTemplateList* output, NSError* error)) handler;
```

Adds templates to an envelope.

Adds templates to the specified envelope.

### Example 
```objc

DSDocumentTemplateList* documentTemplateList = [[DSDocumentTemplateList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Adds templates to an envelope.
[apiInstance applyTemplateWithAccountId:documentTemplateList
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSDocumentTemplateList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->applyTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateList** | [**DSDocumentTemplateList***](DSDocumentTemplateList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSDocumentTemplateList***](DSDocumentTemplateList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **applyTemplateToDocument**
```objc
-(NSNumber*) applyTemplateToDocumentWithAccountId: (DSDocumentTemplateList*) documentTemplateList
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentTemplateList* output, NSError* error)) handler;
```

Adds templates to a document in an  envelope.

Adds templates to a document in the specified envelope.

### Example 
```objc

DSDocumentTemplateList* documentTemplateList = [[DSDocumentTemplateList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Adds templates to a document in an  envelope.
[apiInstance applyTemplateToDocumentWithAccountId:documentTemplateList
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(DSDocumentTemplateList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->applyTemplateToDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentTemplateList** | [**DSDocumentTemplateList***](DSDocumentTemplateList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSDocumentTemplateList***](DSDocumentTemplateList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createChunkedUpload**
```objc
-(NSNumber*) createChunkedUploadWithAccountId: (DSChunkedUploadRequest*) chunkedUploadRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSChunkedUploadResponse* output, NSError* error)) handler;
```

Initiate a new ChunkedUpload.

### Example 
```objc

DSChunkedUploadRequest* chunkedUploadRequest = [[DSChunkedUploadRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Initiate a new ChunkedUpload.
[apiInstance createChunkedUploadWithAccountId:chunkedUploadRequest
              accountId:accountId
          completionHandler: ^(DSChunkedUploadResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createChunkedUpload: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chunkedUploadRequest** | [**DSChunkedUploadRequest***](DSChunkedUploadRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSChunkedUploadResponse***](DSChunkedUploadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createConsoleView**
```objc
-(NSNumber*) createConsoleViewWithAccountId: (DSConsoleViewRequest*) consoleViewRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSViewUrl* output, NSError* error)) handler;
```

Returns a URL to the authentication view UI.

Returns a URL that allows you to embed the authentication view of the DocuSign UI in your applications.

### Example 
```objc

DSConsoleViewRequest* consoleViewRequest = [[DSConsoleViewRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns a URL to the authentication view UI.
[apiInstance createConsoleViewWithAccountId:consoleViewRequest
              accountId:accountId
          completionHandler: ^(DSViewUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createConsoleView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consoleViewRequest** | [**DSConsoleViewRequest***](DSConsoleViewRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSViewUrl***](DSViewUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCorrectView**
```objc
-(NSNumber*) createCorrectViewWithAccountId: (DSCorrectViewRequest*) correctViewRequest
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSViewUrl* output, NSError* error)) handler;
```

Returns a URL to the envelope correction UI.

Returns a URL that allows you to embed the envelope correction view of the DocuSign UI in your applications.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 

### Example 
```objc

DSCorrectViewRequest* correctViewRequest = [[DSCorrectViewRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns a URL to the envelope correction UI.
[apiInstance createCorrectViewWithAccountId:correctViewRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSViewUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createCorrectView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **correctViewRequest** | [**DSCorrectViewRequest***](DSCorrectViewRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSViewUrl***](DSViewUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomFields**
```objc
-(NSNumber*) createCustomFieldsWithAccountId: (DSCustomFields*) customFields
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Updates envelope custom fields for an envelope.

Updates the envelope custom fields for draft and in-process envelopes.  Each custom field used in an envelope must have a unique name.

### Example 
```objc

DSCustomFields* customFields = [[DSCustomFields alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates envelope custom fields for an envelope.
[apiInstance createCustomFieldsWithAccountId:customFields
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customFields** | [**DSCustomFields***](DSCustomFields*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

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
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler;
```

Creates custom document fields in an existing envelope document.

Creates custom document fields in an existing envelope document.

### Example 
```objc

DSDocumentFieldsInformation* documentFieldsInformation = [[DSDocumentFieldsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Creates custom document fields in an existing envelope document.
[apiInstance createDocumentFieldsWithAccountId:documentFieldsInformation
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(DSDocumentFieldsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createDocumentFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentFieldsInformation** | [**DSDocumentFieldsInformation***](DSDocumentFieldsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSViewUrl* output, NSError* error)) handler;
```

Returns a URL to the edit view UI.

Returns a URL that allows you to embed the edit view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign editing view.   Upon sending completion, the user is returned to the return URL provided by the API application.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 

### Example 
```objc

DSReturnUrlRequest* returnUrlRequest = [[DSReturnUrlRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns a URL to the edit view UI.
[apiInstance createEditViewWithAccountId:returnUrlRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSViewUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createEditView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnUrlRequest** | [**DSReturnUrlRequest***](DSReturnUrlRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSViewUrl***](DSViewUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEmailSettings**
```objc
-(NSNumber*) createEmailSettingsWithAccountId: (DSEmailSettings*) emailSettings
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEmailSettings* output, NSError* error)) handler;
```

Adds email setting overrides to an envelope.

Adds email override settings, changing the email address to reply to an email address, name, or the BCC for email archive information, for the envelope. Note that adding email settings will only affect email communications that occur after the addition was made.  ### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copies or Certified Deliveries Recipient Type.

### Example 
```objc

DSEmailSettings* emailSettings = [[DSEmailSettings alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Adds email setting overrides to an envelope.
[apiInstance createEmailSettingsWithAccountId:emailSettings
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEmailSettings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createEmailSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailSettings** | [**DSEmailSettings***](DSEmailSettings*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEmailSettings***](DSEmailSettings.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEnvelope**
```objc
-(NSNumber*) createEnvelopeWithAccountId: (NSString*) cdseMode
    completedDocumentsOnly: (NSString*) completedDocumentsOnly
    mergeRolesOnDraft: (NSString*) mergeRolesOnDraft
    envelopeDefinition: (DSEnvelopeDefinition*) envelopeDefinition
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSEnvelopeSummary* output, NSError* error)) handler;
```

Creates an envelope.

Creates an envelope.   Using this function you can: * Create an envelope and send it. * Create an envelope from an existing template and send it.  In either case, you can choose to save the envelope as a draft envelope instead of sending it by setting the request’s `status` property to `created` instead of `sent`.  ## Sending Envelopes  Documents can be included with the Envelopes::create call itself or a template can include documents. Documents can be added by using a multi-part/form request or by using the `documentBase64` field of the [`document` object](#/definitions/document)  ### Recipient Types An [`envelopeDefinition` object](#/definitions/envelopeDefinition) is used as the method’s body. Envelope recipients can be defined in the envelope or in templates. The `envelopeDefinition` object’s `recipients` field is an [`EnvelopeRecipients` resource object](#/definitions/EnvelopeRecipients). It includes arrays of the seven types of recipients defined by DocuSign:  Recipient type | Object definition -------------- | ----------------- agent (can add name and email information for later recipients/signers) | [`agent`](#/definitions/agent) carbon copy (receives a copy of the documents) | [`carbonCopy`](#/definitions/carbonCopy) certified delivery  (receives a copy of the documents and must acknowledge receipt) | [`certifiedDelivery`](#/definitions/certifiedDelivery) editor (can change recipients and document fields for later recipients/signers) | [`editor`](#/definitions/editor) in-person signer (“hosts” someone who signs in-person) | [`inPersonSigner`](#/definitions/inPersonSigner) intermediary (can add name and email information for some later recipients/signers.) | [`intermediary`](#/definitions/intermediary) signer (signs and/or updates document fields) | [`signer`](#/definitions/signer)  Additional information about the different types of recipients is available from the [`EnvelopeRecipients` resource page](../../EnvelopeRecipients) and from the [Developer Center](https://www.docusign.com/developer-center/explore/features/recipients)  ### Tabs Tabs (also referred to as `tags` and as `fields` in the web sending user interface), can be defined in the `envelopeDefinition`, in templates, by transforming PDF Form Fields, or by using Composite Templates (see below).  Defining tabs: the `inPersonSigner`, and `signer` recipient objects include a `tabs` field. It is an [`EnvelopeTabs` resource object](#/definitions/EnvelopeTabs). It includes arrays of the 24 different tab types available. See the [`EnvelopeTabs` resource](../../EnvelopeTabs) for more information.  ## Using Templates Envelopes use specific people or groups as recipients. Templates can specify a role, eg `account_manager.` When a template is used in an envelope, the roles must be replaced with specific people or groups.  When you create an envelope using a `templateId`, the different recipient type objects within the [`EnvelopeRecipients` object](#/definitions/EnvelopeRecipients) are used to assign recipients to the template’s roles via the `roleName` property. The recipient objects can also override settings that were specified in the template, and set values for tab fields that were defined in the template.  ### Message Lock When a template is added or applied to an envelope and the template has a locked email subject and message, that subject and message are used for the envelope and cannot be changed even if another locked template is subsequently added or applied to the envelope. The field `messageLock` is used to lock the email subject and message.  If an email subject or message is entered before adding or applying a template with `messageLock` **true**, the email subject and message is overwritten with the locked email subject and message from the template.  ## Envelope Status The status of sent envelopes can be determined through the DocuSign webhook system or by polling. Webhooks are highly recommended: they provide your application with the quickest updates when an envelope’s status changes. DocuSign limits polling to once every 15 minutes or less frequently.  When a webhook is used, DocuSign calls your application, via the URL you provide, with a notification XML message.   See the [Webhook recipe](https://www.docusign.com/developer-center/recipes/webhook-status) for examples and live demos of using webhooks.  ## Webhook Options The two webhook options, *eventNotification* and *Connect* use the same notification mechanism and message formats. eventNotification is used to create a webhook for a specific envelope sent via the API. Connect webhooks can be used for any envelope sent from an account, from any user, from any client.   ### eventNotification Webhooks The Envelopes::create method includes an optional [eventNotification object](#definition-eventNotification) that adds a webhook to the envelope. eventNotification webhooks are available for all DocuSign accounts with API access.  ### Connect Webhooks Connect can be used to create a webhook for all envelopes sent by all users in an account, either through the API or via other DocuSign clients (web, mobile, etc). Connect configurations are independent of specific envelopes. A Connect configuration includes a filter that may be used to limit the webhook to specific users, envelope statuses, etc.   Connect configurations may be created and managed using the [ConnectConfigurations resource](../../Connect/ConnectConfigurations). Configurations can also be created and managed from the Administration tool accessed by selecting “Go to Admin” from the menu next to your picture on the DocuSign web app. See the Integrations/Connect section of the Admin tool. For repeatability, and to minimize support questions, creating Connect configurations via the API is recommended, especially for ISVs.  Connect is available for some DocuSign account types. Please contact DocuSign Sales for more information.  ## Composite Templates  The Composite Templates feature, like [compositing in film production](https://en.wikipedia.org/wiki/Compositing), enables you to *overlay* document, recipient, and tab definitions from multiple sources, including PDF Form Field definitions, templates defined on the server, and more.  Each Composite Template consists of optional elements: server templates, inline templates, PDF Metadata templates, and documents.  * The Composite Template ID is an optional element used to identify the composite template. It is used as a reference when adding document object information via a multi-part HTTP message. If used, the document content-disposition must include the `compositeTemplateId` to which the document should be added. If `compositeTemplateId` is not specified in the content-disposition, the document is applied based on the `documentId` only. If no document object is specified, the composite template inherits the first document.  * Server Templates are server-side templates stored on the DocuSign platform. If supplied, they are overlaid into the envelope in the order of their Sequence value.  * Inline Templates provide a container to add documents, recipients, tabs, and custom fields. If inline templates are supplied, they are overlaid into the envelope in the order of their Sequence value.  * Document objects are optional structures that provide a container to pass in a document or form. If this object is not included, the composite template inherits the *first* document it finds from a server template or inline template, starting with the lowest sequence value.  PDF Form objects are only transformed from the document object. DocuSign does not derive PDF form properties from server templates or inline templates. To instruct DocuSign to transform fields from the PDF form, set `transformPdfFields` to \"true\" for the document. See the Transform PDF Fields section for more information about process.  * PDF Metadata Templates provide a container to embed design-time template information into a PDF document. DocuSign uses this information when processing the Envelope. This convention allows the document to carry the signing instructions with it, so that less information needs to be provided at run-time through an inline template or synchronized with an external structure like a server template. PDF Metadata templates are stored in the Metadata layer of a PDF in accordance with Acrobat's XMP specification. DocuSign will only find PDF Metadata templates inside documents passed in the Document object (see below). If supplied, the PDF metadata template will be overlaid into the envelope in the order of its Sequence value.  ### Compositing the definitions Each Composite Template adds a new document and templates overlay into the envelope. For each Composite Template these rules are applied:  * Templates are overlaid in the order of their Sequence value. * If Document is not passed into the Composite Template’s `document` field, the *first* template’s document (based on the template’s Sequence value) is used. * Last in wins in all cases except for the document (i.e. envelope information, recipient information, secure field information). There is no special casing.  For example, if you want higher security on a tab, then that needs to be specified in a later template (by sequence number) then where the tab is included. If you want higher security on a role recipient, then it needs to be in a later template then where that role recipient is specified.  * Recipient matching is based on Recipient Role and Routing Order. If there are matches, the recipient information is merged together. A final pass is done on all Composite Templates, after all template overlays have been applied, to collapse recipients with the same email, username and routing order. This prevents having the same recipients at the same routing order.  * If you specify in a template that a recipient is locked, once that recipient is overlaid the recipient attributes can no longer be changed. The only items that can be changed for the recipient in this case are the email, username, access code and IDCheckInformationInput.  * Tab matching is based on Tab Labels, Tab Types and Documents. If a Tab Label matches but the Document is not supplied, the Tab is overlaid for all the Documents.  For example, if you have a simple inline template with only one tab in it with a label and a value, the Signature, Initial, Company, Envelope ID, User Name tabs will only be matched and collapsed if they fall in the exact same X and Y locations.  * roleName and tabLabel matching is case sensitive.  * The defaultRecipient field enables you to specify which recipient the generated tabs from a PDF form are mapped to. You can also set PDF form generated tabs to a recipient other than the DefaultRecipient by specifying the mapping of the tab label that is created to one of the template recipients.  * You can use tabLabel wild carding to map a series of tabs from the PDF form. To use this you must end a tab label with “\\*” and then the system matches tabs that start with the label.  * If no DefaultRecipient is specified, tabs must be explicitly mapped to recipients in order to be generated from the form. Unmapped form objects will not be generated into their DocuSign equivalents. (In the case of Signature/Initials, the tabs will be disregarded entirely; in the case of pdf text fields, the field data will be flattened on the Envelope document, but there will not be a corresponding DocuSign data tab.)  ### Including the Document Content for Composite Templates Document content can be supplied inline, using the `documentBase64` or can be included in a multi-part HTTP message.  If a multi-part message is used and there are multiple Composite Templates, the document content-disposition can include the `compositeTemplateId` to which the document should be added. Using the `compositeTemplateId` sets which documents are associated with particular composite templates. An example of this usage is:  ```    --5cd3320a-5aac-4453-b3a4-cbb52a4cba5d    Content-Type: application/pdf    Content-Disposition: file; filename=\"eula.pdf\"; documentId=1; compositeTemplateId=\"1\"    Content-Transfer-Encoding: base64 ```  ### PDF Form Field Transformation Only the following PDF Form FieldTypes will be transformed to DocuSign tabs: CheckBox, DateTime, ListBox, Numeric, Password, Radio, Signature, and Text  Field Properties that will be transformed: Read Only, Required, Max Length, Positions, and Initial Data.  When transforming a *PDF Form Digital Signature Field,* the following rules are used:  If the PDF Field Name Contains | Then the DocuSign Tab Will be ------- | -------- DocuSignSignHere or eSignSignHere | Signature DocuSignSignHereOptional or eSignSignHereOptional | Optional Signature DocuSignInitialHere or eSignInitialHere | Initials DocuSignInitialHereOptional or eSignInitialHereOptional | Optional Initials  Any other PDF Form Digital Signature Field will be transformed to a DocuSign Signature tab  When transforming *PDF Form Text Fields,* the following rules are used:  If the PDF Field Name Contains | Then the DocuSign Tab Will be ------- | -------- DocuSignSignHere or eSignSignHere | Signature DocuSignSignHereOptional or eSignSignHereOptional | Optional Signature DocuSignInitialHere or eSignInitialHere | Initials DocuSignInitialHereOptional or eSignInitialHereOptional | Optional Initials DocuSignEnvelopeID or eSignEnvelopeID | EnvelopeID DocuSignCompany or eSignCompany | Company DocuSignDateSigned or eSignDateSigned | Date Signed DocuSignTitle or eSignTitle | Title DocuSignFullName or eSignFullName |  Full Name DocuSignSignerAttachmentOptional or eSignSignerAttachmentOptional | Optional Signer Attachment  Any other PDF Form Text Field will be transformed to a DocuSign data (text) tab.  PDF Form Field Names that include “DocuSignIgnoreTransform” or “eSignIgnoreTransform” will not be transformed.  PDF Form Date fields will be transformed to Date Signed fields if their name includes DocuSignDateSigned or eSignDateSigned.  ## Template Email Subject Merge Fields This feature enables you to insert recipient name and email address merge fields into the email subject line when creating or sending from a template.  The merge fields, based on the recipient’s `roleName`, are added to the `emailSubject` when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient.  If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.  * To add a recipient’s name in the subject line add the following text in the `emailSubject` when creating the template or when sending an envelope from a template:     [[<roleName>_UserName]]     Example:     `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`  * To add a recipient’s email address in the subject line add the following text in the emailSubject when creating the template or when sending an envelope from a template:     [[<roleName>_Email]]     Example:     `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`  In both cases the <roleName> is the recipient’s `roleName` in the template.  For cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.  ## Branding an envelope The following rules are used to determine the `brandId` used in an envelope:  * If a `brandId` is specified in the envelope/template and that brandId is available to the account, that brand is used in the envelope. * If more than one template is used in an envelope and more than one `brandId` is specified, the first `brandId` specified is used throughout the envelope. * In cases where no brand is specified and the sender belongs to a Group; if there is only one brand associated with the Group, then that brand is used in the envelope. Otherwise, the account’s default signing brand is used. * For envelopes that do not meet any of the previous criteria, the account’s default signing brand is used for the envelope.  ## BCC Email address feature  The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, don’t use the BCC Email field. Use a Carbon Copy or Certified Delivery Recipient type.  ## Merge Recipient Roles for Draft Envelopes When an envelope with multiple templates is sent, the recipients from the templates are merged according to the template roles, and empty recipients are removed. When creating an envelope with multiple templates, but not sending it (keeping it in a created state), duplicate recipients are not merged, which could cause leave duplicate recipients in the envelope.  To prevent this, the query parameter `merge_roles_on_draft` should be added when posting a draft envelope (status=created) with multiple templates. Doing this will merge template roles and remove empty recipients.  ###### Note: DocuSign recommends that the `merge_roles_on_draft` query parameter be used anytime you are creating an envelope with multiple templates and keeping it in draft (created) status.

### Example 
```objc

NSString* cdseMode = @"cdseMode_example"; //  (optional)
NSString* completedDocumentsOnly = @"completedDocumentsOnly_example"; // If set to true then we want to set the sourceEnvelopeId to indicate that this is a\"forward\" envelope action (optional)
NSString* mergeRolesOnDraft = @"mergeRolesOnDraft_example"; // When set to **true**, merges template roles and remove empty recipients when you create an envelope with multiple templates. (optional)
DSEnvelopeDefinition* envelopeDefinition = [[DSEnvelopeDefinition alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Creates an envelope.
[apiInstance createEnvelopeWithAccountId:cdseMode
              completedDocumentsOnly:completedDocumentsOnly
              mergeRolesOnDraft:mergeRolesOnDraft
              envelopeDefinition:envelopeDefinition
              accountId:accountId
          completionHandler: ^(DSEnvelopeSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createEnvelope: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cdseMode** | **NSString***|  | [optional] 
 **completedDocumentsOnly** | **NSString***| If set to true then we want to set the sourceEnvelopeId to indicate that this is a\&quot;forward\&quot; envelope action | [optional] 
 **mergeRolesOnDraft** | **NSString***| When set to **true**, merges template roles and remove empty recipients when you create an envelope with multiple templates. | [optional] 
 **envelopeDefinition** | [**DSEnvelopeDefinition***](DSEnvelopeDefinition*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSEnvelopeSummary***](DSEnvelopeSummary.md)

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
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler;
```

Lock an envelope.

Locks the specified envelope, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the envelope.  ###### Note: Users must have envelope locking capability enabled to use this function (userSetting `canLockEnvelopes` must be  set to true for the user).

### Example 
```objc

DSLockRequest* lockRequest = [[DSLockRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Lock an envelope.
[apiInstance createLockWithAccountId:lockRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSLockInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createLock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lockRequest** | [**DSLockRequest***](DSLockRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSLockInformation***](DSLockInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipient**
```objc
-(NSNumber*) createRecipientWithAccountId: (NSString*) resendEnvelope
    recipients: (DSRecipients*) recipients
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler;
```

Adds one or more recipients to an envelope.

Adds one or more recipients to an envelope.  For an in process envelope, one that has been sent and has not been completed or voided, an email is sent to a new recipient when they are reached in the routing order. If the new recipient's routing order is before or the same as the envelope's next recipient, an email is only sent if the optional `resend_envelope` query string is set to **true**.

### Example 
```objc

NSString* resendEnvelope = @"resendEnvelope_example"; // When set to **true**, resends the   envelope if the new recipient's routing order is before or the same as the envelope’s next recipient. (optional)
DSRecipients* recipients = [[DSRecipients alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Adds one or more recipients to an envelope.
[apiInstance createRecipientWithAccountId:resendEnvelope
              recipients:recipients
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createRecipient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendEnvelope** | **NSString***| When set to **true**, resends the   envelope if the new recipient&#39;s routing order is before or the same as the envelope’s next recipient. | [optional] 
 **recipients** | [**DSRecipients***](DSRecipients*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSRecipients***](DSRecipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecipientView**
```objc
-(NSNumber*) createRecipientViewWithAccountId: (DSRecipientViewRequest*) recipientViewRequest
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSViewUrl* output, NSError* error)) handler;
```

Returns a URL to the recipient view UI.

Returns a URL that allows you to embed the recipient view of the DocuSign UI in your applications. This call cannot be used to view draft envelopes, since those envelopes have not been sent.   Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView.   An entry is added into the Security Level section of the DocuSign Certificate of Completion that reflects the `securityDomain` and `authenticationMethod` properties used to verify the user identity.

### Example 
```objc

DSRecipientViewRequest* recipientViewRequest = [[DSRecipientViewRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns a URL to the recipient view UI.
[apiInstance createRecipientViewWithAccountId:recipientViewRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSViewUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createRecipientView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipientViewRequest** | [**DSRecipientViewRequest***](DSRecipientViewRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSViewUrl***](DSViewUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSenderView**
```objc
-(NSNumber*) createSenderViewWithAccountId: (DSReturnUrlRequest*) returnUrlRequest
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSViewUrl* output, NSError* error)) handler;
```

Returns a URL to the sender view UI.

Returns a URL that allows you to embed the sender view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign sending view.   Upon sending completion, the user is returned to the return URL provided by the API application.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 

### Example 
```objc

DSReturnUrlRequest* returnUrlRequest = [[DSReturnUrlRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns a URL to the sender view UI.
[apiInstance createSenderViewWithAccountId:returnUrlRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSViewUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createSenderView: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnUrlRequest** | [**DSReturnUrlRequest***](DSReturnUrlRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSViewUrl***](DSViewUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTabs**
```objc
-(NSNumber*) createTabsWithAccountId: (DSTabs*) tabs
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Adds tabs for a recipient.

Adds one or more tabs for a recipient.

### Example 
```objc

DSTabs* tabs = [[DSTabs alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Adds tabs for a recipient.
[apiInstance createTabsWithAccountId:tabs
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tabs** | [**DSTabs***](DSTabs*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createViewLink**
```objc
-(NSNumber*) createViewLinkWithAccountId: (DSViewLinkRequest*) viewLinkRequest
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSViewUrl* output, NSError* error)) handler;
```

Reserved: Returns a URL to the secure link view UI.

Reserved: Returns a URL that allows you to embed the secure link view of the DocuSign UI in your applications.

### Example 
```objc

DSViewLinkRequest* viewLinkRequest = [[DSViewLinkRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Reserved: Returns a URL to the secure link view UI.
[apiInstance createViewLinkWithAccountId:viewLinkRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSViewUrl* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->createViewLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewLinkRequest** | [**DSViewLinkRequest***](DSViewLinkRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSViewUrl***](DSViewUrl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttachments**
```objc
-(NSNumber*) deleteAttachmentsWithAccountId: (DSEnvelopeAttachmentsRequest*) envelopeAttachmentsRequest
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeAttachmentsResult* output, NSError* error)) handler;
```

Delete one or more attachments from a DRAFT envelope.

### Example 
```objc

DSEnvelopeAttachmentsRequest* envelopeAttachmentsRequest = [[DSEnvelopeAttachmentsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Delete one or more attachments from a DRAFT envelope.
[apiInstance deleteAttachmentsWithAccountId:envelopeAttachmentsRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeAttachmentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteAttachments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **envelopeAttachmentsRequest** | [**DSEnvelopeAttachmentsRequest***](DSEnvelopeAttachmentsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeAttachmentsResult***](DSEnvelopeAttachmentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChunkedUpload**
```objc
-(NSNumber*) deleteChunkedUploadWithAccountId: (NSString*) accountId
    chunkedUploadId: (NSString*) chunkedUploadId
        completionHandler: (void (^)(DSChunkedUploadResponse* output, NSError* error)) handler;
```

Delete an existing ChunkedUpload.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* chunkedUploadId = @"chunkedUploadId_example"; // 

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Delete an existing ChunkedUpload.
[apiInstance deleteChunkedUploadWithAccountId:accountId
              chunkedUploadId:chunkedUploadId
          completionHandler: ^(DSChunkedUploadResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteChunkedUpload: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **chunkedUploadId** | **NSString***|  | 

### Return type

[**DSChunkedUploadResponse***](DSChunkedUploadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomFields**
```objc
-(NSNumber*) deleteCustomFieldsWithAccountId: (DSCustomFields*) customFields
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Deletes envelope custom fields for draft and in-process envelopes.

Deletes envelope custom fields for draft and in-process envelopes.

### Example 
```objc

DSCustomFields* customFields = [[DSCustomFields alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes envelope custom fields for draft and in-process envelopes.
[apiInstance deleteCustomFieldsWithAccountId:customFields
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customFields** | [**DSCustomFields***](DSCustomFields*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

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
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler;
```

Deletes custom document fields from an existing envelope document.

Deletes custom document fields from an existing envelope document.

### Example 
```objc

DSDocumentFieldsInformation* documentFieldsInformation = [[DSDocumentFieldsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes custom document fields from an existing envelope document.
[apiInstance deleteDocumentFieldsWithAccountId:documentFieldsInformation
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(DSDocumentFieldsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteDocumentFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentFieldsInformation** | [**DSDocumentFieldsInformation***](DSDocumentFieldsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
-(NSNumber*) deleteDocumentPageWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
    pageNumber: (NSString*) pageNumber
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes a page from a document in an envelope.

Deletes a page from a document in an envelope based on the page number.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* pageNumber = @"pageNumber_example"; // The page number being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes a page from a document in an envelope.
[apiInstance deleteDocumentPageWithAccountId:accountId
              envelopeId:envelopeId
              documentId:documentId
              pageNumber:pageNumber
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteDocumentPage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeDocumentsResult* output, NSError* error)) handler;
```

Deletes documents from a draft envelope.

Deletes one or more documents from an existing draft envelope.

### Example 
```objc

DSEnvelopeDefinition* envelopeDefinition = [[DSEnvelopeDefinition alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes documents from a draft envelope.
[apiInstance deleteDocumentsWithAccountId:envelopeDefinition
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeDocumentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteDocuments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **envelopeDefinition** | [**DSEnvelopeDefinition***](DSEnvelopeDefinition*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeDocumentsResult***](DSEnvelopeDocumentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmailSettings**
```objc
-(NSNumber*) deleteEmailSettingsWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEmailSettings* output, NSError* error)) handler;
```

Deletes the email setting overrides for an envelope.

Deletes all existing email override settings for the envelope. If you want to delete an individual email override setting, use the PUT and set the value to an empty string. Note that deleting email settings will only affect email communications that occur after the deletion and the normal account email settings are used for future email communications.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes the email setting overrides for an envelope.
[apiInstance deleteEmailSettingsWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEmailSettings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteEmailSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEmailSettings***](DSEmailSettings.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLock**
```objc
-(NSNumber*) deleteLockWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler;
```

Deletes an envelope lock.

Deletes the lock from the specified envelope. The `X-DocuSign-Edit` header must be included in the request.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes an envelope lock.
[apiInstance deleteLockWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSLockInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteLock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

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
-(NSNumber*) deleteRecipientWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler;
```

Deletes a recipient from an envelope.

Deletes the specified recipient file from the specified envelope. This cannot be used if the envelope has been sent.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes a recipient from an envelope.
[apiInstance deleteRecipientWithAccountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteRecipient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
-(NSNumber*) deleteRecipientsWithAccountId: (DSRecipients*) recipients
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler;
```

Deletes recipients from an envelope.

Deletes one or more recipients from a draft or sent envelope. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.  If the envelope is `In Process`, meaning that it has been sent and has not  been completed or voided, recipients that have completed their actions cannot be deleted.

### Example 
```objc

DSRecipients* recipients = [[DSRecipients alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes recipients from an envelope.
[apiInstance deleteRecipientsWithAccountId:recipients
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recipients** | [**DSRecipients***](DSRecipients*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

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
-(NSNumber*) deleteTabsWithAccountId: (DSTabs*) tabs
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Deletes the tabs associated with a recipient.

Deletes one or more tabs associated with a recipient in a draft envelope.

### Example 
```objc

DSTabs* tabs = [[DSTabs alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes the tabs associated with a recipient.
[apiInstance deleteTabsWithAccountId:tabs
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tabs** | [**DSTabs***](DSTabs*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTemplatesFromDocument**
```objc
-(NSNumber*) deleteTemplatesFromDocumentWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes a template from a document in an existing envelope.

Deletes the specified template from a document in an existing envelope.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Deletes a template from a document in an existing envelope.
[apiInstance deleteTemplatesFromDocumentWithAccountId:accountId
              envelopeId:envelopeId
              documentId:documentId
              templateId:templateId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteTemplatesFromDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteViewLink**
```objc
-(NSNumber*) deleteViewLinkWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(NSError* error)) handler;
```

Reserved: Expires a secure view link.

Reserved: Expires a secure view link

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Reserved: Expires a secure view link.
[apiInstance deleteViewLinkWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->deleteViewLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachment**
```objc
-(NSNumber*) getAttachmentWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    attachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(NSError* error)) handler;
```

Retrieves an attachment from the envelope.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* attachmentId = @"attachmentId_example"; // 

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Retrieves an attachment from the envelope.
[apiInstance getAttachmentWithAccountId:accountId
              envelopeId:envelopeId
              attachmentId:attachmentId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **attachmentId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachments**
```objc
-(NSNumber*) getAttachmentsWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeAttachmentsResult* output, NSError* error)) handler;
```

Returns a list of attachments associated with the specified envelope

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns a list of attachments associated with the specified envelope
[apiInstance getAttachmentsWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeAttachmentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getAttachments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeAttachmentsResult***](DSEnvelopeAttachmentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChunkedUpload**
```objc
-(NSNumber*) getChunkedUploadWithAccountId: (NSString*) include
    accountId: (NSString*) accountId
    chunkedUploadId: (NSString*) chunkedUploadId
        completionHandler: (void (^)(DSChunkedUploadResponse* output, NSError* error)) handler;
```

Retrieves the current metadata of a ChunkedUpload.

### Example 
```objc

NSString* include = @"include_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* chunkedUploadId = @"chunkedUploadId_example"; // 

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Retrieves the current metadata of a ChunkedUpload.
[apiInstance getChunkedUploadWithAccountId:include
              accountId:accountId
              chunkedUploadId:chunkedUploadId
          completionHandler: ^(DSChunkedUploadResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getChunkedUpload: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **chunkedUploadId** | **NSString***|  | 

### Return type

[**DSChunkedUploadResponse***](DSChunkedUploadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsumerDisclosure**
```objc
-(NSNumber*) getConsumerDisclosureWithAccountId: (NSString*) langCode2
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
    langCode: (NSString*) langCode
        completionHandler: (void (^)(DSConsumerDisclosure* output, NSError* error)) handler;
```

Reserved: Gets the Electronic Record and Signature Disclosure associated with the account.

Reserved: Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account.

### Example 
```objc

NSString* langCode2 = @"langCode_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.
NSString* langCode = @"langCode_example"; // The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to �browser� to automatically detect the browser language being used by the viewer and display the disclosure in that language.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Reserved: Gets the Electronic Record and Signature Disclosure associated with the account.
[apiInstance getConsumerDisclosureWithAccountId:langCode2
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
              langCode:langCode
          completionHandler: ^(DSConsumerDisclosure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getConsumerDisclosure: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **langCode2** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 
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
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSConsumerDisclosure* output, NSError* error)) handler;
```

Gets the Electronic Record and Signature Disclosure associated with the account.

Retrieves the Electronic Record and Signature Disclosure, with html formatting, associated with the account. You can use an optional query string to set the language for the disclosure.

### Example 
```objc

NSString* langCode = @"langCode_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the Electronic Record and Signature Disclosure associated with the account.
[apiInstance getConsumerDisclosureDefaultWithAccountId:langCode
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSConsumerDisclosure* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getConsumerDisclosureDefault: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **langCode** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSConsumerDisclosure***](DSConsumerDisclosure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocument**
```objc
-(NSNumber*) getDocumentWithAccountId: (NSString*) certificate
    encoding: (NSString*) encoding
    encrypt: (NSString*) encrypt
    language: (NSString*) language
    recipientId: (NSString*) recipientId
    showChanges: (NSString*) showChanges
    watermark: (NSString*) watermark
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Gets a document from an envelope.

Retrieves the specified document from the envelope. If the account has the Highlight Data Changes feature enabled, there is an option to request that any changes in the envelope be highlighted.  You can also use this method to retrieve a PDF containing the combined content of all documents and the certificate. If the account has the Highlight Data Changes feature enabled, there is an option to request that any changes in the envelope be highlighted.   To retrieve the combined content replace the `{documentId}` parameter in the endpoint with `combined`. /accounts/{accountId}/envelopes/{envelopeId}/documents/combined

### Example 
```objc

NSString* certificate = @"certificate_example"; // When set to **false**, the envelope signing certificate is removed from the download. (optional)
NSString* encoding = @"encoding_example"; //  (optional)
NSString* encrypt = @"encrypt_example"; // When set to **true**, the PDF bytes returned in the response are encrypted for all the key managers configured on your DocuSign account. The documents can be decrypted with the KeyManager Decrypt Document API. (optional)
NSString* language = @"language_example"; // Specifies the language for the Certificate of Completion in the response. The supported languages, with the language value shown in parenthesis, are: Chinese Simplified (zh_CN), , Chinese Traditional (zh_TW), Dutch (nl), English US (en), French (fr), German (de), Italian (it), Japanese (ja), Korean (ko), Portuguese (pt), Portuguese (Brazil) (pt_BR), Russian (ru), Spanish (es).  (optional)
NSString* recipientId = @"recipientId_example"; //  (optional)
NSString* showChanges = @"showChanges_example"; // When set to **true**, any changed fields for the returned PDF are highlighted in yellow and optional signatures or initials outlined in red.  (optional)
NSString* watermark = @"watermark_example"; // When set to **true**, the account has the watermark feature enabled, and the envelope is not complete, the watermark for the account is added to the PDF documents. This option can remove the watermark.  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets a document from an envelope.
[apiInstance getDocumentWithAccountId:certificate
              encoding:encoding
              encrypt:encrypt
              language:language
              recipientId:recipientId
              showChanges:showChanges
              watermark:watermark
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate** | **NSString***| When set to **false**, the envelope signing certificate is removed from the download. | [optional] 
 **encoding** | **NSString***|  | [optional] 
 **encrypt** | **NSString***| When set to **true**, the PDF bytes returned in the response are encrypted for all the key managers configured on your DocuSign account. The documents can be decrypted with the KeyManager Decrypt Document API. | [optional] 
 **language** | **NSString***| Specifies the language for the Certificate of Completion in the response. The supported languages, with the language value shown in parenthesis, are: Chinese Simplified (zh_CN), , Chinese Traditional (zh_TW), Dutch (nl), English US (en), French (fr), German (de), Italian (it), Japanese (ja), Korean (ko), Portuguese (pt), Portuguese (Brazil) (pt_BR), Russian (ru), Spanish (es).  | [optional] 
 **recipientId** | **NSString***|  | [optional] 
 **showChanges** | **NSString***| When set to **true**, any changed fields for the returned PDF are highlighted in yellow and optional signatures or initials outlined in red.  | [optional] 
 **watermark** | **NSString***| When set to **true**, the account has the watermark feature enabled, and the envelope is not complete, the watermark for the account is added to the PDF documents. This option can remove the watermark.  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
    pageNumber: (NSString*) pageNumber
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Gets a page image from an envelope for display.

Retrieves a page image for display from the specified envelope.

### Example 
```objc

NSString* dpi = @"dpi_example"; // Sets the dpi for the image. (optional)
NSString* maxHeight = @"maxHeight_example"; // Sets the maximum height for the page image in pixels. The dpi is recalculated based on this setting. (optional)
NSString* maxWidth = @"maxWidth_example"; // Sets the maximum width for the page image in pixels. The dpi is recalculated based on this setting. (optional)
NSString* showChanges = @"showChanges_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* pageNumber = @"pageNumber_example"; // The page number being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets a page image from an envelope for display.
[apiInstance getDocumentPageImageWithAccountId:dpi
              maxHeight:maxHeight
              maxWidth:maxWidth
              showChanges:showChanges
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
              pageNumber:pageNumber
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getDocumentPageImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dpi** | **NSString***| Sets the dpi for the image. | [optional] 
 **maxHeight** | **NSString***| Sets the maximum height for the page image in pixels. The dpi is recalculated based on this setting. | [optional] 
 **maxWidth** | **NSString***| Sets the maximum width for the page image in pixels. The dpi is recalculated based on this setting. | [optional] 
 **showChanges** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Returns tabs on the document.

### Example 
```objc

NSString* pageNumbers = @"pageNumbers_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns tabs on the document.
[apiInstance getDocumentTabsWithAccountId:pageNumbers
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getDocumentTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumbers** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailSettings**
```objc
-(NSNumber*) getEmailSettingsWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEmailSettings* output, NSError* error)) handler;
```

Gets the email setting overrides for an envelope.

Retrieves the email override settings for the specified envelope.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the email setting overrides for an envelope.
[apiInstance getEmailSettingsWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEmailSettings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getEmailSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEmailSettings***](DSEmailSettings.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEnvelope**
```objc
-(NSNumber*) getEnvelopeWithAccountId: (NSString*) advancedUpdate
    include: (NSString*) include
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelope* output, NSError* error)) handler;
```

Gets the status of a envelope.

Retrieves the overall status for the specified envelope.

### Example 
```objc

NSString* advancedUpdate = @"advancedUpdate_example"; // When true, envelope information can be added or modified. (optional)
NSString* include = @"include_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the status of a envelope.
[apiInstance getEnvelopeWithAccountId:advancedUpdate
              include:include
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getEnvelope: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **advancedUpdate** | **NSString***| When true, envelope information can be added or modified. | [optional] 
 **include** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelope***](DSEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormData**
```objc
-(NSNumber*) getFormDataWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeFormData* output, NSError* error)) handler;
```

Returns envelope form data for an existing envelope.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns envelope form data for an existing envelope.
[apiInstance getFormDataWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeFormData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getFormData: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeFormData***](DSEnvelopeFormData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLock**
```objc
-(NSNumber*) getLockWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler;
```

Gets envelope lock information.

Retrieves general information about the envelope lock.  If the call is made by the locked by user and the request has the same integrator key as original, then the `X-DocuSign-Edit` header and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets envelope lock information.
[apiInstance getLockWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSLockInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getLock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

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
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSNotification* output, NSError* error)) handler;
```

Gets envelope notification information.

Retrieves the envelope notification, reminders and expirations, information for an existing envelope.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets envelope notification information.
[apiInstance getNotificationSettingsWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSNotification* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getNotificationSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

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
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
    pageNumber: (NSString*) pageNumber
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Returns tabs on the specified page.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* pageNumber = @"pageNumber_example"; // The page number being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns tabs on the specified page.
[apiInstance getPageTabsWithAccountId:accountId
              envelopeId:envelopeId
              documentId:documentId
              pageNumber:pageNumber
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getPageTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
    envelopeId: (NSString*) envelopeId
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
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns document page image(s) based on input.
[apiInstance getPagesWithAccountId:count
              dpi:dpi
              maxHeight:maxHeight
              maxWidth:maxWidth
              nocache:nocache
              showChanges:showChanges
              startPosition:startPosition
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(DSPageImages* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getPages: %@", error);
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
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSPageImages***](DSPageImages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipientDocumentVisibility**
```objc
-(NSNumber*) getRecipientDocumentVisibilityWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSDocumentVisibilityList* output, NSError* error)) handler;
```

Returns document visibility for the recipients

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns document visibility for the recipients
[apiInstance getRecipientDocumentVisibilityWithAccountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSDocumentVisibilityList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getRecipientDocumentVisibility: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSDocumentVisibilityList***](DSDocumentVisibilityList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipientInitialsImage**
```objc
-(NSNumber*) getRecipientInitialsImageWithAccountId: (NSString*) includeChrome
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Gets the initials image for a user.

Retrieves the initials image for the specified user. The image is returned in the same format as it was uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId specified in the endpoint must match the authenticated user's user id and the user must be a member of the account.  The `signatureIdOrName` paramter accepts signature ID or signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly URL encode. If you use the user name, it is likely that the name includes spaces and you might need to URL encode the name before using it in the endpoint.   For example: \"Bob Smith\" to \"Bob%20Smith\"  Older envelopes might only contain chromed images. If getting the non-chromed image fails, try getting the chromed image.

### Example 
```objc

NSString* includeChrome = @"includeChrome_example"; // The added line and identifier around the initial image. Note: Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the initials image for a user.
[apiInstance getRecipientInitialsImageWithAccountId:includeChrome
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getRecipientInitialsImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeChrome** | **NSString***| The added line and identifier around the initial image. Note: Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

**NSURL***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/gif

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipientSignature**
```objc
-(NSNumber*) getRecipientSignatureWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSUserSignature* output, NSError* error)) handler;
```

Gets signature information for a signer or sign-in-person recipient.

Retrieves signature information for a signer or sign-in-person recipient.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets signature information for a signer or sign-in-person recipient.
[apiInstance getRecipientSignatureWithAccountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSUserSignature* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getRecipientSignature: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSUserSignature***](DSUserSignature.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipientSignatureImage**
```objc
-(NSNumber*) getRecipientSignatureImageWithAccountId: (NSString*) includeChrome
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Retrieve signature image information for a signer/sign-in-person recipient.

Retrieves the specified user signature image. The image is returned in the same format as uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureIdOrName` parameter accepts signature ID or signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that don't properly URL encode. If you use the user name, it is likely that the name includes spaces and you might need to URL encode the name before using it in the endpoint.   For example: \"Bob Smith\" to \"Bob%20Smith\"  Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image.

### Example 
```objc

NSString* includeChrome = @"includeChrome_example"; // When set to **true**, indicates the chromed version of the signature image should be retrieved. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Retrieve signature image information for a signer/sign-in-person recipient.
[apiInstance getRecipientSignatureImageWithAccountId:includeChrome
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getRecipientSignatureImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeChrome** | **NSString***| When set to **true**, indicates the chromed version of the signature image should be retrieved. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

**NSURL***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/gif

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplateRecipientDocumentVisibility**
```objc
-(NSNumber*) getTemplateRecipientDocumentVisibilityWithAccountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSDocumentVisibilityList* output, NSError* error)) handler;
```

Returns document visibility for the recipients

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Returns document visibility for the recipients
[apiInstance getTemplateRecipientDocumentVisibilityWithAccountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSDocumentVisibilityList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->getTemplateRecipientDocumentVisibility: %@", error);
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

[**DSDocumentVisibilityList***](DSDocumentVisibilityList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAuditEvents**
```objc
-(NSNumber*) listAuditEventsWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeAuditEventResponse* output, NSError* error)) handler;
```

Gets the envelope audit events for an envelope.

Gets the envelope audit events for the specified envelope.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the envelope audit events for an envelope.
[apiInstance listAuditEventsWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeAuditEventResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listAuditEvents: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeAuditEventResponse***](DSEnvelopeAuditEventResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomFields**
```objc
-(NSNumber*) listCustomFieldsWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSCustomFieldsEnvelope* output, NSError* error)) handler;
```

Gets the custom field information for the specified envelope.

Retrieves the custom field information for the specified envelope. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes, and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.  There are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. With a list custom field, the sender selects the value of the field from a pre-made list.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the custom field information for the specified envelope.
[apiInstance listCustomFieldsWithAccountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSCustomFieldsEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSCustomFieldsEnvelope***](DSCustomFieldsEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDocumentFields**
```objc
-(NSNumber*) listDocumentFieldsWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler;
```

Gets the custom document fields from an  existing envelope document.

Retrieves the custom document field information from an existing envelope document.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the custom document fields from an  existing envelope document.
[apiInstance listDocumentFieldsWithAccountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(DSDocumentFieldsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listDocumentFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
-(NSNumber*) listDocumentsWithAccountId: (NSString*) includeMetadata
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeDocumentsResult* output, NSError* error)) handler;
```

Gets a list of envelope documents.

Retrieves a list of documents associated with the specified envelope.

### Example 
```objc

NSString* includeMetadata = @"includeMetadata_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets a list of envelope documents.
[apiInstance listDocumentsWithAccountId:includeMetadata
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeDocumentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listDocuments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeMetadata** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeDocumentsResult***](DSEnvelopeDocumentsResult.md)

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
    includeMetadata: (NSString*) includeMetadata
    includeTabs: (NSString*) includeTabs
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSRecipients* output, NSError* error)) handler;
```

Gets the status of recipients for an envelope.

Retrieves the status of all recipients in a single envelope and identifies the current recipient in the routing list.   The `currentRoutingOrder` property of the response contains the `routingOrder` value of the current recipient indicating that the envelope has been sent to the recipient, but the recipient has not completed their actions.

### Example 
```objc

NSString* includeAnchorTabLocations = @"includeAnchorTabLocations_example"; //  When set to **true** and `include_tabs` is set to **true**, all tabs with anchor tab properties are included in the response.  (optional)
NSString* includeExtended = @"includeExtended_example"; //  When set to **true**, the extended properties are included in the response.  (optional)
NSString* includeMetadata = @"includeMetadata_example"; //  (optional)
NSString* includeTabs = @"includeTabs_example"; // When set to **true**, the tab information associated with the recipient is included in the response. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the status of recipients for an envelope.
[apiInstance listRecipientsWithAccountId:includeAnchorTabLocations
              includeExtended:includeExtended
              includeMetadata:includeMetadata
              includeTabs:includeTabs
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSRecipients* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeAnchorTabLocations** | **NSString***|  When set to **true** and &#x60;include_tabs&#x60; is set to **true**, all tabs with anchor tab properties are included in the response.  | [optional] 
 **includeExtended** | **NSString***|  When set to **true**, the extended properties are included in the response.  | [optional] 
 **includeMetadata** | **NSString***|  | [optional] 
 **includeTabs** | **NSString***| When set to **true**, the tab information associated with the recipient is included in the response. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSRecipients***](DSRecipients.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStatus**
```objc
-(NSNumber*) listStatusWithAccountId: (NSString*) email
    fromDate: (NSString*) fromDate
    startPosition: (NSString*) startPosition
    toDate: (NSString*) toDate
    envelopeIdsRequest: (DSEnvelopeIdsRequest*) envelopeIdsRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSEnvelopesInformation* output, NSError* error)) handler;
```

Gets the envelope status for the specified envelopes.

Retrieves the envelope status for the specified envelopes.

### Example 
```objc

NSString* email = @"email_example"; //  (optional)
NSString* fromDate = @"fromDate_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; //  (optional)
NSString* toDate = @"toDate_example"; //  (optional)
DSEnvelopeIdsRequest* envelopeIdsRequest = [[DSEnvelopeIdsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the envelope status for the specified envelopes.
[apiInstance listStatusWithAccountId:email
              fromDate:fromDate
              startPosition:startPosition
              toDate:toDate
              envelopeIdsRequest:envelopeIdsRequest
              accountId:accountId
          completionHandler: ^(DSEnvelopesInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***|  | [optional] 
 **fromDate** | **NSString***|  | [optional] 
 **startPosition** | **NSString***|  | [optional] 
 **toDate** | **NSString***|  | [optional] 
 **envelopeIdsRequest** | [**DSEnvelopeIdsRequest***](DSEnvelopeIdsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSEnvelopesInformation***](DSEnvelopesInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStatusChanges**
```objc
-(NSNumber*) listStatusChangesWithAccountId: (NSString*) acStatus
    block: (NSString*) block
    count: (NSString*) count
    customField: (NSString*) customField
    email: (NSString*) email
    envelopeIds: (NSString*) envelopeIds
    exclude: (NSString*) exclude
    folderIds: (NSString*) folderIds
    folderTypes: (NSString*) folderTypes
    fromDate: (NSString*) fromDate
    fromToStatus: (NSString*) fromToStatus
    include: (NSString*) include
    includePurgeInformation: (NSString*) includePurgeInformation
    intersectingFolderIds: (NSString*) intersectingFolderIds
    order: (NSString*) order
    orderBy: (NSString*) orderBy
    powerformids: (NSString*) powerformids
    searchText: (NSString*) searchText
    startPosition: (NSString*) startPosition
    status: (NSString*) status
    toDate: (NSString*) toDate
    transactionIds: (NSString*) transactionIds
    userFilter: (NSString*) userFilter
    userId: (NSString*) userId
    userName: (NSString*) userName
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSEnvelopesInformation* output, NSError* error)) handler;
```

Gets status changes for one or more envelopes.

Retrieves envelope status changes for all envelopes. You can modify the information returned by adding query strings to limit the request to check between certain dates and times, or for certain envelopes, or for certain status codes. It is recommended that you use one or more of the query strings in order to limit the size of the response.  ### Important: Unless you are requesting the status for specific envelopes (using the `envelopeIds` or `transactionIds` properties), you must add a set the `from_date` property in the request.  Getting envelope status using `transactionIds` is useful for offline signing situations where it can be used determine if an envelope was created or not, for the cases where a network connection was lost, before the envelope status could be returned.  ### Request Envelope Status Notes ###  The REST API GET /envelopes call uses certain filters to find results. In some cases requests are check for \"any status change\" instead of the just the single status requested. In these cases, more envelopes might be returned by the request than otherwise would be. For example, for a request with the begin date is set to Jan 1st, an end date set to Jan 7th and the status qualifier (`from_to_status`) set to `Delivered` &mdash; the response set might contain envelopes that were created during that time period, but not delivered during the time period.  To avoid unnecessary database queries, the DocuSign system checks requests to ensure that the added filters will not result in a zero-size response before acting on the request. The following table shows the valid envelope statuses (in the Valid Current Statuses column) for the status qualifiers in the request. If the status and status qualifiers in the API request do not contain any of the values shown in the valid current statuses column, then an empty list is returned.  For example, a request with a status qualifier (from_to_status) of `Delivered` and a status of \"`Created`,`Sent`\", DocuSign will always return an empty list. This is because the request essentially translates to: find the envelopes that were delivered between the begin and end dates that have a current status of `Created` or `Sent`, and since an envelope that has been delivered can never have a status of `Created` or `Sent`, a zero-size response would be generated. In this case, DocuSign does not run the request, but just returns the empty list.  Client applications should check that the statuses they are requesting make sense for a given status qualifier.

### Example 
```objc

NSString* acStatus = @"acStatus_example"; // Specifies the Authoritative Copy Status for the envelopes. The possible values are: Unknown, Original, Transferred, AuthoritativeCopy, AuthoritativeCopyExportPending, AuthoritativeCopyExported, DepositPending, Deposited, DepositedEO, or DepositFailed. (optional)
NSString* block = @"block_example"; //  (optional)
NSString* count = @"count_example"; //  (optional)
NSString* customField = @"customField_example"; // This specifies the envelope custom field name and value searched for in the envelope information. The value portion of the query can use partial strings by adding '%' (percent sign) around the custom field query value.   Example 1: If you have an envelope custom field called \"Region\" and you want to search for all envelopes where the value is \"West\" you would use the query: `?custom_field=Region=West`.   Example 2: To search for envelopes where the `ApplicationID` custom field has the value or partial value of \"DocuSign\" in field, the query would be: `?custom_field=ApplicationId=%DocuSign%` This would find envelopes where the custom field value is \"DocuSign for Salesforce\" or \"DocuSign envelope.\"   (optional)
NSString* email = @"email_example"; //  (optional)
NSString* envelopeIds = @"envelopeIds_example"; //  (optional)
NSString* exclude = @"exclude_example"; //  (optional)
NSString* folderIds = @"folderIds_example"; //  (optional)
NSString* folderTypes = @"folderTypes_example"; //  (optional)
NSString* fromDate = @"fromDate_example"; // The date/time setting that specifies the date/time when the request begins checking for status changes for envelopes in the account.  This is required unless 'envelopeId's are used. (optional)
NSString* fromToStatus = @"fromToStatus_example"; // This is the status type checked for in the `from_date`/`to_date` period. If `changed` is specified, then envelopes that changed status during the period are found. If for example, `created` is specified, then envelopes created during the period are found. Default is `changed`.   Possible values are: Voided, Changed, Created, Deleted, Sent, Delivered, Signed, Completed, Declined, TimedOut and Processing. (optional)
NSString* include = @"include_example"; //  (optional)
NSString* includePurgeInformation = @"includePurgeInformation_example"; //  (optional)
NSString* intersectingFolderIds = @"intersectingFolderIds_example"; //  (optional)
NSString* order = @"order_example"; //  (optional)
NSString* orderBy = @"orderBy_example"; //  (optional)
NSString* powerformids = @"powerformids_example"; //  (optional)
NSString* searchText = @"searchText_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; //  (optional)
NSString* status = @"status_example"; // The list of current statuses to include in the response. By default, all envelopes found are returned. If values are specified, then of the envelopes found, only those with the current status specified are returned in the results.   Possible values are: Voided, Created, Deleted, Sent, Delivered, Signed, Completed, Declined, TimedOut and Processing. (optional)
NSString* toDate = @"toDate_example"; // Optional date/time setting that specifies the date/time when the request stops for status changes for envelopes in the account. If no entry, the system uses the time of the call as the `to_date`.  (optional)
NSString* transactionIds = @"transactionIds_example"; // If included in the query string, this is a comma separated list of envelope `transactionId`s.   If included in the `request_body`, this is a list of envelope `transactionId`s.   ###### Note: `transactionId`s are only valid in the DocuSign system for seven days.  (optional)
NSString* userFilter = @"userFilter_example"; //  (optional)
NSString* userId = @"userId_example"; //  (optional)
NSString* userName = @"userName_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets status changes for one or more envelopes.
[apiInstance listStatusChangesWithAccountId:acStatus
              block:block
              count:count
              customField:customField
              email:email
              envelopeIds:envelopeIds
              exclude:exclude
              folderIds:folderIds
              folderTypes:folderTypes
              fromDate:fromDate
              fromToStatus:fromToStatus
              include:include
              includePurgeInformation:includePurgeInformation
              intersectingFolderIds:intersectingFolderIds
              order:order
              orderBy:orderBy
              powerformids:powerformids
              searchText:searchText
              startPosition:startPosition
              status:status
              toDate:toDate
              transactionIds:transactionIds
              userFilter:userFilter
              userId:userId
              userName:userName
              accountId:accountId
          completionHandler: ^(DSEnvelopesInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listStatusChanges: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acStatus** | **NSString***| Specifies the Authoritative Copy Status for the envelopes. The possible values are: Unknown, Original, Transferred, AuthoritativeCopy, AuthoritativeCopyExportPending, AuthoritativeCopyExported, DepositPending, Deposited, DepositedEO, or DepositFailed. | [optional] 
 **block** | **NSString***|  | [optional] 
 **count** | **NSString***|  | [optional] 
 **customField** | **NSString***| This specifies the envelope custom field name and value searched for in the envelope information. The value portion of the query can use partial strings by adding &#39;%&#39; (percent sign) around the custom field query value.   Example 1: If you have an envelope custom field called \&quot;Region\&quot; and you want to search for all envelopes where the value is \&quot;West\&quot; you would use the query: &#x60;?custom_field&#x3D;Region&#x3D;West&#x60;.   Example 2: To search for envelopes where the &#x60;ApplicationID&#x60; custom field has the value or partial value of \&quot;DocuSign\&quot; in field, the query would be: &#x60;?custom_field&#x3D;ApplicationId&#x3D;%DocuSign%&#x60; This would find envelopes where the custom field value is \&quot;DocuSign for Salesforce\&quot; or \&quot;DocuSign envelope.\&quot;   | [optional] 
 **email** | **NSString***|  | [optional] 
 **envelopeIds** | **NSString***|  | [optional] 
 **exclude** | **NSString***|  | [optional] 
 **folderIds** | **NSString***|  | [optional] 
 **folderTypes** | **NSString***|  | [optional] 
 **fromDate** | **NSString***| The date/time setting that specifies the date/time when the request begins checking for status changes for envelopes in the account.  This is required unless &#39;envelopeId&#39;s are used. | [optional] 
 **fromToStatus** | **NSString***| This is the status type checked for in the &#x60;from_date&#x60;/&#x60;to_date&#x60; period. If &#x60;changed&#x60; is specified, then envelopes that changed status during the period are found. If for example, &#x60;created&#x60; is specified, then envelopes created during the period are found. Default is &#x60;changed&#x60;.   Possible values are: Voided, Changed, Created, Deleted, Sent, Delivered, Signed, Completed, Declined, TimedOut and Processing. | [optional] 
 **include** | **NSString***|  | [optional] 
 **includePurgeInformation** | **NSString***|  | [optional] 
 **intersectingFolderIds** | **NSString***|  | [optional] 
 **order** | **NSString***|  | [optional] 
 **orderBy** | **NSString***|  | [optional] 
 **powerformids** | **NSString***|  | [optional] 
 **searchText** | **NSString***|  | [optional] 
 **startPosition** | **NSString***|  | [optional] 
 **status** | **NSString***| The list of current statuses to include in the response. By default, all envelopes found are returned. If values are specified, then of the envelopes found, only those with the current status specified are returned in the results.   Possible values are: Voided, Created, Deleted, Sent, Delivered, Signed, Completed, Declined, TimedOut and Processing. | [optional] 
 **toDate** | **NSString***| Optional date/time setting that specifies the date/time when the request stops for status changes for envelopes in the account. If no entry, the system uses the time of the call as the &#x60;to_date&#x60;.  | [optional] 
 **transactionIds** | **NSString***| If included in the query string, this is a comma separated list of envelope &#x60;transactionId&#x60;s.   If included in the &#x60;request_body&#x60;, this is a list of envelope &#x60;transactionId&#x60;s.   ###### Note: &#x60;transactionId&#x60;s are only valid in the DocuSign system for seven days.  | [optional] 
 **userFilter** | **NSString***|  | [optional] 
 **userId** | **NSString***|  | [optional] 
 **userName** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSEnvelopesInformation***](DSEnvelopesInformation.md)

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
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Gets the tabs information for a signer or sign-in-person recipient in an envelope.

Retrieves information about the tabs associated with a recipient in a draft envelope.

### Example 
```objc

NSString* includeAnchorTabLocations = @"includeAnchorTabLocations_example"; // When set to **true**, all tabs with anchor tab properties are included in the response.  (optional)
NSString* includeMetadata = @"includeMetadata_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the tabs information for a signer or sign-in-person recipient in an envelope.
[apiInstance listTabsWithAccountId:includeAnchorTabLocations
              includeMetadata:includeMetadata
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeAnchorTabLocations** | **NSString***| When set to **true**, all tabs with anchor tab properties are included in the response.  | [optional] 
 **includeMetadata** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
-(NSNumber*) listTemplatesWithAccountId: (NSString*) include
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSTemplateInformation* output, NSError* error)) handler;
```

Get List of Templates used in an Envelope

This returns a list of the server-side templates, their name and ID, used in an envelope. 

### Example 
```objc

NSString* include = @"include_example"; // The possible values are:  matching_applied – This returns template matching information for the template. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Get List of Templates used in an Envelope
[apiInstance listTemplatesWithAccountId:include
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSTemplateInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listTemplates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***| The possible values are:  matching_applied – This returns template matching information for the template. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSTemplateInformation***](DSTemplateInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTemplatesForDocument**
```objc
-(NSNumber*) listTemplatesForDocumentWithAccountId: (NSString*) include
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSTemplateInformation* output, NSError* error)) handler;
```

Gets the templates associated with a document in an existing envelope.

Retrieves the templates associated with a document in the specified envelope.

### Example 
```objc

NSString* include = @"include_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Gets the templates associated with a document in an existing envelope.
[apiInstance listTemplatesForDocumentWithAccountId:include
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(DSTemplateInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->listTemplatesForDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

[**DSTemplateInformation***](DSTemplateInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAttachment**
```objc
-(NSNumber*) putAttachmentWithAccountId: (DSAttachment*) attachment
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    attachmentId: (NSString*) attachmentId
        completionHandler: (void (^)(DSEnvelopeAttachmentsResult* output, NSError* error)) handler;
```

Add an attachment to a DRAFT or IN-PROCESS envelope.

### Example 
```objc

DSAttachment* attachment = [[DSAttachment alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* attachmentId = @"attachmentId_example"; // 

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Add an attachment to a DRAFT or IN-PROCESS envelope.
[apiInstance putAttachmentWithAccountId:attachment
              accountId:accountId
              envelopeId:envelopeId
              attachmentId:attachmentId
          completionHandler: ^(DSEnvelopeAttachmentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->putAttachment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment** | [**DSAttachment***](DSAttachment*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **attachmentId** | **NSString***|  | 

### Return type

[**DSEnvelopeAttachmentsResult***](DSEnvelopeAttachmentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAttachments**
```objc
-(NSNumber*) putAttachmentsWithAccountId: (DSEnvelopeAttachmentsRequest*) envelopeAttachmentsRequest
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeAttachmentsResult* output, NSError* error)) handler;
```

Add one or more attachments to a DRAFT or IN-PROCESS envelope.

### Example 
```objc

DSEnvelopeAttachmentsRequest* envelopeAttachmentsRequest = [[DSEnvelopeAttachmentsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Add one or more attachments to a DRAFT or IN-PROCESS envelope.
[apiInstance putAttachmentsWithAccountId:envelopeAttachmentsRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeAttachmentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->putAttachments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **envelopeAttachmentsRequest** | [**DSEnvelopeAttachmentsRequest***](DSEnvelopeAttachmentsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeAttachmentsResult***](DSEnvelopeAttachmentsResult.md)

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
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
    pageNumber: (NSString*) pageNumber
        completionHandler: (void (^)(NSError* error)) handler;
```

Rotates page image from an envelope for display.

Rotates page image from an envelope for display. The page image can be rotated to the left or right.

### Example 
```objc

DSPageRequest* pageRequest = [[DSPageRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.
NSString* pageNumber = @"pageNumber_example"; // The page number being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Rotates page image from an envelope for display.
[apiInstance rotateDocumentPageWithAccountId:pageRequest
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
              pageNumber:pageNumber
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->rotateDocumentPage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageRequest** | [**DSPageRequest***](DSPageRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
-(NSNumber*) updateWithAccountId: (NSString*) advancedUpdate
    resendEnvelope: (NSString*) resendEnvelope
    envelope: (DSEnvelope*) envelope
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeUpdateSummary* output, NSError* error)) handler;
```

Send Draft Envelope/Void Envelope/Move/Purge Envelope/Modify draft

The Put Envelopes endpoint provides the following functionality:  * Sends the specified single draft envelope. Add {\"status\":\"sent\"} to the request body to send the envelope.  * Voids the specified in-process envelope. Add {\"status\":\"voided\", \"voidedReason\":\"The reason for voiding the envelope\"} to the request body to void the envelope.  * Replaces the current email subject and message for a draft envelope. Add {\"emailSubject\":\"subject\",  \"emailBlurb\":\"message\"}  to the request body to modify the subject and message.  * Place the envelope documents and envelope metadata in a purge queue so that this information is removed from the DocuSign system. Add {\"purgeState\":\"purge type\"} to the request body.  *Additional information on purging documents*  The purge request can only be used for completed envelopes that are not marked as the authoritative copy. The requesting user must have permission to purge documents and must be the sender (the requesting user can act as the sender using Send On Behalf Of).  ###### Note: If you have set the Document Retention policy on your account, envelope documents are automatically placed in the purge queue and the warning emails are sent at the end of the retention period.  ###### Note: You can set the Document Retention policy in the Classic DocuSign Experience by specifying the number of days to retain documents.  ###### Note: Setting a Document Retention policy is the same as setting a schedule for purging documents.  When the purge request is initiated the envelope documents, or documents and envelope metadata, are placed in a purge queue for deletion in 14 days. A warning email notification is sent to the sender and recipients associated with the envelope, notifying them that the envelope documents will be deleted in 14 days and providing a link to the documents. A second email is sent 7 days later with the same message. At the end of the 14-day period, the envelope documents are deleted from the system.  If `purgeState=\"documents_queued\"` is used in the request, then only the documents are deleted and any corresponding attachments and tabs remain in the DocuSign system. If `purgeState= \"documents_and_metadata_queued\"` is used in the request, then the documents, attachments, and tabs are deleted.

### Example 
```objc

NSString* advancedUpdate = @"advancedUpdate_example"; // When set to **true**, allows the caller to update recipients, tabs, custom fields, notification, email settings and other envelope attributes. (optional)
NSString* resendEnvelope = @"resendEnvelope_example"; // When set to **true**, sends the specified envelope again. (optional)
DSEnvelope* envelope = [[DSEnvelope alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Send Draft Envelope/Void Envelope/Move/Purge Envelope/Modify draft
[apiInstance updateWithAccountId:advancedUpdate
              resendEnvelope:resendEnvelope
              envelope:envelope
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeUpdateSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->update: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **advancedUpdate** | **NSString***| When set to **true**, allows the caller to update recipients, tabs, custom fields, notification, email settings and other envelope attributes. | [optional] 
 **resendEnvelope** | **NSString***| When set to **true**, sends the specified envelope again. | [optional] 
 **envelope** | [**DSEnvelope***](DSEnvelope*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeUpdateSummary***](DSEnvelopeUpdateSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChunkedUpload**
```objc
-(NSNumber*) updateChunkedUploadWithAccountId: (NSString*) action
    accountId: (NSString*) accountId
    chunkedUploadId: (NSString*) chunkedUploadId
        completionHandler: (void (^)(DSChunkedUploadResponse* output, NSError* error)) handler;
```

Integrity-Check and Commit a ChunkedUpload, readying it for use elsewhere.

### Example 
```objc

NSString* action = @"action_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* chunkedUploadId = @"chunkedUploadId_example"; // 

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Integrity-Check and Commit a ChunkedUpload, readying it for use elsewhere.
[apiInstance updateChunkedUploadWithAccountId:action
              accountId:accountId
              chunkedUploadId:chunkedUploadId
          completionHandler: ^(DSChunkedUploadResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateChunkedUpload: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **chunkedUploadId** | **NSString***|  | 

### Return type

[**DSChunkedUploadResponse***](DSChunkedUploadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChunkedUploadPart**
```objc
-(NSNumber*) updateChunkedUploadPartWithAccountId: (DSChunkedUploadRequest*) chunkedUploadRequest
    accountId: (NSString*) accountId
    chunkedUploadId: (NSString*) chunkedUploadId
    chunkedUploadPartSeq: (NSString*) chunkedUploadPartSeq
        completionHandler: (void (^)(DSChunkedUploadResponse* output, NSError* error)) handler;
```

Add a chunk, a chunk 'part', to an existing ChunkedUpload.

### Example 
```objc

DSChunkedUploadRequest* chunkedUploadRequest = [[DSChunkedUploadRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* chunkedUploadId = @"chunkedUploadId_example"; // 
NSString* chunkedUploadPartSeq = @"chunkedUploadPartSeq_example"; // 

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Add a chunk, a chunk 'part', to an existing ChunkedUpload.
[apiInstance updateChunkedUploadPartWithAccountId:chunkedUploadRequest
              accountId:accountId
              chunkedUploadId:chunkedUploadId
              chunkedUploadPartSeq:chunkedUploadPartSeq
          completionHandler: ^(DSChunkedUploadResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateChunkedUploadPart: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chunkedUploadRequest** | [**DSChunkedUploadRequest***](DSChunkedUploadRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **chunkedUploadId** | **NSString***|  | 
 **chunkedUploadPartSeq** | **NSString***|  | 

### Return type

[**DSChunkedUploadResponse***](DSChunkedUploadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomFields**
```objc
-(NSNumber*) updateCustomFieldsWithAccountId: (DSCustomFields*) customFields
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler;
```

Updates envelope custom fields in an envelope.

Updates the envelope custom fields in draft and in-process envelopes.  Each custom field used in an envelope must have a unique name. 

### Example 
```objc

DSCustomFields* customFields = [[DSCustomFields alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates envelope custom fields in an envelope.
[apiInstance updateCustomFieldsWithAccountId:customFields
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSCustomFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateCustomFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customFields** | [**DSCustomFields***](DSCustomFields*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

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
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(NSError* error)) handler;
```

Adds a document to an existing draft envelope.

Adds a document to an existing draft envelope.

### Example 
```objc

NSString* applyDocumentFields = @"applyDocumentFields_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Adds a document to an existing draft envelope.
[apiInstance updateDocumentWithAccountId:applyDocumentFields
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applyDocumentFields** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **documentId** | **NSString***| The ID of the document being accessed. | 

### Return type

void (empty response body)

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
    envelopeId: (NSString*) envelopeId
    documentId: (NSString*) documentId
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error)) handler;
```

Updates existing custom document fields in an existing envelope document.

Updates existing custom document fields in an existing envelope document.

### Example 
```objc

DSDocumentFieldsInformation* documentFieldsInformation = [[DSDocumentFieldsInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* documentId = @"documentId_example"; // The ID of the document being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates existing custom document fields in an existing envelope document.
[apiInstance updateDocumentFieldsWithAccountId:documentFieldsInformation
              accountId:accountId
              envelopeId:envelopeId
              documentId:documentId
          completionHandler: ^(DSDocumentFieldsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateDocumentFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentFieldsInformation** | [**DSDocumentFieldsInformation***](DSDocumentFieldsInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
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
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEnvelopeDocumentsResult* output, NSError* error)) handler;
```

Adds one or more documents to an existing envelope document.

Adds one or more documents to an existing envelope document.

### Example 
```objc

NSString* applyDocumentFields = @"applyDocumentFields_example"; // When true, Document fields can be added or modified while adding or modifying envelope documents. (optional)
DSEnvelopeDefinition* envelopeDefinition = [[DSEnvelopeDefinition alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Adds one or more documents to an existing envelope document.
[apiInstance updateDocumentsWithAccountId:applyDocumentFields
              envelopeDefinition:envelopeDefinition
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEnvelopeDocumentsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateDocuments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applyDocumentFields** | **NSString***| When true, Document fields can be added or modified while adding or modifying envelope documents. | [optional] 
 **envelopeDefinition** | [**DSEnvelopeDefinition***](DSEnvelopeDefinition*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEnvelopeDocumentsResult***](DSEnvelopeDocumentsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmailSettings**
```objc
-(NSNumber*) updateEmailSettingsWithAccountId: (DSEmailSettings*) emailSettings
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSEmailSettings* output, NSError* error)) handler;
```

Updates the email setting overrides for an envelope.

Updates the existing email override settings for the specified envelope. Note that modifying email settings will only affect email communications that occur after the modification was made.  This can also be used to delete an individual email override setting by using an empty string for the value to be deleted.

### Example 
```objc

DSEmailSettings* emailSettings = [[DSEmailSettings alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates the email setting overrides for an envelope.
[apiInstance updateEmailSettingsWithAccountId:emailSettings
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSEmailSettings* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateEmailSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailSettings** | [**DSEmailSettings***](DSEmailSettings*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSEmailSettings***](DSEmailSettings.md)

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
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSLockInformation* output, NSError* error)) handler;
```

Updates an envelope lock.

Updates the lock duration time or update the `lockedByApp` property information for the specified envelope. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information and the `X-DocuSign-Edit` header must be included or an error will be generated.

### Example 
```objc

DSLockRequest* lockRequest = [[DSLockRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates an envelope lock.
[apiInstance updateLockWithAccountId:lockRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSLockInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateLock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lockRequest** | [**DSLockRequest***](DSLockRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

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
-(NSNumber*) updateNotificationSettingsWithAccountId: (DSEnvelopeNotificationRequest*) envelopeNotificationRequest
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSNotification* output, NSError* error)) handler;
```

Sets envelope notification (Reminders/Expirations) structure for an existing envelope.

### Example 
```objc

DSEnvelopeNotificationRequest* envelopeNotificationRequest = [[DSEnvelopeNotificationRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Sets envelope notification (Reminders/Expirations) structure for an existing envelope.
[apiInstance updateNotificationSettingsWithAccountId:envelopeNotificationRequest
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSNotification* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateNotificationSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **envelopeNotificationRequest** | [**DSEnvelopeNotificationRequest***](DSEnvelopeNotificationRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSNotification***](DSNotification.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecipientDocumentVisibility**
```objc
-(NSNumber*) updateRecipientDocumentVisibilityWithAccountId: (DSDocumentVisibilityList*) documentVisibilityList
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSDocumentVisibilityList* output, NSError* error)) handler;
```

Updates document visibility for the recipients

### Example 
```objc

DSDocumentVisibilityList* documentVisibilityList = [[DSDocumentVisibilityList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates document visibility for the recipients
[apiInstance updateRecipientDocumentVisibilityWithAccountId:documentVisibilityList
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSDocumentVisibilityList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateRecipientDocumentVisibility: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentVisibilityList** | [**DSDocumentVisibilityList***](DSDocumentVisibilityList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSDocumentVisibilityList***](DSDocumentVisibilityList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecipientInitialsImage**
```objc
-(NSNumber*) updateRecipientInitialsImageWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(NSError* error)) handler;
```

Sets the initials image for an accountless signer.

Updates the initials image for a signer that does not have a DocuSign account. The supported image formats for this file are: gif, png, jpeg, and bmp. The file size must be less than 200K.  For the Authentication/Authorization for this call, the credentials must match the sender of the envelope, the recipient must be an accountless signer or in person signer. The account must have the `CanSendEnvelope` property set to **true** and the `ExpressSendOnly` property in `SendingUser` structure must be set to **false**.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Sets the initials image for an accountless signer.
[apiInstance updateRecipientInitialsImageWithAccountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateRecipientInitialsImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecipientSignatureImage**
```objc
-(NSNumber*) updateRecipientSignatureImageWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(NSError* error)) handler;
```

Sets the signature image for an accountless signer.

Updates the signature image for an accountless signer. The supported image formats for this file are: gif, png, jpeg, and bmp. The file size must be less than 200K.  For the Authentication/Authorization for this call, the credentials must match the sender of the envelope, the recipient must be an accountless signer or in person signer. The account must have the `CanSendEnvelope` property set to **true** and the `ExpressSendOnly` property in `SendingUser` structure must be set to **false**.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Sets the signature image for an accountless signer.
[apiInstance updateRecipientSignatureImageWithAccountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateRecipientSignatureImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecipients**
```objc
-(NSNumber*) updateRecipientsWithAccountId: (NSString*) resendEnvelope
    recipients: (DSRecipients*) recipients
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSRecipientsUpdateSummary* output, NSError* error)) handler;
```

Updates recipients in a draft envelope or corrects recipient information for an in process envelope.

Updates recipients in a draft envelope or corrects recipient information for an in process envelope.   For draft envelopes, you can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.  Once an envelope has been sent, you can only edit: `email`, `userName`, `signerName`, `routingOrder`, `faxNumber`, and `deliveryMethod`. You can also select to resend an envelope by using the `resend_envelope` option.  If you send information for a recipient that does not already exist in a draft envelope, the recipient is added to the envelope (similar to the POST).

### Example 
```objc

NSString* resendEnvelope = @"resendEnvelope_example"; // When set to **true**, resends the   envelope if the new recipient's routing order is before or the same as the envelope’s next recipient. (optional)
DSRecipients* recipients = [[DSRecipients alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates recipients in a draft envelope or corrects recipient information for an in process envelope.
[apiInstance updateRecipientsWithAccountId:resendEnvelope
              recipients:recipients
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSRecipientsUpdateSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendEnvelope** | **NSString***| When set to **true**, resends the   envelope if the new recipient&#39;s routing order is before or the same as the envelope’s next recipient. | [optional] 
 **recipients** | [**DSRecipients***](DSRecipients*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSRecipientsUpdateSummary***](DSRecipientsUpdateSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecipientsDocumentVisibility**
```objc
-(NSNumber*) updateRecipientsDocumentVisibilityWithAccountId: (DSDocumentVisibilityList*) documentVisibilityList
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
        completionHandler: (void (^)(DSDocumentVisibilityList* output, NSError* error)) handler;
```

Updates document visibility for the recipients

### Example 
```objc

DSDocumentVisibilityList* documentVisibilityList = [[DSDocumentVisibilityList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates document visibility for the recipients
[apiInstance updateRecipientsDocumentVisibilityWithAccountId:documentVisibilityList
              accountId:accountId
              envelopeId:envelopeId
          completionHandler: ^(DSDocumentVisibilityList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateRecipientsDocumentVisibility: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentVisibilityList** | [**DSDocumentVisibilityList***](DSDocumentVisibilityList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 

### Return type

[**DSDocumentVisibilityList***](DSDocumentVisibilityList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTabs**
```objc
-(NSNumber*) updateTabsWithAccountId: (DSTabs*) tabs
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTabs* output, NSError* error)) handler;
```

Updates the tabs for a recipient.  

Updates one or more tabs for a recipient in a draft envelope.

### Example 
```objc

DSTabs* tabs = [[DSTabs alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates the tabs for a recipient.  
[apiInstance updateTabsWithAccountId:tabs
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSTabs* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateTabs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tabs** | [**DSTabs***](DSTabs*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSTabs***](DSTabs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplateRecipientDocumentVisibility**
```objc
-(NSNumber*) updateTemplateRecipientDocumentVisibilityWithAccountId: (DSTemplateDocumentVisibilityList*) templateDocumentVisibilityList
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSTemplateDocumentVisibilityList* output, NSError* error)) handler;
```

Updates document visibility for the recipients

### Example 
```objc

DSTemplateDocumentVisibilityList* templateDocumentVisibilityList = [[DSTemplateDocumentVisibilityList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates document visibility for the recipients
[apiInstance updateTemplateRecipientDocumentVisibilityWithAccountId:templateDocumentVisibilityList
              accountId:accountId
              templateId:templateId
              recipientId:recipientId
          completionHandler: ^(DSTemplateDocumentVisibilityList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateTemplateRecipientDocumentVisibility: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateDocumentVisibilityList** | [**DSTemplateDocumentVisibilityList***](DSTemplateDocumentVisibilityList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSTemplateDocumentVisibilityList***](DSTemplateDocumentVisibilityList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTemplateRecipientsDocumentVisibility**
```objc
-(NSNumber*) updateTemplateRecipientsDocumentVisibilityWithAccountId: (DSTemplateDocumentVisibilityList*) templateDocumentVisibilityList
    accountId: (NSString*) accountId
    templateId: (NSString*) templateId
        completionHandler: (void (^)(DSTemplateDocumentVisibilityList* output, NSError* error)) handler;
```

Updates document visibility for the recipients

### Example 
```objc

DSTemplateDocumentVisibilityList* templateDocumentVisibilityList = [[DSTemplateDocumentVisibilityList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* templateId = @"templateId_example"; // The ID of the template being accessed.

DSEnvelopesApi*apiInstance = [[DSEnvelopesApi alloc] init];

// Updates document visibility for the recipients
[apiInstance updateTemplateRecipientsDocumentVisibilityWithAccountId:templateDocumentVisibilityList
              accountId:accountId
              templateId:templateId
          completionHandler: ^(DSTemplateDocumentVisibilityList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSEnvelopesApi->updateTemplateRecipientsDocumentVisibility: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateDocumentVisibilityList** | [**DSTemplateDocumentVisibilityList***](DSTemplateDocumentVisibilityList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **templateId** | **NSString***| The ID of the template being accessed. | 

### Return type

[**DSTemplateDocumentVisibilityList***](DSTemplateDocumentVisibilityList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

