#import "DSRecipientViewRequest.h"

@implementation DSRecipientViewRequest

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"clientUserId": @"clientUserId", @"userId": @"userId", @"userName": @"userName", @"email": @"email", @"recipientId": @"recipientId", @"returnUrl": @"returnUrl", @"pingUrl": @"pingUrl", @"pingFrequency": @"pingFrequency", @"authenticationMethod": @"authenticationMethod", @"assertionId": @"assertionId", @"authenticationInstant": @"authenticationInstant", @"securityDomain": @"securityDomain" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"clientUserId", @"userId", @"userName", @"email", @"recipientId", @"returnUrl", @"pingUrl", @"pingFrequency", @"authenticationMethod", @"assertionId", @"authenticationInstant", @"securityDomain"];

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
