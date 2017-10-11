# DSBulkEnvelopeStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batchId** | **NSString*** | Specifies an identifier which can be used to retrieve a more detailed status of individual bulk recipient batches. | [optional] 
**batchSize** | **NSString*** | The number of items returned in this response. | [optional] 
**bulkEnvelopes** | [**NSArray&lt;DSBulkEnvelope&gt;***](DSBulkEnvelope.md) | Reserved: TBD | [optional] 
**bulkEnvelopesBatchUri** | **NSString*** | Reserved: TBD | [optional] 
**endPosition** | **NSString*** | The last position in the result set.  | [optional] 
**failed** | **NSString*** | The number of entries with a status of failed.  | [optional] 
**nextUri** | **NSString*** | The URI to the next chunk of records based on the search request. If the endPosition is the entire results of the search, this is null.  | [optional] 
**previousUri** | **NSString*** | The postal code for the billing address. | [optional] 
**queued** | **NSString*** | The number of entries with a status of queued.  | [optional] 
**resultSetSize** | **NSString*** | The number of results returned in this response.  | [optional] 
**sent** | **NSString*** | The number of entries with a status of sent. | [optional] 
**startPosition** | **NSString*** | Starting position of the current result set. | [optional] 
**submittedDate** | **NSString*** |  | [optional] 
**totalSetSize** | **NSString*** | The total number of items available in the result set. This will always be greater than or equal to the value of the property returning the results in the in the response. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


