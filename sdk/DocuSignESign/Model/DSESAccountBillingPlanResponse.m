#import <DSESAccountBillingPlanResponse.h>

@implementation DSESAccountBillingPlanResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"billingAddress": @"billingAddress", @"billingAddressIsCreditCardAddress": @"billingAddressIsCreditCardAddress", @"billingPlan": @"billingPlan", @"creditCardInformation": @"creditCardInformation", @"directDebitProcessorInformation": @"directDebitProcessorInformation", @"downgradePlanInformation": @"downgradePlanInformation", @"paymentMethod": @"paymentMethod", @"paymentProcessorInformation": @"paymentProcessorInformation", @"referralInformation": @"referralInformation", @"successorPlans": @"successorPlans" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"billingAddress", @"billingAddressIsCreditCardAddress", @"billingPlan", @"creditCardInformation", @"directDebitProcessorInformation", @"downgradePlanInformation", @"paymentMethod", @"paymentProcessorInformation", @"referralInformation", @"successorPlans"];
  return [optionalProperties containsObject:propertyName];
}

@end
