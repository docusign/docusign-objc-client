# DSAccountBillingPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addOns** | [**NSArray&lt;DSAddOn&gt;***](DSAddOn.md) | Reserved: | [optional] 
**canCancelRenewal** | **NSString*** | Reserved: TBD | [optional] 
**canUpgrade** | **NSString*** | When set to **true**, specifies that you can upgrade the account through the API. | [optional] 
**currencyCode** | **NSString*** | Specifies the ISO currency code for the account. | [optional] 
**enableSupport** | **NSString*** | When set to **true**, then customer support is provided as part of the account plan. | [optional] 
**includedSeats** | **NSString*** | The number of seats (users) included. | [optional] 
**incrementalSeats** | **NSString*** | Reserved: TBD | [optional] 
**isDowngrade** | **NSString*** |  | [optional] 
**otherDiscountPercent** | **NSString*** |  Any other percentage discount for the plan.  | [optional] 
**paymentCycle** | **NSString*** |  | [optional] 
**paymentMethod** | **NSString*** |  The payment method used with the plan. The possible values are: CreditCard, PurchaseOrder, Premium, or Freemium.  | [optional] 
**perSeatPrice** | **NSString*** |  | [optional] 
**planClassification** | **NSString*** | Identifies the type of plan. Examples include Business, Corporate, Enterprise, Free. | [optional] 
**planFeatureSets** | [**NSArray&lt;DSFeatureSet&gt;***](DSFeatureSet.md) | A complex type that sets the feature sets for the account. It contains the following information (all string content):  * currencyFeatureSetPrices - Contains the currencyCode and currencySymbol for the alternate currency values for envelopeFee, fixedFee, seatFee that are configured for this plan feature set. * envelopeFee - An incremental envelope cost for plans with envelope overages (when isEnabled&#x3D;true). * featureSetId - A unique ID for the feature set. * fixedFee - A one-time fee associated with the plan (when isEnabled&#x3D;true). * isActive - Specifies whether the feature set is actively set as part of the plan. * isEnabled - Specifies whether the feature set is actively enabled as part of the plan. * name - The name of the feature set. * seatFee - An incremental seat cost for seat-based plans (when isEnabled&#x3D;true).  | [optional] 
**planId** | **NSString*** |  | [optional] 
**planName** | **NSString*** | The name of the Billing Plan. | [optional] 
**renewalStatus** | **NSString*** | The renewal status for the account. The acceptable values are:  * auto: The account automatically renews. * queued_for_close: Account will be closed at the billingPeriodEndDate. * queued_for_downgrade: Account will be downgraded at the billingPeriodEndDate. | [optional] 
**seatDiscounts** | [**NSArray&lt;DSSeatDiscount&gt;***](DSSeatDiscount.md) |  A complex type that contains any seat discount information.  Values are: BeginSeatCount, EndSeatCount, and SeatDiscountPercent.   | [optional] 
**supportIncidentFee** | **NSString*** | The support incident fee charged for each support incident. | [optional] 
**supportPlanFee** | **NSString*** | The support plan fee charged for this plan. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


