#import "DSBillingPlanUpdateResponse.h"

@implementation DSBillingPlanUpdateResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"billingPlanPreview": @"billingPlanPreview", @"currencyCode": @"currencyCode", @"includedSeats": @"includedSeats", @"paymentCycle": @"paymentCycle", @"paymentMethod": @"paymentMethod", @"planId": @"planId", @"planName": @"planName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"billingPlanPreview", @"currencyCode", @"includedSeats", @"paymentCycle", @"paymentMethod", @"planId", @"planName"];
  return [optionalProperties containsObject:propertyName];
}

@end
