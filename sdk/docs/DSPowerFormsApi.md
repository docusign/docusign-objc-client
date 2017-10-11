# DSPowerFormsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPowerForm**](DSPowerFormsApi.md#createpowerform) | **POST** /v2/accounts/{accountId}/powerforms | Creates a new PowerForm.
[**deletePowerForm**](DSPowerFormsApi.md#deletepowerform) | **DELETE** /v2/accounts/{accountId}/powerforms/{powerFormId} | Delete a PowerForm.
[**deletePowerForms**](DSPowerFormsApi.md#deletepowerforms) | **DELETE** /v2/accounts/{accountId}/powerforms | Deletes one or more PowerForms
[**getPowerForm**](DSPowerFormsApi.md#getpowerform) | **GET** /v2/accounts/{accountId}/powerforms/{powerFormId} | Returns a single PowerForm.
[**getPowerFormData**](DSPowerFormsApi.md#getpowerformdata) | **GET** /v2/accounts/{accountId}/powerforms/{powerFormId}/form_data | Returns the form data associated with the usage of a PowerForm.
[**listPowerFormSenders**](DSPowerFormsApi.md#listpowerformsenders) | **GET** /v2/accounts/{accountId}/powerforms/senders | Returns the list of PowerForms available to the user.
[**listPowerForms**](DSPowerFormsApi.md#listpowerforms) | **GET** /v2/accounts/{accountId}/powerforms | Returns the list of PowerForms available to the user.
[**updatePowerForm**](DSPowerFormsApi.md#updatepowerform) | **PUT** /v2/accounts/{accountId}/powerforms/{powerFormId} | Creates a new PowerForm.


# **createPowerForm**
```objc
-(NSNumber*) createPowerFormWithAccountId: (DSPowerForm*) powerForm
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSPowerForm* output, NSError* error)) handler;
```

Creates a new PowerForm.

### Example 
```objc

DSPowerForm* powerForm = [[DSPowerForm alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSPowerFormsApi*apiInstance = [[DSPowerFormsApi alloc] init];

// Creates a new PowerForm.
[apiInstance createPowerFormWithAccountId:powerForm
              accountId:accountId
          completionHandler: ^(DSPowerForm* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSPowerFormsApi->createPowerForm: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **powerForm** | [**DSPowerForm***](DSPowerForm*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSPowerForm***](DSPowerForm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePowerForm**
```objc
-(NSNumber*) deletePowerFormWithAccountId: (NSString*) accountId
    powerFormId: (NSString*) powerFormId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a PowerForm.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* powerFormId = @"powerFormId_example"; // 

DSPowerFormsApi*apiInstance = [[DSPowerFormsApi alloc] init];

// Delete a PowerForm.
[apiInstance deletePowerFormWithAccountId:accountId
              powerFormId:powerFormId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSPowerFormsApi->deletePowerForm: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **powerFormId** | **NSString***|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePowerForms**
```objc
-(NSNumber*) deletePowerFormsWithAccountId: (DSPowerFormsRequest*) powerFormsRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSPowerFormsResponse* output, NSError* error)) handler;
```

Deletes one or more PowerForms

### Example 
```objc

DSPowerFormsRequest* powerFormsRequest = [[DSPowerFormsRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSPowerFormsApi*apiInstance = [[DSPowerFormsApi alloc] init];

// Deletes one or more PowerForms
[apiInstance deletePowerFormsWithAccountId:powerFormsRequest
              accountId:accountId
          completionHandler: ^(DSPowerFormsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSPowerFormsApi->deletePowerForms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **powerFormsRequest** | [**DSPowerFormsRequest***](DSPowerFormsRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSPowerFormsResponse***](DSPowerFormsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPowerForm**
```objc
-(NSNumber*) getPowerFormWithAccountId: (NSString*) accountId
    powerFormId: (NSString*) powerFormId
        completionHandler: (void (^)(DSPowerForm* output, NSError* error)) handler;
```

Returns a single PowerForm.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* powerFormId = @"powerFormId_example"; // 

DSPowerFormsApi*apiInstance = [[DSPowerFormsApi alloc] init];

// Returns a single PowerForm.
[apiInstance getPowerFormWithAccountId:accountId
              powerFormId:powerFormId
          completionHandler: ^(DSPowerForm* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSPowerFormsApi->getPowerForm: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **powerFormId** | **NSString***|  | 

### Return type

[**DSPowerForm***](DSPowerForm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPowerFormData**
```objc
-(NSNumber*) getPowerFormDataWithAccountId: (NSString*) fromDate
    toDate: (NSString*) toDate
    accountId: (NSString*) accountId
    powerFormId: (NSString*) powerFormId
        completionHandler: (void (^)(DSPowerFormsFormDataResponse* output, NSError* error)) handler;
```

Returns the form data associated with the usage of a PowerForm.

### Example 
```objc

NSString* fromDate = @"fromDate_example"; //  (optional)
NSString* toDate = @"toDate_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* powerFormId = @"powerFormId_example"; // 

DSPowerFormsApi*apiInstance = [[DSPowerFormsApi alloc] init];

// Returns the form data associated with the usage of a PowerForm.
[apiInstance getPowerFormDataWithAccountId:fromDate
              toDate:toDate
              accountId:accountId
              powerFormId:powerFormId
          completionHandler: ^(DSPowerFormsFormDataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSPowerFormsApi->getPowerFormData: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **NSString***|  | [optional] 
 **toDate** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **powerFormId** | **NSString***|  | 

### Return type

[**DSPowerFormsFormDataResponse***](DSPowerFormsFormDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPowerFormSenders**
```objc
-(NSNumber*) listPowerFormSendersWithAccountId: (NSString*) startPosition
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSPowerFormSendersResponse* output, NSError* error)) handler;
```

Returns the list of PowerForms available to the user.

### Example 
```objc

NSString* startPosition = @"startPosition_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSPowerFormsApi*apiInstance = [[DSPowerFormsApi alloc] init];

// Returns the list of PowerForms available to the user.
[apiInstance listPowerFormSendersWithAccountId:startPosition
              accountId:accountId
          completionHandler: ^(DSPowerFormSendersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSPowerFormsApi->listPowerFormSenders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startPosition** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSPowerFormSendersResponse***](DSPowerFormSendersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPowerForms**
```objc
-(NSNumber*) listPowerFormsWithAccountId: (NSString*) fromDate
    order: (NSString*) order
    orderBy: (NSString*) orderBy
    toDate: (NSString*) toDate
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSPowerFormsResponse* output, NSError* error)) handler;
```

Returns the list of PowerForms available to the user.

### Example 
```objc

NSString* fromDate = @"fromDate_example"; //  (optional)
NSString* order = @"order_example"; //  (optional)
NSString* orderBy = @"orderBy_example"; //  (optional)
NSString* toDate = @"toDate_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSPowerFormsApi*apiInstance = [[DSPowerFormsApi alloc] init];

// Returns the list of PowerForms available to the user.
[apiInstance listPowerFormsWithAccountId:fromDate
              order:order
              orderBy:orderBy
              toDate:toDate
              accountId:accountId
          completionHandler: ^(DSPowerFormsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSPowerFormsApi->listPowerForms: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **NSString***|  | [optional] 
 **order** | **NSString***|  | [optional] 
 **orderBy** | **NSString***|  | [optional] 
 **toDate** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSPowerFormsResponse***](DSPowerFormsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePowerForm**
```objc
-(NSNumber*) updatePowerFormWithAccountId: (DSPowerForm*) powerForm
    accountId: (NSString*) accountId
    powerFormId: (NSString*) powerFormId
        completionHandler: (void (^)(DSPowerForm* output, NSError* error)) handler;
```

Creates a new PowerForm.

### Example 
```objc

DSPowerForm* powerForm = [[DSPowerForm alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* powerFormId = @"powerFormId_example"; // 

DSPowerFormsApi*apiInstance = [[DSPowerFormsApi alloc] init];

// Creates a new PowerForm.
[apiInstance updatePowerFormWithAccountId:powerForm
              accountId:accountId
              powerFormId:powerFormId
          completionHandler: ^(DSPowerForm* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSPowerFormsApi->updatePowerForm: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **powerForm** | [**DSPowerForm***](DSPowerForm*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **powerFormId** | **NSString***|  | 

### Return type

[**DSPowerForm***](DSPowerForm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

