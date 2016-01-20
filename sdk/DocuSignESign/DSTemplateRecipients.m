#import "DSTemplateRecipients.h"

@implementation DSTemplateRecipients

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"signers": @"signers", @"agents": @"agents", @"editors": @"editors", @"intermediaries": @"intermediaries", @"carbonCopies": @"carbonCopies", @"certifiedDeliveries": @"certifiedDeliveries", @"inPersonSigners": @"inPersonSigners", @"recipientCount": @"recipientCount", @"currentRoutingOrder": @"currentRoutingOrder", @"errorDetails": @"errorDetails" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"signers", @"agents", @"editors", @"intermediaries", @"carbonCopies", @"certifiedDeliveries", @"inPersonSigners", @"recipientCount", @"currentRoutingOrder", @"errorDetails"];

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
