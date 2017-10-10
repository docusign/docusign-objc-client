# DSNewAccountDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountName** | **NSString*** | The account name for the new account. | [optional] 
**accountSettings** | [**NSArray&lt;DSNameValue&gt;***](DSNameValue.md) | The list of account settings. These determine the features available for the account. Note that some features are determined by the plan used to create the account, and cannot be overridden. | [optional] 
**addressInformation** | [**DSAccountAddress***](DSAccountAddress.md) |  | [optional] 
**creditCardInformation** | [**DSCreditCardInformation***](DSCreditCardInformation.md) |  | [optional] 
**distributorCode** | **NSString*** | The code that identifies the billing plan groups and plans for the new account. | [optional] 
**distributorPassword** | **NSString*** | The password for the distributorCode. | [optional] 
**initialUser** | [**DSUserInformation***](DSUserInformation.md) |  | [optional] 
**paymentProcessorInformation** | [**DSPaymentProcessorInformation***](DSPaymentProcessorInformation.md) |  | [optional] 
**planInformation** | [**DSPlanInformation***](DSPlanInformation.md) |  | [optional] 
**referralInformation** | [**DSReferralInformation***](DSReferralInformation.md) |  | [optional] 
**socialAccountInformation** | [**DSSocialAccountInformation***](DSSocialAccountInformation.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


