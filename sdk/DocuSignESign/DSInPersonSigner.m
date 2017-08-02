#import "DSInPersonSigner.h"

@implementation DSInPersonSigner

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accessCode": @"accessCode", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"autoNavigation": @"autoNavigation", @"canSignOffline": @"canSignOffline", @"clientUserId": @"clientUserId", @"customFields": @"customFields", @"declinedDateTime": @"declinedDateTime", @"declinedReason": @"declinedReason", @"defaultRecipient": @"defaultRecipient", @"deliveredDateTime": @"deliveredDateTime", @"deliveryMethod": @"deliveryMethod", @"documentVisibility": @"documentVisibility", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"errorDetails": @"errorDetails", @"faxNumber": @"faxNumber", @"hostEmail": @"hostEmail", @"hostName": @"hostName", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckInformationInput": @"idCheckInformationInput", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"inPersonSigningType": @"inPersonSigningType", @"notaryHost": @"notaryHost", @"note": @"note", @"offlineAttributes": @"offlineAttributes", @"phoneAuthentication": @"phoneAuthentication", @"recipientAttachments": @"recipientAttachments", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientSignatureProviders": @"recipientSignatureProviders", @"recipientSuppliesTabs": @"recipientSuppliesTabs", @"requireIdLookup": @"requireIdLookup", @"requireSignerCertificate": @"requireSignerCertificate", @"requireSignOnPaper": @"requireSignOnPaper", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"samlAuthentication": @"samlAuthentication", @"sentDateTime": @"sentDateTime", @"signatureInfo": @"signatureInfo", @"signedDateTime": @"signedDateTime", @"signerEmail": @"signerEmail", @"signerName": @"signerName", @"signInEachLocation": @"signInEachLocation", @"signingGroupId": @"signingGroupId", @"signingGroupName": @"signingGroupName", @"signingGroupUsers": @"signingGroupUsers", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"status": @"status", @"tabs": @"tabs", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"totalTabCount": @"totalTabCount", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"addAccessCodeToEmail", @"autoNavigation", @"canSignOffline", @"clientUserId", @"customFields", @"declinedDateTime", @"declinedReason", @"defaultRecipient", @"deliveredDateTime", @"deliveryMethod", @"documentVisibility", @"emailNotification", @"embeddedRecipientStartURL", @"errorDetails", @"faxNumber", @"hostEmail", @"hostName", @"idCheckConfigurationName", @"idCheckInformationInput", @"inheritEmailNotificationConfiguration", @"inPersonSigningType", @"notaryHost", @"note", @"offlineAttributes", @"phoneAuthentication", @"recipientAttachments", @"recipientAuthenticationStatus", @"recipientId", @"recipientIdGuid", @"recipientSignatureProviders", @"recipientSuppliesTabs", @"requireIdLookup", @"requireSignerCertificate", @"requireSignOnPaper", @"roleName", @"routingOrder", @"samlAuthentication", @"sentDateTime", @"signatureInfo", @"signedDateTime", @"signerEmail", @"signerName", @"signInEachLocation", @"signingGroupId", @"signingGroupName", @"signingGroupUsers", @"smsAuthentication", @"socialAuthentications", @"status", @"tabs", @"templateLocked", @"templateRequired", @"totalTabCount", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
