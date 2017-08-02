#import "DSEnvelopeTemplateResult.h"

@implementation DSEnvelopeTemplateResult

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"allowMarkup": @"allowMarkup", @"allowReassign": @"allowReassign", @"asynchronous": @"asynchronous", @"attachmentsUri": @"attachmentsUri", @"authoritativeCopy": @"authoritativeCopy", @"autoNavigation": @"autoNavigation", @"brandId": @"brandId", @"brandLock": @"brandLock", @"certificateUri": @"certificateUri", @"completedDateTime": @"completedDateTime", @"createdDateTime": @"createdDateTime", @"customFields": @"customFields", @"customFieldsUri": @"customFieldsUri", @"declinedDateTime": @"declinedDateTime", @"deletedDateTime": @"deletedDateTime", @"deliveredDateTime": @"deliveredDateTime", @"_description": @"description", @"documents": @"documents", @"documentsCombinedUri": @"documentsCombinedUri", @"documentsUri": @"documentsUri", @"emailBlurb": @"emailBlurb", @"emailSettings": @"emailSettings", @"emailSubject": @"emailSubject", @"enableWetSign": @"enableWetSign", @"enforceSignerVisibility": @"enforceSignerVisibility", @"envelopeId": @"envelopeId", @"envelopeIdStamping": @"envelopeIdStamping", @"envelopeUri": @"envelopeUri", @"folderId": @"folderId", @"folderName": @"folderName", @"folderUri": @"folderUri", @"initialSentDateTime": @"initialSentDateTime", @"is21CFRPart11": @"is21CFRPart11", @"isSignatureProviderEnvelope": @"isSignatureProviderEnvelope", @"lastModified": @"lastModified", @"lastModifiedDateTime": @"lastModifiedDateTime", @"lockInformation": @"lockInformation", @"messageLock": @"messageLock", @"name": @"name", @"notification": @"notification", @"notificationUri": @"notificationUri", @"owner": @"owner", @"pageCount": @"pageCount", @"parentFolderUri": @"parentFolderUri", @"password": @"password", @"purgeState": @"purgeState", @"recipients": @"recipients", @"recipientsLock": @"recipientsLock", @"recipientsUri": @"recipientsUri", @"sentDateTime": @"sentDateTime", @"shared": @"shared", @"signingLocation": @"signingLocation", @"status": @"status", @"statusChangedDateTime": @"statusChangedDateTime", @"templateId": @"templateId", @"templatesUri": @"templatesUri", @"transactionId": @"transactionId", @"uri": @"uri", @"useDisclosure": @"useDisclosure", @"voidedDateTime": @"voidedDateTime", @"voidedReason": @"voidedReason" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowMarkup", @"allowReassign", @"asynchronous", @"attachmentsUri", @"authoritativeCopy", @"autoNavigation", @"brandId", @"brandLock", @"certificateUri", @"completedDateTime", @"createdDateTime", @"customFields", @"customFieldsUri", @"declinedDateTime", @"deletedDateTime", @"deliveredDateTime", @"_description", @"documents", @"documentsCombinedUri", @"documentsUri", @"emailBlurb", @"emailSettings", @"emailSubject", @"enableWetSign", @"enforceSignerVisibility", @"envelopeId", @"envelopeIdStamping", @"envelopeUri", @"folderId", @"folderName", @"folderUri", @"initialSentDateTime", @"is21CFRPart11", @"isSignatureProviderEnvelope", @"lastModified", @"lastModifiedDateTime", @"lockInformation", @"messageLock", @"name", @"notification", @"notificationUri", @"owner", @"pageCount", @"parentFolderUri", @"password", @"purgeState", @"recipients", @"recipientsLock", @"recipientsUri", @"sentDateTime", @"shared", @"signingLocation", @"status", @"statusChangedDateTime", @"templateId", @"templatesUri", @"transactionId", @"uri", @"useDisclosure", @"voidedDateTime", @"voidedReason"];
  return [optionalProperties containsObject:propertyName];
}

@end
