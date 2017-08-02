# DSPowerFormRecipient

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessCode** | **NSString*** | If a value is provided, the recipient must enter the value as the access code to view and sign the envelope.   Maximum Length: 50 characters and it must conform to the account’s access code format setting.  If blank, but the signer &#x60;accessCode&#x60; property is set in the envelope, then that value is used.  If blank and the signer &#x60;accessCode&#x60; property is not set, then the access code is not required. | [optional] 
**accessCodeLocked** | **NSString*** |  | [optional] 
**accessCodeRequired** | **NSString*** |  | [optional] 
**email** | **NSString*** |  | [optional] 
**emailLocked** | **NSString*** |  | [optional] 
**idCheckConfigurationName** | **NSString*** | Specifies authentication check by name. The names used here must be the same as the authentication type names used by the account (these name can also be found in the web console sending interface in the Identify list for a recipient,) This overrides any default authentication setting.  *Example*: Your account has ID Check and SMS Authentication available and in the web console Identify list these appear as &#39;ID Check $&#39; and &#39;SMS Auth $&#39;. To use ID check in an envelope, the idCheckConfigurationName should be &#39;ID Check &#39;. If you wanted to use SMS, it would be &#39;SMS Auth $&#39; and you would need to add you would need to add phone number information to the &#x60;smsAuthentication&#x60; node. | [optional] 
**idCheckRequired** | **NSString*** |  | [optional] 
**name** | **NSString*** |  | [optional] 
**recipientType** | **NSString*** |  | [optional] 
**roleName** | **NSString*** | Optional element. Specifies the role name associated with the recipient.&lt;br/&gt;&lt;br/&gt;This is required when working with template recipients. | [optional] 
**routingOrder** | **NSString*** | Specifies the routing order of the recipient in the envelope.  | [optional] 
**templateRequiresIdLookup** | **NSString*** |  | [optional] 
**userNameLocked** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


