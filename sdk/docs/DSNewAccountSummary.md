# DSNewAccountSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **NSString*** | The account ID associated with the envelope. | [optional] 
**accountIdGuid** | **NSString*** | The GUID associated with the account ID. | [optional] 
**accountName** | **NSString*** | The account name for the new account. | [optional] 
**apiPassword** | **NSString*** | Contains a token that can be used for authentication in API calls instead of using the user name and password. | [optional] 
**baseUrl** | **NSString*** | The URL that should be used for successive calls to this account. It includes the protocal (https), the DocuSign server where the account is located, and the account number. Use this Url to make API calls against this account. Many of the API calls provide Uri&#39;s that are relative to this baseUrl. | [optional] 
**billingPlanPreview** | [**DSBillingPlanPreview***](DSBillingPlanPreview.md) |  | [optional] 
**userId** | **NSString*** | Specifies the user ID of the new user. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


