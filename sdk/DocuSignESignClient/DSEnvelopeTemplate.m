#import "DSEnvelopeTemplate.h"

@implementation DSEnvelopeTemplate

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"envelopeTemplateDefinition": @"envelopeTemplateDefinition", @"documents": @"documents", @"recipients": @"recipients", @"customFields": @"customFields", @"transactionId": @"transactionId", @"status": @"status", @"documentsUri": @"documentsUri", @"recipientsUri": @"recipientsUri", @"asynchronous": @"asynchronous", @"envelopeUri": @"envelopeUri", @"emailSubject": @"emailSubject", @"emailBlurb": @"emailBlurb", @"envelopeId": @"envelopeId", @"signingLocation": @"signingLocation", @"customFieldsUri": @"customFieldsUri", @"envelopeIdStamping": @"envelopeIdStamping", @"authoritativeCopy": @"authoritativeCopy", @"notification": @"notification", @"notificationUri": @"notificationUri", @"enforceSignerVisibility": @"enforceSignerVisibility", @"enableWetSign": @"enableWetSign", @"allowMarkup": @"allowMarkup", @"allowReassign": @"allowReassign", @"createdDateTime": @"createdDateTime", @"lastModifiedDateTime": @"lastModifiedDateTime", @"deliveredDateTime": @"deliveredDateTime", @"sentDateTime": @"sentDateTime", @"completedDateTime": @"completedDateTime", @"voidedDateTime": @"voidedDateTime", @"voidedReason": @"voidedReason", @"deletedDateTime": @"deletedDateTime", @"declinedDateTime": @"declinedDateTime", @"statusChangedDateTime": @"statusChangedDateTime", @"documentsCombinedUri": @"documentsCombinedUri", @"certificateUri": @"certificateUri", @"templatesUri": @"templatesUri", @"messageLock": @"messageLock", @"recipientsLock": @"recipientsLock", @"useDisclosure": @"useDisclosure", @"emailSettings": @"emailSettings", @"purgeState": @"purgeState", @"lockInformation": @"lockInformation", @"is21CFRPart11": @"is21CFRPart11" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"envelopeTemplateDefinition", @"documents", @"recipients", @"customFields", @"transactionId", @"status", @"documentsUri", @"recipientsUri", @"asynchronous", @"envelopeUri", @"emailSubject", @"emailBlurb", @"envelopeId", @"signingLocation", @"customFieldsUri", @"envelopeIdStamping", @"authoritativeCopy", @"notification", @"notificationUri", @"enforceSignerVisibility", @"enableWetSign", @"allowMarkup", @"allowReassign", @"createdDateTime", @"lastModifiedDateTime", @"deliveredDateTime", @"sentDateTime", @"completedDateTime", @"voidedDateTime", @"voidedReason", @"deletedDateTime", @"declinedDateTime", @"statusChangedDateTime", @"documentsCombinedUri", @"certificateUri", @"templatesUri", @"messageLock", @"recipientsLock", @"useDisclosure", @"emailSettings", @"purgeState", @"lockInformation", @"is21CFRPart11"];

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
