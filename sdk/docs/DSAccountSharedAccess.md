# DSAccountSharedAccess

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **NSString*** | The account ID associated with the envelope. | [optional] 
**endPosition** | **NSString*** | The last position in the result set.  | [optional] 
**errorDetails** | [**DSErrorDetails***](DSErrorDetails.md) |  | [optional] 
**nextUri** | **NSString*** | The URI to the next chunk of records based on the search request. If the endPosition is the entire results of the search, this is null.  | [optional] 
**previousUri** | **NSString*** | The postal code for the billing address. | [optional] 
**resultSetSize** | **NSString*** | The number of results returned in this response.  | [optional] 
**sharedAccess** | [**NSArray&lt;DSMemberSharedItems&gt;***](DSMemberSharedItems.md) | A complex type containing the shared access information to an envelope for the users specified in the request. | [optional] 
**startPosition** | **NSString*** | Starting position of the current result set. | [optional] 
**totalSetSize** | **NSString*** | The total number of items available in the result set. This will always be greater than or equal to the value of the property returning the results in the in the response. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


