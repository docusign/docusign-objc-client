# DSLoginAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **NSString*** | The account ID associated with the envelope. | [optional] 
**accountIdGuid** | **NSString*** | The GUID associated with the account ID. | [optional] 
**baseUrl** | **NSString*** | The URL that should be used for successive calls to this account. It includes the protocal (https), the DocuSign server where the account is located, and the account number. Use this Url to make API calls against this account. Many of the API calls provide Uri&#39;s that are relative to this baseUrl. | [optional] 
**email** | **NSString*** | The email address for the user. | [optional] 
**isDefault** | **NSString*** | This value is true if this is the default account for the user, otherwise false is returned. | [optional] 
**loginAccountSettings** | [**NSArray&lt;DSNameValue&gt;***](DSNameValue.md) | A list of settings on the acccount that indicate what features are available. | [optional] 
**loginUserSettings** | [**NSArray&lt;DSNameValue&gt;***](DSNameValue.md) | A list of user-level settings that indicate what user-specific features are available. | [optional] 
**name** | **NSString*** | The name associated with the account. | [optional] 
**siteDescription** | **NSString*** | An optional descirption of the site that hosts the account. | [optional] 
**userId** | **NSString*** |  | [optional] 
**userName** | **NSString*** | The name of this user as defined by the account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


