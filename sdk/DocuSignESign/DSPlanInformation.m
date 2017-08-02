#import "DSPlanInformation.h"

@implementation DSPlanInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"addOns": @"addOns", @"currencyCode": @"currencyCode", @"freeTrialDaysOverride": @"freeTrialDaysOverride", @"planFeatureSets": @"planFeatureSets", @"planId": @"planId", @"recipientDomains": @"recipientDomains" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addOns", @"currencyCode", @"freeTrialDaysOverride", @"planFeatureSets", @"planId", @"recipientDomains"];
  return [optionalProperties containsObject:propertyName];
}

@end
