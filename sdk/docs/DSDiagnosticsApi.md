# DSDiagnosticsApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRequestLogs**](DSDiagnosticsApi.md#deleterequestlogs) | **DELETE** /v2/diagnostics/request_logs | Deletes the request log files.
[**getRequestLog**](DSDiagnosticsApi.md#getrequestlog) | **GET** /v2/diagnostics/request_logs/{requestLogId} | Gets a request logging log file.
[**getRequestLogSettings**](DSDiagnosticsApi.md#getrequestlogsettings) | **GET** /v2/diagnostics/settings | Gets the API request logging settings.
[**getResources**](DSDiagnosticsApi.md#getresources) | **GET** /v2 | Lists resources for REST version specified
[**getService**](DSDiagnosticsApi.md#getservice) | **GET** /service_information | Retrieves the available REST API versions.
[**listRequestLogs**](DSDiagnosticsApi.md#listrequestlogs) | **GET** /v2/diagnostics/request_logs | Gets the API request logging log files.
[**updateRequestLogSettings**](DSDiagnosticsApi.md#updaterequestlogsettings) | **PUT** /v2/diagnostics/settings | Enables or disables API request logging for troubleshooting.


# **deleteRequestLogs**
```objc
-(NSNumber*) deleteRequestLogsWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Deletes the request log files.

Deletes the request log files.

### Example 
```objc


DSDiagnosticsApi*apiInstance = [[DSDiagnosticsApi alloc] init];

// Deletes the request log files.
[apiInstance deleteRequestLogsWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSDiagnosticsApi->deleteRequestLogs: %@", error);
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

# **getRequestLog**
```objc
-(NSNumber*) getRequestLogWithRequestLogId: (NSString*) requestLogId
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Gets a request logging log file.

Retrieves information for a single log entry.  **Request** The `requestLogfId` property can be retrieved by getting the list of log entries. The Content-Transfer-Encoding header can be set to base64 to retrieve the API request/response as base 64 string. Otherwise the bytes of the request/response are returned.  **Response** If the Content-Transfer-Encoding header was set to base64, the log is returned as a base64 string.

### Example 
```objc

NSString* requestLogId = @"requestLogId_example"; // 

DSDiagnosticsApi*apiInstance = [[DSDiagnosticsApi alloc] init];

// Gets a request logging log file.
[apiInstance getRequestLogWithRequestLogId:requestLogId
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSDiagnosticsApi->getRequestLog: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestLogId** | **NSString***|  | 

### Return type

**NSURL***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRequestLogSettings**
```objc
-(NSNumber*) getRequestLogSettingsWithCompletionHandler: 
        (void (^)(DSDiagnosticsSettingsInformation* output, NSError* error)) handler;
```

Gets the API request logging settings.

Retrieves the current API request logging setting for the user and remaining log entries.  **Response** The response includes the current API request logging setting for the user, along with the maximum log entries and remaining log entries.

### Example 
```objc


DSDiagnosticsApi*apiInstance = [[DSDiagnosticsApi alloc] init];

// Gets the API request logging settings.
[apiInstance getRequestLogSettingsWithCompletionHandler: 
          ^(DSDiagnosticsSettingsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSDiagnosticsApi->getRequestLogSettings: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DSDiagnosticsSettingsInformation***](DSDiagnosticsSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResources**
```objc
-(NSNumber*) getResourcesWithCompletionHandler: 
        (void (^)(DSResourceInformation* output, NSError* error)) handler;
```

Lists resources for REST version specified

Retrieves the base resources available for the DocuSign REST APIs.  You do not need an integrator key to view the REST API versions and resources.  Example: https://demo.docusign.net/restapi/v2 lists all of the base resources available in version 2 of the REST API on the DocuSign Demo system.  To view descriptions and samples of the service operations for all versions, remove the version number and add /help to the URL.  Example: https://demo.docusign.net/restapi/help lists the REST API operations on the DocuSign Demo system with XML and JSON request and response samples.

### Example 
```objc


DSDiagnosticsApi*apiInstance = [[DSDiagnosticsApi alloc] init];

// Lists resources for REST version specified
[apiInstance getResourcesWithCompletionHandler: 
          ^(DSResourceInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSDiagnosticsApi->getResources: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DSResourceInformation***](DSResourceInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getService**
```objc
-(NSNumber*) getServiceWithCompletionHandler: 
        (void (^)(DSServiceInformation* output, NSError* error)) handler;
```

Retrieves the available REST API versions.

Retrieves the available REST API versions.  DocuSign Production system: https://www.docusign.net/restapi/service_information DocuSign Demo system: https://demo.docusign.net/restapi/service_information  You do not need an integrator key to view the REST API versions and resources.

### Example 
```objc


DSDiagnosticsApi*apiInstance = [[DSDiagnosticsApi alloc] init];

// Retrieves the available REST API versions.
[apiInstance getServiceWithCompletionHandler: 
          ^(DSServiceInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSDiagnosticsApi->getService: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DSServiceInformation***](DSServiceInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRequestLogs**
```objc
-(NSNumber*) listRequestLogsWithEncoding: (NSString*) encoding
        completionHandler: (void (^)(DSApiRequestLogsResult* output, NSError* error)) handler;
```

Gets the API request logging log files.

Retrieves a list of log entries as a JSON or xml object or as a zip file containing the entries.  If the Accept header is set to application/zip, the response is a zip file containing individual text files, each representing an API request.  If the Accept header is set to `application/json` or `application/xml`, the response returns list of log entries in either JSON or XML. An example JSON response body is shown below. 

### Example 
```objc

NSString* encoding = @"encoding_example"; //  (optional)

DSDiagnosticsApi*apiInstance = [[DSDiagnosticsApi alloc] init];

// Gets the API request logging log files.
[apiInstance listRequestLogsWithEncoding:encoding
          completionHandler: ^(DSApiRequestLogsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSDiagnosticsApi->listRequestLogs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **encoding** | **NSString***|  | [optional] 

### Return type

[**DSApiRequestLogsResult***](DSApiRequestLogsResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRequestLogSettings**
```objc
-(NSNumber*) updateRequestLogSettingsWithDiagnosticsSettingsInformation: (DSDiagnosticsSettingsInformation*) diagnosticsSettingsInformation
        completionHandler: (void (^)(DSDiagnosticsSettingsInformation* output, NSError* error)) handler;
```

Enables or disables API request logging for troubleshooting.

Enables or disables API request logging for troubleshooting.  When enabled (`apiRequestLogging` is set to true), REST API requests and responses for the user are added to a log. A log can have up to 50 requests/responses and the current number of log entries can be determined by getting the settings. Logging is automatically disabled when the log limit of 50 is reached.  You can call [ML:GetRequestLog] or [ML:GetRequestLogs] to download the log files (individually or as a zip file). Call [ML:DeleteRequestLogs] to clear the log by deleting current entries.  Private information, such as passwords and integrator key information, which is normally located in the call header is omitted from the request/response log.  ###### Note: API request logging only captures requests from the authenticated user. Any call that does not authenticate the user and resolve a userId isn't logged. Meaning that login_information, NewAccounts, or other distributor-credential calls are not logged. 

### Example 
```objc

DSDiagnosticsSettingsInformation* diagnosticsSettingsInformation = [[DSDiagnosticsSettingsInformation alloc] init]; //  (optional)

DSDiagnosticsApi*apiInstance = [[DSDiagnosticsApi alloc] init];

// Enables or disables API request logging for troubleshooting.
[apiInstance updateRequestLogSettingsWithDiagnosticsSettingsInformation:diagnosticsSettingsInformation
          completionHandler: ^(DSDiagnosticsSettingsInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSDiagnosticsApi->updateRequestLogSettings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **diagnosticsSettingsInformation** | [**DSDiagnosticsSettingsInformation***](DSDiagnosticsSettingsInformation*.md)|  | [optional] 

### Return type

[**DSDiagnosticsSettingsInformation***](DSDiagnosticsSettingsInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

