#import <DSESEnvelope.h>

@implementation DSESEnvelope

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessControlListBase64": @"accessControlListBase64", @"allowComments": @"allowComments", @"allowMarkup": @"allowMarkup", @"allowReassign": @"allowReassign", @"allowViewHistory": @"allowViewHistory", @"anySigner": @"anySigner", @"asynchronous": @"asynchronous", @"attachmentsUri": @"attachmentsUri", @"authoritativeCopy": @"authoritativeCopy", @"authoritativeCopyDefault": @"authoritativeCopyDefault", @"autoNavigation": @"autoNavigation", @"brandId": @"brandId", @"brandLock": @"brandLock", @"certificateUri": @"certificateUri", @"completedDateTime": @"completedDateTime", @"varCopyRecipientData": @"copyRecipientData", @"createdDateTime": @"createdDateTime", @"customFields": @"customFields", @"customFieldsUri": @"customFieldsUri", @"declinedDateTime": @"declinedDateTime", @"deletedDateTime": @"deletedDateTime", @"deliveredDateTime": @"deliveredDateTime", @"disableResponsiveDocument": @"disableResponsiveDocument", @"documentsCombinedUri": @"documentsCombinedUri", @"documentsUri": @"documentsUri", @"emailBlurb": @"emailBlurb", @"emailSettings": @"emailSettings", @"emailSubject": @"emailSubject", @"enableWetSign": @"enableWetSign", @"enforceSignerVisibility": @"enforceSignerVisibility", @"envelopeAttachments": @"envelopeAttachments", @"envelopeDocuments": @"envelopeDocuments", @"envelopeId": @"envelopeId", @"envelopeIdStamping": @"envelopeIdStamping", @"envelopeLocation": @"envelopeLocation", @"envelopeMetadata": @"envelopeMetadata", @"envelopeUri": @"envelopeUri", @"expireAfter": @"expireAfter", @"expireDateTime": @"expireDateTime", @"expireEnabled": @"expireEnabled", @"externalEnvelopeId": @"externalEnvelopeId", @"folders": @"folders", @"hasComments": @"hasComments", @"hasFormDataChanged": @"hasFormDataChanged", @"hasWavFile": @"hasWavFile", @"holder": @"holder", @"initialSentDateTime": @"initialSentDateTime", @"is21CFRPart11": @"is21CFRPart11", @"isDynamicEnvelope": @"isDynamicEnvelope", @"isSignatureProviderEnvelope": @"isSignatureProviderEnvelope", @"lastModifiedDateTime": @"lastModifiedDateTime", @"location": @"location", @"lockInformation": @"lockInformation", @"messageLock": @"messageLock", @"notification": @"notification", @"notificationUri": @"notificationUri", @"powerForm": @"powerForm", @"purgeCompletedDate": @"purgeCompletedDate", @"purgeRequestDate": @"purgeRequestDate", @"purgeState": @"purgeState", @"recipients": @"recipients", @"recipientsLock": @"recipientsLock", @"recipientsUri": @"recipientsUri", @"sender": @"sender", @"sentDateTime": @"sentDateTime", @"signerCanSignOnMobile": @"signerCanSignOnMobile", @"signingLocation": @"signingLocation", @"status": @"status", @"statusChangedDateTime": @"statusChangedDateTime", @"statusDateTime": @"statusDateTime", @"templatesUri": @"templatesUri", @"transactionId": @"transactionId", @"useDisclosure": @"useDisclosure", @"voidedDateTime": @"voidedDateTime", @"voidedReason": @"voidedReason", @"workflow": @"workflow" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessControlListBase64", @"allowComments", @"allowMarkup", @"allowReassign", @"allowViewHistory", @"anySigner", @"asynchronous", @"attachmentsUri", @"authoritativeCopy", @"authoritativeCopyDefault", @"autoNavigation", @"brandId", @"brandLock", @"certificateUri", @"completedDateTime", @"varCopyRecipientData", @"createdDateTime", @"customFields", @"customFieldsUri", @"declinedDateTime", @"deletedDateTime", @"deliveredDateTime", @"disableResponsiveDocument", @"documentsCombinedUri", @"documentsUri", @"emailBlurb", @"emailSettings", @"emailSubject", @"enableWetSign", @"enforceSignerVisibility", @"envelopeAttachments", @"envelopeDocuments", @"envelopeId", @"envelopeIdStamping", @"envelopeLocation", @"envelopeMetadata", @"envelopeUri", @"expireAfter", @"expireDateTime", @"expireEnabled", @"externalEnvelopeId", @"folders", @"hasComments", @"hasFormDataChanged", @"hasWavFile", @"holder", @"initialSentDateTime", @"is21CFRPart11", @"isDynamicEnvelope", @"isSignatureProviderEnvelope", @"lastModifiedDateTime", @"location", @"lockInformation", @"messageLock", @"notification", @"notificationUri", @"powerForm", @"purgeCompletedDate", @"purgeRequestDate", @"purgeState", @"recipients", @"recipientsLock", @"recipientsUri", @"sender", @"sentDateTime", @"signerCanSignOnMobile", @"signingLocation", @"status", @"statusChangedDateTime", @"statusDateTime", @"templatesUri", @"transactionId", @"useDisclosure", @"voidedDateTime", @"voidedReason", @"workflow"];
  return [optionalProperties containsObject:propertyName];
}

@end
