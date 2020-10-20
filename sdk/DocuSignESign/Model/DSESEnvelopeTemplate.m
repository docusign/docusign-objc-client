#import <DSESEnvelopeTemplate.h>

@implementation DSESEnvelopeTemplate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessControlListBase64": @"accessControlListBase64", @"allowComments": @"allowComments", @"allowMarkup": @"allowMarkup", @"allowReassign": @"allowReassign", @"allowViewHistory": @"allowViewHistory", @"anySigner": @"anySigner", @"asynchronous": @"asynchronous", @"attachmentsUri": @"attachmentsUri", @"authoritativeCopy": @"authoritativeCopy", @"authoritativeCopyDefault": @"authoritativeCopyDefault", @"autoMatch": @"autoMatch", @"autoMatchSpecifiedByUser": @"autoMatchSpecifiedByUser", @"autoNavigation": @"autoNavigation", @"brandId": @"brandId", @"brandLock": @"brandLock", @"certificateUri": @"certificateUri", @"completedDateTime": @"completedDateTime", @"varCopyRecipientData": @"copyRecipientData", @"created": @"created", @"createdDateTime": @"createdDateTime", @"customFields": @"customFields", @"customFieldsUri": @"customFieldsUri", @"declinedDateTime": @"declinedDateTime", @"deletedDateTime": @"deletedDateTime", @"deliveredDateTime": @"deliveredDateTime", @"_description": @"description", @"disableResponsiveDocument": @"disableResponsiveDocument", @"documents": @"documents", @"documentsCombinedUri": @"documentsCombinedUri", @"documentsUri": @"documentsUri", @"emailBlurb": @"emailBlurb", @"emailSettings": @"emailSettings", @"emailSubject": @"emailSubject", @"enableWetSign": @"enableWetSign", @"enforceSignerVisibility": @"enforceSignerVisibility", @"envelopeAttachments": @"envelopeAttachments", @"envelopeDocuments": @"envelopeDocuments", @"envelopeId": @"envelopeId", @"envelopeIdStamping": @"envelopeIdStamping", @"envelopeLocation": @"envelopeLocation", @"envelopeMetadata": @"envelopeMetadata", @"envelopeUri": @"envelopeUri", @"expireAfter": @"expireAfter", @"expireDateTime": @"expireDateTime", @"expireEnabled": @"expireEnabled", @"externalEnvelopeId": @"externalEnvelopeId", @"favoritedByMe": @"favoritedByMe", @"folderId": @"folderId", @"folderIds": @"folderIds", @"folderName": @"folderName", @"folders": @"folders", @"hasComments": @"hasComments", @"hasFormDataChanged": @"hasFormDataChanged", @"hasWavFile": @"hasWavFile", @"holder": @"holder", @"initialSentDateTime": @"initialSentDateTime", @"is21CFRPart11": @"is21CFRPart11", @"isDynamicEnvelope": @"isDynamicEnvelope", @"isSignatureProviderEnvelope": @"isSignatureProviderEnvelope", @"lastModified": @"lastModified", @"lastModifiedBy": @"lastModifiedBy", @"lastModifiedDateTime": @"lastModifiedDateTime", @"lastUsed": @"lastUsed", @"location": @"location", @"lockInformation": @"lockInformation", @"messageLock": @"messageLock", @"name": @"name", @"varNewPassword": @"newPassword", @"notification": @"notification", @"notificationUri": @"notificationUri", @"owner": @"owner", @"pageCount": @"pageCount", @"password": @"password", @"passwordProtected": @"passwordProtected", @"powerForm": @"powerForm", @"powerForms": @"powerForms", @"purgeCompletedDate": @"purgeCompletedDate", @"purgeRequestDate": @"purgeRequestDate", @"purgeState": @"purgeState", @"recipients": @"recipients", @"recipientsLock": @"recipientsLock", @"recipientsUri": @"recipientsUri", @"sender": @"sender", @"sentDateTime": @"sentDateTime", @"shared": @"shared", @"signerCanSignOnMobile": @"signerCanSignOnMobile", @"signingLocation": @"signingLocation", @"status": @"status", @"statusChangedDateTime": @"statusChangedDateTime", @"statusDateTime": @"statusDateTime", @"templateId": @"templateId", @"templatesUri": @"templatesUri", @"transactionId": @"transactionId", @"uri": @"uri", @"useDisclosure": @"useDisclosure", @"voidedDateTime": @"voidedDateTime", @"voidedReason": @"voidedReason", @"workflow": @"workflow" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessControlListBase64", @"allowComments", @"allowMarkup", @"allowReassign", @"allowViewHistory", @"anySigner", @"asynchronous", @"attachmentsUri", @"authoritativeCopy", @"authoritativeCopyDefault", @"autoMatch", @"autoMatchSpecifiedByUser", @"autoNavigation", @"brandId", @"brandLock", @"certificateUri", @"completedDateTime", @"varCopyRecipientData", @"created", @"createdDateTime", @"customFields", @"customFieldsUri", @"declinedDateTime", @"deletedDateTime", @"deliveredDateTime", @"_description", @"disableResponsiveDocument", @"documents", @"documentsCombinedUri", @"documentsUri", @"emailBlurb", @"emailSettings", @"emailSubject", @"enableWetSign", @"enforceSignerVisibility", @"envelopeAttachments", @"envelopeDocuments", @"envelopeId", @"envelopeIdStamping", @"envelopeLocation", @"envelopeMetadata", @"envelopeUri", @"expireAfter", @"expireDateTime", @"expireEnabled", @"externalEnvelopeId", @"favoritedByMe", @"folderId", @"folderIds", @"folderName", @"folders", @"hasComments", @"hasFormDataChanged", @"hasWavFile", @"holder", @"initialSentDateTime", @"is21CFRPart11", @"isDynamicEnvelope", @"isSignatureProviderEnvelope", @"lastModified", @"lastModifiedBy", @"lastModifiedDateTime", @"lastUsed", @"location", @"lockInformation", @"messageLock", @"name", @"varNewPassword", @"notification", @"notificationUri", @"owner", @"pageCount", @"password", @"passwordProtected", @"powerForm", @"powerForms", @"purgeCompletedDate", @"purgeRequestDate", @"purgeState", @"recipients", @"recipientsLock", @"recipientsUri", @"sender", @"sentDateTime", @"shared", @"signerCanSignOnMobile", @"signingLocation", @"status", @"statusChangedDateTime", @"statusDateTime", @"templateId", @"templatesUri", @"transactionId", @"uri", @"useDisclosure", @"voidedDateTime", @"voidedReason", @"workflow"];
  return [optionalProperties containsObject:propertyName];
}

@end
