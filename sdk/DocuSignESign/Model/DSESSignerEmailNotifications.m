#import <DSESSignerEmailNotifications.h>

@implementation DSESSignerEmailNotifications

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"agentNotification": @"agentNotification", @"carbonCopyNotification": @"carbonCopyNotification", @"certifiedDeliveryNotification": @"certifiedDeliveryNotification", @"commentsOnlyPrivateAndMention": @"commentsOnlyPrivateAndMention", @"commentsReceiveAll": @"commentsReceiveAll", @"documentMarkupActivation": @"documentMarkupActivation", @"envelopeActivation": @"envelopeActivation", @"envelopeComplete": @"envelopeComplete", @"envelopeCorrected": @"envelopeCorrected", @"envelopeDeclined": @"envelopeDeclined", @"envelopeVoided": @"envelopeVoided", @"faxReceived": @"faxReceived", @"offlineSigningFailed": @"offlineSigningFailed", @"purgeDocuments": @"purgeDocuments", @"reassignedSigner": @"reassignedSigner", @"whenSigningGroupMember": @"whenSigningGroupMember" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"agentNotification", @"carbonCopyNotification", @"certifiedDeliveryNotification", @"commentsOnlyPrivateAndMention", @"commentsReceiveAll", @"documentMarkupActivation", @"envelopeActivation", @"envelopeComplete", @"envelopeCorrected", @"envelopeDeclined", @"envelopeVoided", @"faxReceived", @"offlineSigningFailed", @"purgeDocuments", @"reassignedSigner", @"whenSigningGroupMember"];
  return [optionalProperties containsObject:propertyName];
}

@end
