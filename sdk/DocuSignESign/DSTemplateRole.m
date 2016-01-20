#import "DSTemplateRole.h"

@implementation DSTemplateRole

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"email": @"email", @"roleName": @"roleName", @"name": @"name", @"signingGroupId": @"signingGroupId", @"inPersonSignerName": @"inPersonSignerName", @"clientUserId": @"clientUserId", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"defaultRecipient": @"defaultRecipient", @"accessCode": @"accessCode", @"routingOrder": @"routingOrder", @"emailNotification": @"emailNotification", @"tabs": @"tabs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"email", @"roleName", @"name", @"signingGroupId", @"inPersonSignerName", @"clientUserId", @"embeddedRecipientStartURL", @"defaultRecipient", @"accessCode", @"routingOrder", @"emailNotification", @"tabs"];

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
