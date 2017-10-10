# DSConnectLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **NSString*** | The account ID associated with the envelope. | [optional] 
**configUrl** | **NSString*** | The web address of the listener or Retrieving Service end point for Connect. | [optional] 
**connectDebugLog** | [**NSArray&lt;DSConnectDebugLog&gt;***](DSConnectDebugLog.md) | A complex element containing information about the Connect configuration, error details, date/time, description and payload.  This is only included in the response if the query additional_info&#x3D;true is used. | [optional] 
**connectId** | **NSString*** | The identifier for the Connect configuration that failed. If an account has multiple Connect configurations, this value is used to look up the Connect configuration for the failed post. | [optional] 
**created** | **NSString*** | The date and time the entry was created. | [optional] 
**email** | **NSString*** | The email that sent the envelope. | [optional] 
**envelopeId** | **NSString*** | The envelope ID of the envelope status that failed to post. | [optional] 
**error** | **NSString*** | The error that caused the Connect post to fail. | [optional] 
**failureId** | **NSString*** | The failure log ID for the failure. | [optional] 
**failureUri** | **NSString*** | The URI for the failure. | [optional] 
**lastTry** | **NSString*** | The date and time the last attempt to post. | [optional] 
**logId** | **NSString*** | The Connect log ID for the entry. | [optional] 
**logUri** | **NSString*** | The URI for the log item. | [optional] 
**retryCount** | **NSString*** | The number of times the Connect post has been retried. | [optional] 
**retryUri** | **NSString*** | The UEI to retry to publish the Connect failure. | [optional] 
**status** | **NSString*** | The new envelope status for the failed Connect post. The possible values are: Any, Voided, Created, Deleted, Sent, Delivered, Signed, Completed, Declined, TimedOut, Template, or Processing. | [optional] 
**subject** | **NSString*** | The envelope subject. | [optional] 
**userName** | **NSString*** | The name of the envelope sender. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


