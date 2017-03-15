#import "DSNewAccountDefinition.h"

@implementation DSNewAccountDefinition

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accountName": @"accountName", @"accountSettings": @"accountSettings", @"addressInformation": @"addressInformation", @"creditCardInformation": @"creditCardInformation", @"distributorCode": @"distributorCode", @"distributorPassword": @"distributorPassword", @"initialUser": @"initialUser", @"planInformation": @"planInformation", @"referralInformation": @"referralInformation", @"socialAccountInformation": @"socialAccountInformation" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountName", @"accountSettings", @"addressInformation", @"creditCardInformation", @"distributorCode", @"distributorPassword", @"initialUser", @"planInformation", @"referralInformation", @"socialAccountInformation"];
  return [optionalProperties containsObject:propertyName];
}

@end
