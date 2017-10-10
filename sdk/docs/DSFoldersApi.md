# DSFoldersApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](DSFoldersApi.md#list) | **GET** /v2/accounts/{accountId}/folders | Gets a list of the folders for the account.
[**listItems**](DSFoldersApi.md#listitems) | **GET** /v2/accounts/{accountId}/folders/{folderId} | Gets a list of the envelopes in the specified folder.
[**moveEnvelopes**](DSFoldersApi.md#moveenvelopes) | **PUT** /v2/accounts/{accountId}/folders/{folderId} | Moves an envelope from its current folder to the specified folder.
[**search**](DSFoldersApi.md#search) | **GET** /v2/accounts/{accountId}/search_folders/{searchFolderId} | Gets a list of envelopes in folders matching the specified criteria.


# **list**
```objc
-(NSNumber*) listWithAccountId: (NSString*) include
    includeItems: (NSString*) includeItems
    startPosition: (NSString*) startPosition
    template: (NSString*) template
    userFilter: (NSString*) userFilter
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSFoldersResponse* output, NSError* error)) handler;
```

Gets a list of the folders for the account.

Retrieves a list of the folders for the account, including the folder hierarchy. You can specify whether to return just the template folder or template folder and normal folders by setting the `template` query string parameter.

### Example 
```objc

NSString* include = @"include_example"; //  (optional)
NSString* includeItems = @"includeItems_example"; //  (optional)
NSString* startPosition = @"startPosition_example"; //  (optional)
NSString* template = @"template_example"; // Specifies the items that are returned. Valid values are:   * include - The folder list will return normal folders plus template folders.  * only - Only the list of template folders are returned. (optional)
NSString* userFilter = @"userFilter_example"; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSFoldersApi*apiInstance = [[DSFoldersApi alloc] init];

// Gets a list of the folders for the account.
[apiInstance listWithAccountId:include
              includeItems:includeItems
              startPosition:startPosition
              template:template
              userFilter:userFilter
              accountId:accountId
          completionHandler: ^(DSFoldersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSFoldersApi->list: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **NSString***|  | [optional] 
 **includeItems** | **NSString***|  | [optional] 
 **startPosition** | **NSString***|  | [optional] 
 **template** | **NSString***| Specifies the items that are returned. Valid values are:   * include - The folder list will return normal folders plus template folders.  * only - Only the list of template folders are returned. | [optional] 
 **userFilter** | **NSString***|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSFoldersResponse***](DSFoldersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listItems**
```objc
-(NSNumber*) listItemsWithAccountId: (NSString*) fromDate
    includeItems: (NSString*) includeItems
    ownerEmail: (NSString*) ownerEmail
    ownerName: (NSString*) ownerName
    searchText: (NSString*) searchText
    startPosition: (NSString*) startPosition
    status: (NSString*) status
    toDate: (NSString*) toDate
    accountId: (NSString*) accountId
    folderId: (NSString*) folderId
        completionHandler: (void (^)(DSFolderItemsResponse* output, NSError* error)) handler;
```

Gets a list of the envelopes in the specified folder.

Retrieves a list of the envelopes in the specified folder. You can narrow the query by specifying search criteria in the query string parameters.

### Example 
```objc

NSString* fromDate = @"fromDate_example"; //  Only return items on or after this date. If no value is provided, the default search is the previous 30 days.  (optional)
NSString* includeItems = @"includeItems_example"; //  (optional)
NSString* ownerEmail = @"ownerEmail_example"; //  The email of the folder owner.  (optional)
NSString* ownerName = @"ownerName_example"; //  The name of the folder owner.  (optional)
NSString* searchText = @"searchText_example"; //  The search text used to search the items of the envelope. The search looks at recipient names and emails, envelope custom fields, sender name, and subject.  (optional)
NSString* startPosition = @"startPosition_example"; // The position of the folder items to return. This is used for repeated calls, when the number of envelopes returned is too much for one return (calls return 100 envelopes at a time). The default value is 0. (optional)
NSString* status = @"status_example"; // The current status of the envelope. If no value is provided, the default search is all/any status. (optional)
NSString* toDate = @"toDate_example"; // Only return items up to this date. If no value is provided, the default search is to the current date. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.

DSFoldersApi*apiInstance = [[DSFoldersApi alloc] init];

// Gets a list of the envelopes in the specified folder.
[apiInstance listItemsWithAccountId:fromDate
              includeItems:includeItems
              ownerEmail:ownerEmail
              ownerName:ownerName
              searchText:searchText
              startPosition:startPosition
              status:status
              toDate:toDate
              accountId:accountId
              folderId:folderId
          completionHandler: ^(DSFolderItemsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSFoldersApi->listItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **NSString***|  Only return items on or after this date. If no value is provided, the default search is the previous 30 days.  | [optional] 
 **includeItems** | **NSString***|  | [optional] 
 **ownerEmail** | **NSString***|  The email of the folder owner.  | [optional] 
 **ownerName** | **NSString***|  The name of the folder owner.  | [optional] 
 **searchText** | **NSString***|  The search text used to search the items of the envelope. The search looks at recipient names and emails, envelope custom fields, sender name, and subject.  | [optional] 
 **startPosition** | **NSString***| The position of the folder items to return. This is used for repeated calls, when the number of envelopes returned is too much for one return (calls return 100 envelopes at a time). The default value is 0. | [optional] 
 **status** | **NSString***| The current status of the envelope. If no value is provided, the default search is all/any status. | [optional] 
 **toDate** | **NSString***| Only return items up to this date. If no value is provided, the default search is to the current date. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 

### Return type

[**DSFolderItemsResponse***](DSFolderItemsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveEnvelopes**
```objc
-(NSNumber*) moveEnvelopesWithAccountId: (DSFoldersRequest*) foldersRequest
    accountId: (NSString*) accountId
    folderId: (NSString*) folderId
        completionHandler: (void (^)(DSFoldersResponse* output, NSError* error)) handler;
```

Moves an envelope from its current folder to the specified folder.

Moves envelopes to the specified folder.

### Example 
```objc

DSFoldersRequest* foldersRequest = [[DSFoldersRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.

DSFoldersApi*apiInstance = [[DSFoldersApi alloc] init];

// Moves an envelope from its current folder to the specified folder.
[apiInstance moveEnvelopesWithAccountId:foldersRequest
              accountId:accountId
              folderId:folderId
          completionHandler: ^(DSFoldersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSFoldersApi->moveEnvelopes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **foldersRequest** | [**DSFoldersRequest***](DSFoldersRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 

### Return type

[**DSFoldersResponse***](DSFoldersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
```objc
-(NSNumber*) searchWithAccountId: (NSString*) all
    count: (NSString*) count
    fromDate: (NSString*) fromDate
    includeRecipients: (NSString*) includeRecipients
    order: (NSString*) order
    orderBy: (NSString*) orderBy
    startPosition: (NSString*) startPosition
    toDate: (NSString*) toDate
    accountId: (NSString*) accountId
    searchFolderId: (NSString*) searchFolderId
        completionHandler: (void (^)(DSFolderItemResponse* output, NSError* error)) handler;
```

Gets a list of envelopes in folders matching the specified criteria.

Retrieves a list of envelopes that match the criteria specified in the query.  If the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.

### Example 
```objc

NSString* all = @"all_example"; // Specifies that all envelopes that match the criteria are returned. (optional)
NSString* count = @"count_example"; // Specifies the number of records returned in the cache. The number must be greater than 0 and less than or equal to 100. (optional)
NSString* fromDate = @"fromDate_example"; // Specifies the start of the date range to return. If no value is provided, the default search is the previous 30 days. (optional)
NSString* includeRecipients = @"includeRecipients_example"; // When set to **true**, the recipient information is returned in the response. (optional)
NSString* order = @"order_example"; // Specifies the order in which the list is returned. Valid values are: `asc` for ascending order, and `desc` for descending order. (optional)
NSString* orderBy = @"orderBy_example"; // Specifies the property used to sort the list. Valid values are: `action_required`, `created`, `completed`, `sent`, `signer_list`, `status`, or `subject`. (optional)
NSString* startPosition = @"startPosition_example"; // Specifies the the starting location in the result set of the items that are returned. (optional)
NSString* toDate = @"toDate_example"; // Specifies the end of the date range to return. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* searchFolderId = @"searchFolderId_example"; // Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature.

DSFoldersApi*apiInstance = [[DSFoldersApi alloc] init];

// Gets a list of envelopes in folders matching the specified criteria.
[apiInstance searchWithAccountId:all
              count:count
              fromDate:fromDate
              includeRecipients:includeRecipients
              order:order
              orderBy:orderBy
              startPosition:startPosition
              toDate:toDate
              accountId:accountId
              searchFolderId:searchFolderId
          completionHandler: ^(DSFolderItemResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSFoldersApi->search: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **all** | **NSString***| Specifies that all envelopes that match the criteria are returned. | [optional] 
 **count** | **NSString***| Specifies the number of records returned in the cache. The number must be greater than 0 and less than or equal to 100. | [optional] 
 **fromDate** | **NSString***| Specifies the start of the date range to return. If no value is provided, the default search is the previous 30 days. | [optional] 
 **includeRecipients** | **NSString***| When set to **true**, the recipient information is returned in the response. | [optional] 
 **order** | **NSString***| Specifies the order in which the list is returned. Valid values are: &#x60;asc&#x60; for ascending order, and &#x60;desc&#x60; for descending order. | [optional] 
 **orderBy** | **NSString***| Specifies the property used to sort the list. Valid values are: &#x60;action_required&#x60;, &#x60;created&#x60;, &#x60;completed&#x60;, &#x60;sent&#x60;, &#x60;signer_list&#x60;, &#x60;status&#x60;, or &#x60;subject&#x60;. | [optional] 
 **startPosition** | **NSString***| Specifies the the starting location in the result set of the items that are returned. | [optional] 
 **toDate** | **NSString***| Specifies the end of the date range to return. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **searchFolderId** | **NSString***| Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature. | 

### Return type

[**DSFolderItemResponse***](DSFolderItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

