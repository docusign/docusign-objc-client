#import <DSESInPersonSigner.h>

@implementation DSESInPersonSigner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessCode": @"accessCode", @"accessCodeMetadata": @"accessCodeMetadata", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"allowSystemOverrideForLockedRecipient": @"allowSystemOverrideForLockedRecipient", @"autoNavigation": @"autoNavigation", @"canSignOffline": @"canSignOffline", @"clientUserId": @"clientUserId", @"completedCount": @"completedCount", @"creationReason": @"creationReason", @"customFields": @"customFields", @"declinedDateTime": @"declinedDateTime", @"declinedReason": @"declinedReason", @"defaultRecipient": @"defaultRecipient", @"deliveredDateTime": @"deliveredDateTime", @"deliveryMethod": @"deliveryMethod", @"deliveryMethodMetadata": @"deliveryMethodMetadata", @"designatorId": @"designatorId", @"designatorIdGuid": @"designatorIdGuid", @"documentVisibility": @"documentVisibility", @"email": @"email", @"emailMetadata": @"emailMetadata", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"errorDetails": @"errorDetails", @"excludedDocuments": @"excludedDocuments", @"faxNumber": @"faxNumber", @"faxNumberMetadata": @"faxNumberMetadata", @"hostEmail": @"hostEmail", @"hostEmailMetadata": @"hostEmailMetadata", @"hostName": @"hostName", @"hostNameMetadata": @"hostNameMetadata", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata": @"idCheckConfigurationNameMetadata", @"idCheckInformationInput": @"idCheckInformationInput", @"identityVerification": @"identityVerification", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"inPersonSigningType": @"inPersonSigningType", @"inPersonSigningTypeMetadata": @"inPersonSigningTypeMetadata", @"lockedRecipientPhoneAuthEditable": @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable": @"lockedRecipientSmsEditable", @"name": @"name", @"nameMetadata": @"nameMetadata", @"notaryHost": @"notaryHost", @"notaryId": @"notaryId", @"note": @"note", @"noteMetadata": @"noteMetadata", @"offlineAttributes": @"offlineAttributes", @"phoneAuthentication": @"phoneAuthentication", @"recipientAttachments": @"recipientAttachments", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"recipientFeatureMetadata": @"recipientFeatureMetadata", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientSignatureProviders": @"recipientSignatureProviders", @"recipientSuppliesTabs": @"recipientSuppliesTabs", @"recipientType": @"recipientType", @"recipientTypeMetadata": @"recipientTypeMetadata", @"requireIdLookup": @"requireIdLookup", @"requireIdLookupMetadata": @"requireIdLookupMetadata", @"requireSignerCertificate": @"requireSignerCertificate", @"requireSignOnPaper": @"requireSignOnPaper", @"requireUploadSignature": @"requireUploadSignature", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"routingOrderMetadata": @"routingOrderMetadata", @"sentDateTime": @"sentDateTime", @"signatureInfo": @"signatureInfo", @"signedDateTime": @"signedDateTime", @"signerEmail": @"signerEmail", @"signerEmailMetadata": @"signerEmailMetadata", @"signerFirstName": @"signerFirstName", @"signerFirstNameMetadata": @"signerFirstNameMetadata", @"signerLastName": @"signerLastName", @"signerLastNameMetadata": @"signerLastNameMetadata", @"signerName": @"signerName", @"signerNameMetadata": @"signerNameMetadata", @"signInEachLocation": @"signInEachLocation", @"signInEachLocationMetadata": @"signInEachLocationMetadata", @"signingGroupId": @"signingGroupId", @"signingGroupIdMetadata": @"signingGroupIdMetadata", @"signingGroupName": @"signingGroupName", @"signingGroupUsers": @"signingGroupUsers", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"status": @"status", @"statusCode": @"statusCode", @"suppressEmails": @"suppressEmails", @"tabs": @"tabs", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"totalTabCount": @"totalTabCount", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"accessCodeMetadata", @"addAccessCodeToEmail", @"allowSystemOverrideForLockedRecipient", @"autoNavigation", @"canSignOffline", @"clientUserId", @"completedCount", @"creationReason", @"customFields", @"declinedDateTime", @"declinedReason", @"defaultRecipient", @"deliveredDateTime", @"deliveryMethod", @"deliveryMethodMetadata", @"designatorId", @"designatorIdGuid", @"documentVisibility", @"email", @"emailMetadata", @"emailNotification", @"embeddedRecipientStartURL", @"errorDetails", @"excludedDocuments", @"faxNumber", @"faxNumberMetadata", @"hostEmail", @"hostEmailMetadata", @"hostName", @"hostNameMetadata", @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata", @"idCheckInformationInput", @"identityVerification", @"inheritEmailNotificationConfiguration", @"inPersonSigningType", @"inPersonSigningTypeMetadata", @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable", @"name", @"nameMetadata", @"notaryHost", @"notaryId", @"note", @"noteMetadata", @"offlineAttributes", @"phoneAuthentication", @"recipientAttachments", @"recipientAuthenticationStatus", @"recipientFeatureMetadata", @"recipientId", @"recipientIdGuid", @"recipientSignatureProviders", @"recipientSuppliesTabs", @"recipientType", @"recipientTypeMetadata", @"requireIdLookup", @"requireIdLookupMetadata", @"requireSignerCertificate", @"requireSignOnPaper", @"requireUploadSignature", @"roleName", @"routingOrder", @"routingOrderMetadata", @"sentDateTime", @"signatureInfo", @"signedDateTime", @"signerEmail", @"signerEmailMetadata", @"signerFirstName", @"signerFirstNameMetadata", @"signerLastName", @"signerLastNameMetadata", @"signerName", @"signerNameMetadata", @"signInEachLocation", @"signInEachLocationMetadata", @"signingGroupId", @"signingGroupIdMetadata", @"signingGroupName", @"signingGroupUsers", @"smsAuthentication", @"socialAuthentications", @"status", @"statusCode", @"suppressEmails", @"tabs", @"templateLocked", @"templateRequired", @"totalTabCount", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
