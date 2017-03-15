#import "DSBillingCharge.h"

@implementation DSBillingCharge

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"allowedQuantity": @"allowedQuantity", @"blocked": @"blocked", @"chargeName": @"chargeName", @"chargeType": @"chargeType", @"chargeUnitOfMeasure": @"chargeUnitOfMeasure", @"discounts": @"discounts", @"firstEffectiveDate": @"firstEffectiveDate", @"includedQuantity": @"includedQuantity", @"incrementalQuantity": @"incrementalQuantity", @"lastEffectiveDate": @"lastEffectiveDate", @"prices": @"prices", @"unitPrice": @"unitPrice", @"usedQuantity": @"usedQuantity" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowedQuantity", @"blocked", @"chargeName", @"chargeType", @"chargeUnitOfMeasure", @"discounts", @"firstEffectiveDate", @"includedQuantity", @"incrementalQuantity", @"lastEffectiveDate", @"prices", @"unitPrice", @"usedQuantity"];
  return [optionalProperties containsObject:propertyName];
}

@end
