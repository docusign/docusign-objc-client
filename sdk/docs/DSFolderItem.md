# DSFolderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**completedDateTime** | **NSString*** | Specifies the date and time this item was completed. | [optional] 
**createdDateTime** | **NSString*** | Indicates the date and time the item was created. | [optional] 
**customFields** | [**NSArray&lt;DSCustomFieldV2&gt;***](DSCustomFieldV2.md) | An optional array of strings that allows the sender to provide custom data about the recipient. This information is returned in the envelope status but otherwise not used by DocuSign. Each customField string can be a maximum of 100 characters. | [optional] 
**_description** | **NSString*** |  | [optional] 
**envelopeId** | **NSString*** | The envelope ID of the envelope status that failed to post. | [optional] 
**envelopeUri** | **NSString*** | Contains a URI for an endpoint that you can use to retrieve the envelope or envelopes. | [optional] 
**is21CFRPart11** | **NSString*** | When set to **true**, indicates that this module is enabled on the account. | [optional] 
**isSignatureProviderEnvelope** | **NSString*** |  | [optional] 
**lastModified** | **NSString*** |  | [optional] 
**name** | **NSString*** |  | [optional] 
**ownerName** | **NSString*** | Name of the envelope owner. | [optional] 
**pageCount** | **NSNumber*** |  | [optional] 
**password** | **NSString*** |  | [optional] 
**senderEmail** | **NSString*** |  | [optional] 
**senderName** | **NSString*** | Name of the envelope sender. | [optional] 
**sentDateTime** | **NSString*** | The date and time the envelope was sent. | [optional] 
**shared** | **NSString*** | When set to **true**, this custom tab is shared. | [optional] 
**status** | **NSString*** | Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. | [optional] 
**subject** | **NSString*** |  | [optional] 
**templateId** | **NSString*** | The unique identifier of the template. If this is not provided, DocuSign will generate a value.  | [optional] 
**uri** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


