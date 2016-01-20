#import "DSSignerEmailNotifications.h"

@implementation DSSignerEmailNotifications

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"envelopeActivation": @"envelopeActivation", @"envelopeComplete": @"envelopeComplete", @"carbonCopyNotification": @"carbonCopyNotification", @"certifiedDeliveryNotification": @"certifiedDeliveryNotification", @"envelopeDeclined": @"envelopeDeclined", @"envelopeVoided": @"envelopeVoided", @"envelopeCorrected": @"envelopeCorrected", @"reassignedSigner": @"reassignedSigner", @"purgeDocuments": @"purgeDocuments", @"faxReceived": @"faxReceived", @"documentMarkupActivation": @"documentMarkupActivation", @"agentNotification": @"agentNotification", @"offlineSigningFailed": @"offlineSigningFailed" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"envelopeActivation", @"envelopeComplete", @"carbonCopyNotification", @"certifiedDeliveryNotification", @"envelopeDeclined", @"envelopeVoided", @"envelopeCorrected", @"reassignedSigner", @"purgeDocuments", @"faxReceived", @"documentMarkupActivation", @"agentNotification", @"offlineSigningFailed"];

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
