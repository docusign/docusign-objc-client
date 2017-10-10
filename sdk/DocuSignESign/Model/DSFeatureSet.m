#import "DSFeatureSet.h"

@implementation DSFeatureSet

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"currencyFeatureSetPrices": @"currencyFeatureSetPrices", @"envelopeFee": @"envelopeFee", @"featureSetId": @"featureSetId", @"fixedFee": @"fixedFee", @"is21CFRPart11": @"is21CFRPart11", @"isActive": @"isActive", @"isEnabled": @"isEnabled", @"name": @"name", @"seatFee": @"seatFee" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"currencyFeatureSetPrices", @"envelopeFee", @"featureSetId", @"fixedFee", @"is21CFRPart11", @"isActive", @"isEnabled", @"name", @"seatFee"];
  return [optionalProperties containsObject:propertyName];
}

@end
