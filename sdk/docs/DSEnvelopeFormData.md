# DSEnvelopeFormData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emailSubject** | **NSString*** | Specifies the subject of the email that is sent to all recipients.  See [ML:Template Email Subject Merge Fields] for information about adding merge field information to the email subject. | [optional] 
**envelopeId** | **NSString*** | The envelope ID of the envelope status that failed to post. | [optional] 
**formData** | [**NSArray&lt;DSNameValue&gt;***](DSNameValue.md) |  | [optional] 
**recipientFormData** | [**NSArray&lt;DSRecipientFormData&gt;***](DSRecipientFormData.md) |  | [optional] 
**sentDateTime** | **NSString*** | The date and time the envelope was sent. | [optional] 
**status** | **NSString*** | Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


