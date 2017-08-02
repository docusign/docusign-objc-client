#import "DSEnvelopeTemplate.h"

@implementation DSEnvelopeTemplate

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"allowMarkup": @"allowMarkup", @"allowReassign": @"allowReassign", @"asynchronous": @"asynchronous", @"attachmentsUri": @"attachmentsUri", @"authoritativeCopy": @"authoritativeCopy", @"autoNavigation": @"autoNavigation", @"brandId": @"brandId", @"brandLock": @"brandLock", @"certificateUri": @"certificateUri", @"completedDateTime": @"completedDateTime", @"createdDateTime": @"createdDateTime", @"customFields": @"customFields", @"customFieldsUri": @"customFieldsUri", @"declinedDateTime": @"declinedDateTime", @"deletedDateTime": @"deletedDateTime", @"deliveredDateTime": @"deliveredDateTime", @"documents": @"documents", @"documentsCombinedUri": @"documentsCombinedUri", @"documentsUri": @"documentsUri", @"emailBlurb": @"emailBlurb", @"emailSettings": @"emailSettings", @"emailSubject": @"emailSubject", @"enableWetSign": @"enableWetSign", @"enforceSignerVisibility": @"enforceSignerVisibility", @"envelopeId": @"envelopeId", @"envelopeIdStamping": @"envelopeIdStamping", @"envelopeTemplateDefinition": @"envelopeTemplateDefinition", @"envelopeUri": @"envelopeUri", @"initialSentDateTime": @"initialSentDateTime", @"is21CFRPart11": @"is21CFRPart11", @"isSignatureProviderEnvelope": @"isSignatureProviderEnvelope", @"lastModifiedDateTime": @"lastModifiedDateTime", @"lockInformation": @"lockInformation", @"messageLock": @"messageLock", @"notification": @"notification", @"notificationUri": @"notificationUri", @"purgeState": @"purgeState", @"recipients": @"recipients", @"recipientsLock": @"recipientsLock", @"recipientsUri": @"recipientsUri", @"sentDateTime": @"sentDateTime", @"signingLocation": @"signingLocation", @"status": @"status", @"statusChangedDateTime": @"statusChangedDateTime", @"templatesUri": @"templatesUri", @"transactionId": @"transactionId", @"useDisclosure": @"useDisclosure", @"voidedDateTime": @"voidedDateTime", @"voidedReason": @"voidedReason" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowMarkup", @"allowReassign", @"asynchronous", @"attachmentsUri", @"authoritativeCopy", @"autoNavigation", @"brandId", @"brandLock", @"certificateUri", @"completedDateTime", @"createdDateTime", @"customFields", @"customFieldsUri", @"declinedDateTime", @"deletedDateTime", @"deliveredDateTime", @"documents", @"documentsCombinedUri", @"documentsUri", @"emailBlurb", @"emailSettings", @"emailSubject", @"enableWetSign", @"enforceSignerVisibility", @"envelopeId", @"envelopeIdStamping", @"envelopeTemplateDefinition", @"envelopeUri", @"initialSentDateTime", @"is21CFRPart11", @"isSignatureProviderEnvelope", @"lastModifiedDateTime", @"lockInformation", @"messageLock", @"notification", @"notificationUri", @"purgeState", @"recipients", @"recipientsLock", @"recipientsUri", @"sentDateTime", @"signingLocation", @"status", @"statusChangedDateTime", @"templatesUri", @"transactionId", @"useDisclosure", @"voidedDateTime", @"voidedReason"];
  return [optionalProperties containsObject:propertyName];
}

@end
