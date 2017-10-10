# DSBulkEnvelopesApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRecipients**](DSBulkEnvelopesApi.md#deleterecipients) | **DELETE** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients | Deletes the bulk recipient file from an envelope.
[**get**](DSBulkEnvelopesApi.md#get) | **GET** /v2/accounts/{accountId}/bulk_envelopes/{batchId} | Gets the status of a specified bulk send operation.
[**getRecipients**](DSBulkEnvelopesApi.md#getrecipients) | **GET** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients | Gets the bulk recipient file from an envelope.
[**list**](DSBulkEnvelopesApi.md#list) | **GET** /v2/accounts/{accountId}/bulk_envelopes | Gets status information about bulk recipient batches.
[**updateRecipients**](DSBulkEnvelopesApi.md#updaterecipients) | **PUT** /v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/bulk_recipients | Adds or replaces envelope bulk recipients.


# **deleteRecipients**
```objc
-(NSNumber*) deleteRecipientsWithAccountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSBulkRecipientsUpdateResponse* output, NSError* error)) handler;
```

Deletes the bulk recipient file from an envelope.

Deletes the bulk recipient file from an envelope. This cannot be used if the envelope has been sent.  After using this, the `bulkRecipientsUri` property is not returned in subsequent GET calls for the envelope, but the recipient will remain as a bulk recipient.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSBulkEnvelopesApi*apiInstance = [[DSBulkEnvelopesApi alloc] init];

// Deletes the bulk recipient file from an envelope.
[apiInstance deleteRecipientsWithAccountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSBulkRecipientsUpdateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBulkEnvelopesApi->deleteRecipients: %@", error);
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

[**DSBulkRecipientsUpdateResponse***](DSBulkRecipientsUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
```objc
-(NSNumber*) getWithAccountId: (NSString*) count
    include: (NSString*) include
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
    batchId: (NSString*) batchId
        completionHandler: (void (^)(DSBulkEnvelopeStatus* output, NSError* error)) handler;
```

Gets the status of a specified bulk send operation.

Retrieves the status information of a single bulk recipient batch. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. 

### Example 
```objc

NSString* count = @"count_example"; // Specifies the number of entries to return. (optional)
NSString* include = @"include_example"; // Specifies which entries are included in the response. Multiple entries can be included by using commas in the query string (example: ?include=”failed,queued”)   Valid values are:   * all - Returns all entries. If present, overrides all other query settings. This is the default if no query string is provided. * failed - This only returns entries with a failed status. * queued - This only returns entries with a queued status. * sent – This only returns entries with a sent status.   (optional)
NSString* startPosition = @"startPosition_example"; // Specifies the location in the list of envelopes from which to start. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* batchId = @"batchId_example"; // 

DSBulkEnvelopesApi*apiInstance = [[DSBulkEnvelopesApi alloc] init];

// Gets the status of a specified bulk send operation.
[apiInstance getWithAccountId:count
              include:include
              startPosition:startPosition
              accountId:accountId
              batchId:batchId
          completionHandler: ^(DSBulkEnvelopeStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBulkEnvelopesApi->get: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***| Specifies the number of entries to return. | [optional] 
 **include** | **NSString***| Specifies which entries are included in the response. Multiple entries can be included by using commas in the query string (example: ?include&#x3D;”failed,queued”)   Valid values are:   * all - Returns all entries. If present, overrides all other query settings. This is the default if no query string is provided. * failed - This only returns entries with a failed status. * queued - This only returns entries with a queued status. * sent – This only returns entries with a sent status.   | [optional] 
 **startPosition** | **NSString***| Specifies the location in the list of envelopes from which to start. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **batchId** | **NSString***|  | 

### Return type

[**DSBulkEnvelopeStatus***](DSBulkEnvelopeStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipients**
```objc
-(NSNumber*) getRecipientsWithAccountId: (NSString*) includeTabs
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSBulkRecipientsResponse* output, NSError* error)) handler;
```

Gets the bulk recipient file from an envelope.

Retrieves the bulk recipient file information from an envelope that has a bulk recipient.

### Example 
```objc

NSString* includeTabs = @"includeTabs_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSBulkEnvelopesApi*apiInstance = [[DSBulkEnvelopesApi alloc] init];

// Gets the bulk recipient file from an envelope.
[apiInstance getRecipientsWithAccountId:includeTabs
              startPosition:startPosition
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSBulkRecipientsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBulkEnvelopesApi->getRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTabs** | **NSString***|  | [optional] 
 **startPosition** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSBulkRecipientsResponse***](DSBulkRecipientsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
```objc
-(NSNumber*) listWithAccountId: (NSString*) count
    include: (NSString*) include
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSBulkEnvelopesResponse* output, NSError* error)) handler;
```

Gets status information about bulk recipient batches.

Retrieves status information about all the bulk recipient batches. A bulk recipient batch is the set of envelopes sent from a single bulk recipient file. The response includes general information about each bulk recipient batch.   The response returns information about the envelopes sent with bulk recipient batches, including the `batchId` property, which can be used to retrieve a more detailed status of individual bulk recipient batches.

### Example 
```objc

NSString* count = @"count_example"; // The number of results to return. This can be 1 to 20. (optional)
NSString* include = @"include_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; // The position of the bulk envelope items in the response. This is used for repeated calls, when the number of bulk envelopes returned is too large for one return. The default value is 0. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBulkEnvelopesApi*apiInstance = [[DSBulkEnvelopesApi alloc] init];

// Gets status information about bulk recipient batches.
[apiInstance listWithAccountId:count
              include:include
              startPosition:startPosition
              accountId:accountId
          completionHandler: ^(DSBulkEnvelopesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBulkEnvelopesApi->list: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***| The number of results to return. This can be 1 to 20. | [optional] 
 **include** | **NSString***|  | [optional] 
 **startPosition** | **NSString***| The position of the bulk envelope items in the response. This is used for repeated calls, when the number of bulk envelopes returned is too large for one return. The default value is 0. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBulkEnvelopesResponse***](DSBulkEnvelopesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecipients**
```objc
-(NSNumber*) updateRecipientsWithAccountId: (DSBulkRecipientsRequest*) bulkRecipientsRequest
    accountId: (NSString*) accountId
    envelopeId: (NSString*) envelopeId
    recipientId: (NSString*) recipientId
        completionHandler: (void (^)(DSBulkRecipientsSummaryResponse* output, NSError* error)) handler;
```

Adds or replaces envelope bulk recipients.

Updates the bulk recipients in a draft envelope using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.

### Example 
```objc

DSBulkRecipientsRequest* bulkRecipientsRequest = [[DSBulkRecipientsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* envelopeId = @"envelopeId_example"; // The envelopeId Guid of the envelope being accessed.
NSString* recipientId = @"recipientId_example"; // The ID of the recipient being accessed.

DSBulkEnvelopesApi*apiInstance = [[DSBulkEnvelopesApi alloc] init];

// Adds or replaces envelope bulk recipients.
[apiInstance updateRecipientsWithAccountId:bulkRecipientsRequest
              accountId:accountId
              envelopeId:envelopeId
              recipientId:recipientId
          completionHandler: ^(DSBulkRecipientsSummaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBulkEnvelopesApi->updateRecipients: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkRecipientsRequest** | [**DSBulkRecipientsRequest***](DSBulkRecipientsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **envelopeId** | **NSString***| The envelopeId Guid of the envelope being accessed. | 
 **recipientId** | **NSString***| The ID of the recipient being accessed. | 

### Return type

[**DSBulkRecipientsSummaryResponse***](DSBulkRecipientsSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

