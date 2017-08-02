#import "DSProvisioningInformation.h"

@implementation DSProvisioningInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"defaultConnectionId": @"defaultConnectionId", @"defaultPlanId": @"defaultPlanId", @"distributorCode": @"distributorCode", @"distributorPassword": @"distributorPassword", @"passwordRuleText": @"passwordRuleText", @"planPromotionText": @"planPromotionText", @"purchaseOrderOrPromAllowed": @"purchaseOrderOrPromAllowed" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"defaultConnectionId", @"defaultPlanId", @"distributorCode", @"distributorPassword", @"passwordRuleText", @"planPromotionText", @"purchaseOrderOrPromAllowed"];
  return [optionalProperties containsObject:propertyName];
}

@end
