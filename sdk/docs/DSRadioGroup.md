# DSRadioGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditionalParentLabel** | **NSString*** | For conditional fields this is the TabLabel of the parent tab that controls this tab&#39;s visibility. | [optional] 
**conditionalParentValue** | **NSString*** | For conditional fields, this is the value of the parent tab that controls the tab&#39;s visibility.  If the parent tab is a Checkbox, Radio button, Optional Signature, or Optional Initial use \&quot;on\&quot; as the value to show that the parent tab is active.  | [optional] 
**documentId** | **NSString*** | Specifies the document ID number that the tab is placed on. This must refer to an existing Document&#39;s ID attribute. | [optional] 
**groupName** | **NSString*** | The name of the group. | [optional] 
**radios** | [**NSArray&lt;DSRadio&gt;***](DSRadio.md) | Specifies the locations and status for radio buttons that are grouped together. | [optional] 
**recipientId** | **NSString*** | Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document. | [optional] 
**requireAll** | **NSString*** | When set to **true** and shared is true, information must be entered in this field to complete the envelope.  | [optional] 
**requireInitialOnSharedChange** | **NSString*** | Optional element for field markup. When set to **true**, the signer is required to initial when they modify a shared field. | [optional] 
**shared** | **NSString*** | When set to **true**, this custom tab is shared. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


