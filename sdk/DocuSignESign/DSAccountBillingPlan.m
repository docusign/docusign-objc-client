#import "DSAccountBillingPlan.h"

@implementation DSAccountBillingPlan

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"addOns": @"addOns", @"canCancelRenewal": @"canCancelRenewal", @"canUpgrade": @"canUpgrade", @"currencyCode": @"currencyCode", @"enableSupport": @"enableSupport", @"includedSeats": @"includedSeats", @"incrementalSeats": @"incrementalSeats", @"isDowngrade": @"isDowngrade", @"otherDiscountPercent": @"otherDiscountPercent", @"paymentCycle": @"paymentCycle", @"paymentMethod": @"paymentMethod", @"perSeatPrice": @"perSeatPrice", @"planClassification": @"planClassification", @"planFeatureSets": @"planFeatureSets", @"planId": @"planId", @"planName": @"planName", @"renewalStatus": @"renewalStatus", @"seatDiscounts": @"seatDiscounts", @"supportIncidentFee": @"supportIncidentFee", @"supportPlanFee": @"supportPlanFee" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addOns", @"canCancelRenewal", @"canUpgrade", @"currencyCode", @"enableSupport", @"includedSeats", @"incrementalSeats", @"isDowngrade", @"otherDiscountPercent", @"paymentCycle", @"paymentMethod", @"perSeatPrice", @"planClassification", @"planFeatureSets", @"planId", @"planName", @"renewalStatus", @"seatDiscounts", @"supportIncidentFee", @"supportPlanFee"];
  return [optionalProperties containsObject:propertyName];
}

@end
