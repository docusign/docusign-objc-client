# DSAccountBillingPlanResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billingAddress** | [**DSAccountAddress***](DSAccountAddress.md) |  | [optional] 
**billingAddressIsCreditCardAddress** | **NSString*** | When set to **true**, the credit card address information is the same as that returned as the billing address. If false, then the billing address is considered a billing contact address, and the credit card address can be different. | [optional] 
**billingPlan** | [**DSAccountBillingPlan***](DSAccountBillingPlan.md) |  | [optional] 
**creditCardInformation** | [**DSCreditCardInformation***](DSCreditCardInformation.md) |  | [optional] 
**referralInformation** | [**DSReferralInformation***](DSReferralInformation.md) |  | [optional] 
**successorPlans** | [**NSArray&lt;DSBillingPlan&gt;***](DSBillingPlan.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


