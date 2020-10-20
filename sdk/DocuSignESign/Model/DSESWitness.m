#import <DSESWitness.h>

@implementation DSESWitness

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessCode": @"accessCode", @"accessCodeMetadata": @"accessCodeMetadata", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"additionalNotifications": @"additionalNotifications", @"additionalNotificationsMetadata": @"additionalNotificationsMetadata", @"agentCanEditEmail": @"agentCanEditEmail", @"agentCanEditName": @"agentCanEditName", @"allowSystemOverrideForLockedRecipient": @"allowSystemOverrideForLockedRecipient", @"autoNavigation": @"autoNavigation", @"bulkRecipientsUri": @"bulkRecipientsUri", @"canSignOffline": @"canSignOffline", @"clientUserId": @"clientUserId", @"completedCount": @"completedCount", @"creationReason": @"creationReason", @"customFields": @"customFields", @"declinedDateTime": @"declinedDateTime", @"declinedReason": @"declinedReason", @"defaultRecipient": @"defaultRecipient", @"deliveredDateTime": @"deliveredDateTime", @"deliveryMethod": @"deliveryMethod", @"deliveryMethodMetadata": @"deliveryMethodMetadata", @"designatorId": @"designatorId", @"designatorIdGuid": @"designatorIdGuid", @"documentVisibility": @"documentVisibility", @"email": @"email", @"emailMetadata": @"emailMetadata", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"errorDetails": @"errorDetails", @"excludedDocuments": @"excludedDocuments", @"faxNumber": @"faxNumber", @"faxNumberMetadata": @"faxNumberMetadata", @"firstName": @"firstName", @"firstNameMetadata": @"firstNameMetadata", @"fullName": @"fullName", @"fullNameMetadata": @"fullNameMetadata", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata": @"idCheckConfigurationNameMetadata", @"idCheckInformationInput": @"idCheckInformationInput", @"identityVerification": @"identityVerification", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"isBulkRecipient": @"isBulkRecipient", @"isBulkRecipientMetadata": @"isBulkRecipientMetadata", @"lastName": @"lastName", @"lastNameMetadata": @"lastNameMetadata", @"lockedRecipientPhoneAuthEditable": @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable": @"lockedRecipientSmsEditable", @"name": @"name", @"nameMetadata": @"nameMetadata", @"notaryId": @"notaryId", @"note": @"note", @"noteMetadata": @"noteMetadata", @"offlineAttributes": @"offlineAttributes", @"phoneAuthentication": @"phoneAuthentication", @"proofFile": @"proofFile", @"recipientAttachments": @"recipientAttachments", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"recipientFeatureMetadata": @"recipientFeatureMetadata", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientSignatureProviders": @"recipientSignatureProviders", @"recipientSuppliesTabs": @"recipientSuppliesTabs", @"recipientType": @"recipientType", @"recipientTypeMetadata": @"recipientTypeMetadata", @"requireIdLookup": @"requireIdLookup", @"requireIdLookupMetadata": @"requireIdLookupMetadata", @"requireSignerCertificate": @"requireSignerCertificate", @"requireSignOnPaper": @"requireSignOnPaper", @"requireUploadSignature": @"requireUploadSignature", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"routingOrderMetadata": @"routingOrderMetadata", @"sentDateTime": @"sentDateTime", @"signatureInfo": @"signatureInfo", @"signedDateTime": @"signedDateTime", @"signInEachLocation": @"signInEachLocation", @"signInEachLocationMetadata": @"signInEachLocationMetadata", @"signingGroupId": @"signingGroupId", @"signingGroupIdMetadata": @"signingGroupIdMetadata", @"signingGroupName": @"signingGroupName", @"signingGroupUsers": @"signingGroupUsers", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"status": @"status", @"statusCode": @"statusCode", @"suppressEmails": @"suppressEmails", @"tabs": @"tabs", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"totalTabCount": @"totalTabCount", @"userId": @"userId", @"witnessFor": @"witnessFor", @"witnessForGuid": @"witnessForGuid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"accessCodeMetadata", @"addAccessCodeToEmail", @"additionalNotifications", @"additionalNotificationsMetadata", @"agentCanEditEmail", @"agentCanEditName", @"allowSystemOverrideForLockedRecipient", @"autoNavigation", @"bulkRecipientsUri", @"canSignOffline", @"clientUserId", @"completedCount", @"creationReason", @"customFields", @"declinedDateTime", @"declinedReason", @"defaultRecipient", @"deliveredDateTime", @"deliveryMethod", @"deliveryMethodMetadata", @"designatorId", @"designatorIdGuid", @"documentVisibility", @"email", @"emailMetadata", @"emailNotification", @"embeddedRecipientStartURL", @"errorDetails", @"excludedDocuments", @"faxNumber", @"faxNumberMetadata", @"firstName", @"firstNameMetadata", @"fullName", @"fullNameMetadata", @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata", @"idCheckInformationInput", @"identityVerification", @"inheritEmailNotificationConfiguration", @"isBulkRecipient", @"isBulkRecipientMetadata", @"lastName", @"lastNameMetadata", @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable", @"name", @"nameMetadata", @"notaryId", @"note", @"noteMetadata", @"offlineAttributes", @"phoneAuthentication", @"proofFile", @"recipientAttachments", @"recipientAuthenticationStatus", @"recipientFeatureMetadata", @"recipientId", @"recipientIdGuid", @"recipientSignatureProviders", @"recipientSuppliesTabs", @"recipientType", @"recipientTypeMetadata", @"requireIdLookup", @"requireIdLookupMetadata", @"requireSignerCertificate", @"requireSignOnPaper", @"requireUploadSignature", @"roleName", @"routingOrder", @"routingOrderMetadata", @"sentDateTime", @"signatureInfo", @"signedDateTime", @"signInEachLocation", @"signInEachLocationMetadata", @"signingGroupId", @"signingGroupIdMetadata", @"signingGroupName", @"signingGroupUsers", @"smsAuthentication", @"socialAuthentications", @"status", @"statusCode", @"suppressEmails", @"tabs", @"templateLocked", @"templateRequired", @"totalTabCount", @"userId", @"witnessFor", @"witnessForGuid"];
  return [optionalProperties containsObject:propertyName];
}

@end
