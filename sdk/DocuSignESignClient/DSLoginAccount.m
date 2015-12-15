#import "DSLoginAccount.h"

@implementation DSLoginAccount

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"accountId": @"accountId", @"accountIdGuid": @"accountIdGuid", @"baseUrl": @"baseUrl", @"isDefault": @"isDefault", @"userName": @"userName", @"userId": @"userId", @"email": @"email", @"siteDescription": @"siteDescription", @"loginAccountSettings": @"loginAccountSettings", @"loginUserSettings": @"loginUserSettings" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"name", @"accountId", @"accountIdGuid", @"baseUrl", @"isDefault", @"userName", @"userId", @"email", @"siteDescription", @"loginAccountSettings", @"loginUserSettings"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
