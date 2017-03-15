# DSWorkspacesApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorkspace**](DSWorkspacesApi.md#createworkspace) | **POST** /v2/accounts/{accountId}/workspaces | Create a Workspace
[**createWorkspaceFile**](DSWorkspacesApi.md#createworkspacefile) | **POST** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files | Creates a workspace file.
[**deleteWorkspace**](DSWorkspacesApi.md#deleteworkspace) | **DELETE** /v2/accounts/{accountId}/workspaces/{workspaceId} | Delete Workspace
[**deleteWorkspaceFolderItems**](DSWorkspacesApi.md#deleteworkspacefolderitems) | **DELETE** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId} | Deletes workspace one or more specific files/folders from the given folder or root.
[**getWorkspace**](DSWorkspacesApi.md#getworkspace) | **GET** /v2/accounts/{accountId}/workspaces/{workspaceId} | Get Workspace
[**getWorkspaceFile**](DSWorkspacesApi.md#getworkspacefile) | **GET** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId} | Get Workspace File
[**listWorkspaceFilePages**](DSWorkspacesApi.md#listworkspacefilepages) | **GET** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}/pages | List File Pages
[**listWorkspaceFolderItems**](DSWorkspacesApi.md#listworkspacefolderitems) | **GET** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId} | List Workspace Folder Contents
[**listWorkspaces**](DSWorkspacesApi.md#listworkspaces) | **GET** /v2/accounts/{accountId}/workspaces | List Workspaces
[**updateWorkspace**](DSWorkspacesApi.md#updateworkspace) | **PUT** /v2/accounts/{accountId}/workspaces/{workspaceId} | Update Workspace
[**updateWorkspaceFile**](DSWorkspacesApi.md#updateworkspacefile) | **PUT** /v2/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId} | Update Workspace File Metadata


# **createWorkspace**
```objc
-(NSNumber*) createWorkspaceWithAccountId: (DSWorkspace*) workspace
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSWorkspace* output, NSError* error)) handler;
```

Create a Workspace

Creates a new workspace.

### Example 
```objc

DSWorkspace* workspace = [[DSWorkspace alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// Create a Workspace
[apiInstance createWorkspaceWithAccountId:workspace
              accountId:accountId
          completionHandler: ^(DSWorkspace* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->createWorkspace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace** | [**DSWorkspace***](DSWorkspace*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSWorkspace***](DSWorkspace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspaceFile**
```objc
-(NSNumber*) createWorkspaceFileWithAccountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
    folderId: (NSString*) folderId
        completionHandler: (void (^)(DSWorkspaceItem* output, NSError* error)) handler;
```

Creates a workspace file.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// Creates a workspace file.
[apiInstance createWorkspaceFileWithAccountId:accountId
              workspaceId:workspaceId
              folderId:folderId
          completionHandler: ^(DSWorkspaceItem* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->createWorkspaceFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 

### Return type

[**DSWorkspaceItem***](DSWorkspaceItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkspace**
```objc
-(NSNumber*) deleteWorkspaceWithAccountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
        completionHandler: (void (^)(DSWorkspace* output, NSError* error)) handler;
```

Delete Workspace

Deletes an existing workspace (logically).

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// Delete Workspace
[apiInstance deleteWorkspaceWithAccountId:accountId
              workspaceId:workspaceId
          completionHandler: ^(DSWorkspace* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->deleteWorkspace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 

### Return type

[**DSWorkspace***](DSWorkspace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkspaceFolderItems**
```objc
-(NSNumber*) deleteWorkspaceFolderItemsWithAccountId: (DSWorkspaceItemList*) workspaceItemList
    accountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
    folderId: (NSString*) folderId
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes workspace one or more specific files/folders from the given folder or root.

### Example 
```objc

DSWorkspaceItemList* workspaceItemList = [[DSWorkspaceItemList alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// Deletes workspace one or more specific files/folders from the given folder or root.
[apiInstance deleteWorkspaceFolderItemsWithAccountId:workspaceItemList
              accountId:accountId
              workspaceId:workspaceId
              folderId:folderId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->deleteWorkspaceFolderItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceItemList** | [**DSWorkspaceItemList***](DSWorkspaceItemList*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspace**
```objc
-(NSNumber*) getWorkspaceWithAccountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
        completionHandler: (void (^)(DSWorkspace* output, NSError* error)) handler;
```

Get Workspace

Retrives properties about a workspace given a unique workspaceId. 

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// Get Workspace
[apiInstance getWorkspaceWithAccountId:accountId
              workspaceId:workspaceId
          completionHandler: ^(DSWorkspace* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->getWorkspace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 

### Return type

[**DSWorkspace***](DSWorkspace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceFile**
```objc
-(NSNumber*) getWorkspaceFileWithAccountId: (NSString*) isDownload
    pdfVersion: (NSString*) pdfVersion
    accountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
    folderId: (NSString*) folderId
    fileId: (NSString*) fileId
        completionHandler: (void (^)(NSError* error)) handler;
```

Get Workspace File

Retrieves a workspace file (the binary).

### Example 
```objc

NSString* isDownload = @"isDownload_example"; // When set to **true**, the Content-Disposition header is set in the response. The value of the header provides the filename of the file. Default is **false**. (optional)
NSString* pdfVersion = @"pdfVersion_example"; // When set to **true** the file returned as a PDF. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.
NSString* fileId = @"fileId_example"; // Specifies the room file ID GUID.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// Get Workspace File
[apiInstance getWorkspaceFileWithAccountId:isDownload
              pdfVersion:pdfVersion
              accountId:accountId
              workspaceId:workspaceId
              folderId:folderId
              fileId:fileId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->getWorkspaceFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isDownload** | **NSString***| When set to **true**, the Content-Disposition header is set in the response. The value of the header provides the filename of the file. Default is **false**. | [optional] 
 **pdfVersion** | **NSString***| When set to **true** the file returned as a PDF. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 
 **fileId** | **NSString***| Specifies the room file ID GUID. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceFilePages**
```objc
-(NSNumber*) listWorkspaceFilePagesWithAccountId: (NSString*) count
    dpi: (NSString*) dpi
    maxHeight: (NSString*) maxHeight
    maxWidth: (NSString*) maxWidth
    startPosition: (NSString*) startPosition
    accountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
    folderId: (NSString*) folderId
    fileId: (NSString*) fileId
        completionHandler: (void (^)(DSPageImages* output, NSError* error)) handler;
```

List File Pages

Retrieves a workspace file as rasterized pages.

### Example 
```objc

NSString* count = @"count_example"; // The maximum number of results to be returned by this request. (optional)
NSString* dpi = @"dpi_example"; // Number of dots per inch for the resulting image. The default if not used is 94. The range is 1-310. (optional)
NSString* maxHeight = @"maxHeight_example"; // Sets the maximum height (in pixels) of the returned image. (optional)
NSString* maxWidth = @"maxWidth_example"; // Sets the maximum width (in pixels) of the returned image. (optional)
NSString* startPosition = @"startPosition_example"; // The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.
NSString* fileId = @"fileId_example"; // Specifies the room file ID GUID.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// List File Pages
[apiInstance listWorkspaceFilePagesWithAccountId:count
              dpi:dpi
              maxHeight:maxHeight
              maxWidth:maxWidth
              startPosition:startPosition
              accountId:accountId
              workspaceId:workspaceId
              folderId:folderId
              fileId:fileId
          completionHandler: ^(DSPageImages* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->listWorkspaceFilePages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***| The maximum number of results to be returned by this request. | [optional] 
 **dpi** | **NSString***| Number of dots per inch for the resulting image. The default if not used is 94. The range is 1-310. | [optional] 
 **maxHeight** | **NSString***| Sets the maximum height (in pixels) of the returned image. | [optional] 
 **maxWidth** | **NSString***| Sets the maximum width (in pixels) of the returned image. | [optional] 
 **startPosition** | **NSString***| The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 
 **fileId** | **NSString***| Specifies the room file ID GUID. | 

### Return type

[**DSPageImages***](DSPageImages.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceFolderItems**
```objc
-(NSNumber*) listWorkspaceFolderItemsWithAccountId: (NSString*) count
    includeFiles: (NSString*) includeFiles
    includeSubFolders: (NSString*) includeSubFolders
    includeThumbnails: (NSString*) includeThumbnails
    includeUserDetail: (NSString*) includeUserDetail
    startPosition: (NSString*) startPosition
    workspaceUserId: (NSString*) workspaceUserId
    accountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
    folderId: (NSString*) folderId
        completionHandler: (void (^)(DSWorkspaceFolderContents* output, NSError* error)) handler;
```

List Workspace Folder Contents

Retrieves workspace folder contents, which can include sub folders and files.

### Example 
```objc

NSString* count = @"count_example"; // The maximum number of results to be returned by this request. (optional)
NSString* includeFiles = @"includeFiles_example"; // When set to **true**, file information is returned in the response along with folder information. The default is **false**. (optional)
NSString* includeSubFolders = @"includeSubFolders_example"; // When set to **true**, information about the sub-folders of the current folder is returned. The default is **false**. (optional)
NSString* includeThumbnails = @"includeThumbnails_example"; // When set to **true**, thumbnails are returned as part of the response.  The default is **false**. (optional)
NSString* includeUserDetail = @"includeUserDetail_example"; // Set to **true** to return extended details about the user. The default is **false**. (optional)
NSString* startPosition = @"startPosition_example"; // The position within the total result set from which to start returning values. (optional)
NSString* workspaceUserId = @"workspaceUserId_example"; // If set, then the results are filtered to those associated with the specified userId. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// List Workspace Folder Contents
[apiInstance listWorkspaceFolderItemsWithAccountId:count
              includeFiles:includeFiles
              includeSubFolders:includeSubFolders
              includeThumbnails:includeThumbnails
              includeUserDetail:includeUserDetail
              startPosition:startPosition
              workspaceUserId:workspaceUserId
              accountId:accountId
              workspaceId:workspaceId
              folderId:folderId
          completionHandler: ^(DSWorkspaceFolderContents* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->listWorkspaceFolderItems: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSString***| The maximum number of results to be returned by this request. | [optional] 
 **includeFiles** | **NSString***| When set to **true**, file information is returned in the response along with folder information. The default is **false**. | [optional] 
 **includeSubFolders** | **NSString***| When set to **true**, information about the sub-folders of the current folder is returned. The default is **false**. | [optional] 
 **includeThumbnails** | **NSString***| When set to **true**, thumbnails are returned as part of the response.  The default is **false**. | [optional] 
 **includeUserDetail** | **NSString***| Set to **true** to return extended details about the user. The default is **false**. | [optional] 
 **startPosition** | **NSString***| The position within the total result set from which to start returning values. | [optional] 
 **workspaceUserId** | **NSString***| If set, then the results are filtered to those associated with the specified userId. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 

### Return type

[**DSWorkspaceFolderContents***](DSWorkspaceFolderContents.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaces**
```objc
-(NSNumber*) listWorkspacesWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSWorkspaceList* output, NSError* error)) handler;
```

List Workspaces

Gets information about the Workspaces that have been created.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// List Workspaces
[apiInstance listWorkspacesWithAccountId:accountId
          completionHandler: ^(DSWorkspaceList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->listWorkspaces: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSWorkspaceList***](DSWorkspaceList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspace**
```objc
-(NSNumber*) updateWorkspaceWithAccountId: (DSWorkspace*) workspace
    accountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
        completionHandler: (void (^)(DSWorkspace* output, NSError* error)) handler;
```

Update Workspace

Updates information about a specific workspace.

### Example 
```objc

DSWorkspace* workspace = [[DSWorkspace alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// Update Workspace
[apiInstance updateWorkspaceWithAccountId:workspace
              accountId:accountId
              workspaceId:workspaceId
          completionHandler: ^(DSWorkspace* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->updateWorkspace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace** | [**DSWorkspace***](DSWorkspace*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 

### Return type

[**DSWorkspace***](DSWorkspace.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspaceFile**
```objc
-(NSNumber*) updateWorkspaceFileWithAccountId: (NSString*) accountId
    workspaceId: (NSString*) workspaceId
    folderId: (NSString*) folderId
    fileId: (NSString*) fileId
        completionHandler: (void (^)(DSWorkspaceItem* output, NSError* error)) handler;
```

Update Workspace File Metadata

Updates workspace item metadata for one or more specific files/folders.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* workspaceId = @"workspaceId_example"; // Specifies the workspace ID GUID.
NSString* folderId = @"folderId_example"; // The ID of the folder being accessed.
NSString* fileId = @"fileId_example"; // Specifies the room file ID GUID.

DSWorkspacesApi*apiInstance = [[DSWorkspacesApi alloc] init];

// Update Workspace File Metadata
[apiInstance updateWorkspaceFileWithAccountId:accountId
              workspaceId:workspaceId
              folderId:folderId
              fileId:fileId
          completionHandler: ^(DSWorkspaceItem* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSWorkspacesApi->updateWorkspaceFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **workspaceId** | **NSString***| Specifies the workspace ID GUID. | 
 **folderId** | **NSString***| The ID of the folder being accessed. | 
 **fileId** | **NSString***| Specifies the room file ID GUID. | 

### Return type

[**DSWorkspaceItem***](DSWorkspaceItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

