# DSBillingPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appStoreProducts** | [**NSArray&lt;DSAppStoreProduct&gt;***](DSAppStoreProduct.md) | Reserved: TBD | [optional] 
**currencyPlanPrices** | [**NSArray&lt;DSCurrencyPlanPrice&gt;***](DSCurrencyPlanPrice.md) | Contains the currencyCode and currencySymbol for the alternate currency values for envelopeFee, fixedFee, and seatFee that are configured for this plan feature set. | [optional] 
**enableSupport** | **NSString*** | When set to **true**, then customer support is provided as part of the account plan. | [optional] 
**includedSeats** | **NSString*** | The number of seats (users) included. | [optional] 
**otherDiscountPercent** | **NSString*** |  | [optional] 
**paymentCycle** | **NSString*** |  The payment cycle associated with the plan. The possible values are: Monthly or Annually.  | [optional] 
**paymentMethod** | **NSString*** |  | [optional] 
**perSeatPrice** | **NSString*** | The per seat price for the plan. | [optional] 
**planClassification** | **NSString*** | Identifies the type of plan. Examples include Business, Corporate, Enterprise, Free. | [optional] 
**planFeatureSets** | [**NSArray&lt;DSFeatureSet&gt;***](DSFeatureSet.md) |  | [optional] 
**planId** | **NSString*** |  | [optional] 
**planName** | **NSString*** | The name of the Billing Plan. | [optional] 
**seatDiscounts** | [**NSArray&lt;DSSeatDiscount&gt;***](DSSeatDiscount.md) |  | [optional] 
**supportIncidentFee** | **NSString*** | The support incident fee charged for each support incident. | [optional] 
**supportPlanFee** | **NSString*** | The support plan fee charged for this plan. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


