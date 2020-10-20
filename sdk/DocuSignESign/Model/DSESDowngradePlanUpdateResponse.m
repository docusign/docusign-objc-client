#import <DSESDowngradePlanUpdateResponse.h>

@implementation DSESDowngradePlanUpdateResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountPaymentMethod": @"accountPaymentMethod", @"downgradeEffectiveDate": @"downgradeEffectiveDate", @"downgradePaymentCycle": @"downgradePaymentCycle", @"downgradePlanId": @"downgradePlanId", @"downgradePlanName": @"downgradePlanName", @"downgradeRequestStatus": @"downgradeRequestStatus", @"message": @"message" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountPaymentMethod", @"downgradeEffectiveDate", @"downgradePaymentCycle", @"downgradePlanId", @"downgradePlanName", @"downgradeRequestStatus", @"message"];
  return [optionalProperties containsObject:propertyName];
}

@end
