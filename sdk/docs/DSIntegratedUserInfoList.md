# DSIntegratedUserInfoList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allUsersSelected** | **NSString*** |  | [optional] 
**endPosition** | **NSString*** | The last position in the result set.  | [optional] 
**nextUri** | **NSString*** | The URI to the next chunk of records based on the search request. If the endPosition is the entire results of the search, this is null.  | [optional] 
**previousUri** | **NSString*** | The postal code for the billing address. | [optional] 
**resultSetSize** | **NSString*** | The number of results returned in this response.  | [optional] 
**startPosition** | **NSString*** | Starting position of the current result set. | [optional] 
**totalSetSize** | **NSString*** | The total number of items available in the result set. This will always be greater than or equal to the value of the property returning the results in the in the response. | [optional] 
**users** | [**NSArray&lt;DSUserInfo&gt;***](DSUserInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


