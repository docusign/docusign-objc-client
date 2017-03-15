#import "DSBillingPlanInformation.h"

@implementation DSBillingPlanInformation

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"appStoreReceipt": @"appStoreReceipt", @"billingAddress": @"billingAddress", @"creditCardInformation": @"creditCardInformation", @"downgradeReason": @"downgradeReason", @"enableSupport": @"enableSupport", @"includedSeats": @"includedSeats", @"incrementalSeats": @"incrementalSeats", @"planInformation": @"planInformation", @"referralInformation": @"referralInformation", @"renewalStatus": @"renewalStatus", @"saleDiscountAmount": @"saleDiscountAmount", @"saleDiscountFixedAmount": @"saleDiscountFixedAmount", @"saleDiscountPercent": @"saleDiscountPercent", @"saleDiscountPeriods": @"saleDiscountPeriods", @"saleDiscountSeatPriceOverride": @"saleDiscountSeatPriceOverride" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"appStoreReceipt", @"billingAddress", @"creditCardInformation", @"downgradeReason", @"enableSupport", @"includedSeats", @"incrementalSeats", @"planInformation", @"referralInformation", @"renewalStatus", @"saleDiscountAmount", @"saleDiscountFixedAmount", @"saleDiscountPercent", @"saleDiscountPeriods", @"saleDiscountSeatPriceOverride"];
  return [optionalProperties containsObject:propertyName];
}

@end
