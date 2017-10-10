#import "DSEnvelopeDefinition.h"

@implementation DSEnvelopeDefinition

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accessibility": @"accessibility", @"allowMarkup": @"allowMarkup", @"allowReassign": @"allowReassign", @"allowRecipientRecursion": @"allowRecipientRecursion", @"asynchronous": @"asynchronous", @"attachments": @"attachments", @"attachmentsUri": @"attachmentsUri", @"authoritativeCopy": @"authoritativeCopy", @"autoNavigation": @"autoNavigation", @"brandId": @"brandId", @"brandLock": @"brandLock", @"certificateUri": @"certificateUri", @"completedDateTime": @"completedDateTime", @"compositeTemplates": @"compositeTemplates", @"createdDateTime": @"createdDateTime", @"customFields": @"customFields", @"customFieldsUri": @"customFieldsUri", @"declinedDateTime": @"declinedDateTime", @"deletedDateTime": @"deletedDateTime", @"deliveredDateTime": @"deliveredDateTime", @"documents": @"documents", @"documentsCombinedUri": @"documentsCombinedUri", @"documentsUri": @"documentsUri", @"emailBlurb": @"emailBlurb", @"emailSettings": @"emailSettings", @"emailSubject": @"emailSubject", @"enableWetSign": @"enableWetSign", @"enforceSignerVisibility": @"enforceSignerVisibility", @"envelopeId": @"envelopeId", @"envelopeIdStamping": @"envelopeIdStamping", @"envelopeUri": @"envelopeUri", @"eventNotification": @"eventNotification", @"initialSentDateTime": @"initialSentDateTime", @"is21CFRPart11": @"is21CFRPart11", @"isSignatureProviderEnvelope": @"isSignatureProviderEnvelope", @"lastModifiedDateTime": @"lastModifiedDateTime", @"lockInformation": @"lockInformation", @"messageLock": @"messageLock", @"notification": @"notification", @"notificationUri": @"notificationUri", @"password": @"password", @"purgeState": @"purgeState", @"recipients": @"recipients", @"recipientsLock": @"recipientsLock", @"recipientsUri": @"recipientsUri", @"sentDateTime": @"sentDateTime", @"signingLocation": @"signingLocation", @"status": @"status", @"statusChangedDateTime": @"statusChangedDateTime", @"templateId": @"templateId", @"templateRoles": @"templateRoles", @"templatesUri": @"templatesUri", @"transactionId": @"transactionId", @"useDisclosure": @"useDisclosure", @"voidedDateTime": @"voidedDateTime", @"voidedReason": @"voidedReason" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessibility", @"allowMarkup", @"allowReassign", @"allowRecipientRecursion", @"asynchronous", @"attachments", @"attachmentsUri", @"authoritativeCopy", @"autoNavigation", @"brandId", @"brandLock", @"certificateUri", @"completedDateTime", @"compositeTemplates", @"createdDateTime", @"customFields", @"customFieldsUri", @"declinedDateTime", @"deletedDateTime", @"deliveredDateTime", @"documents", @"documentsCombinedUri", @"documentsUri", @"emailBlurb", @"emailSettings", @"emailSubject", @"enableWetSign", @"enforceSignerVisibility", @"envelopeId", @"envelopeIdStamping", @"envelopeUri", @"eventNotification", @"initialSentDateTime", @"is21CFRPart11", @"isSignatureProviderEnvelope", @"lastModifiedDateTime", @"lockInformation", @"messageLock", @"notification", @"notificationUri", @"password", @"purgeState", @"recipients", @"recipientsLock", @"recipientsUri", @"sentDateTime", @"signingLocation", @"status", @"statusChangedDateTime", @"templateId", @"templateRoles", @"templatesUri", @"transactionId", @"useDisclosure", @"voidedDateTime", @"voidedReason"];
  return [optionalProperties containsObject:propertyName];
}

@end
