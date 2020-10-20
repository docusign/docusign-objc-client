#import <DSESCarbonCopy.h>

@implementation DSESCarbonCopy

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessCode": @"accessCode", @"accessCodeMetadata": @"accessCodeMetadata", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"additionalNotifications": @"additionalNotifications", @"additionalNotificationsMetadata": @"additionalNotificationsMetadata", @"agentCanEditEmail": @"agentCanEditEmail", @"agentCanEditName": @"agentCanEditName", @"allowSystemOverrideForLockedRecipient": @"allowSystemOverrideForLockedRecipient", @"clientUserId": @"clientUserId", @"completedCount": @"completedCount", @"customFields": @"customFields", @"declinedDateTime": @"declinedDateTime", @"declinedReason": @"declinedReason", @"deliveredDateTime": @"deliveredDateTime", @"deliveryMethod": @"deliveryMethod", @"deliveryMethodMetadata": @"deliveryMethodMetadata", @"designatorId": @"designatorId", @"designatorIdGuid": @"designatorIdGuid", @"documentVisibility": @"documentVisibility", @"email": @"email", @"emailMetadata": @"emailMetadata", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"errorDetails": @"errorDetails", @"excludedDocuments": @"excludedDocuments", @"faxNumber": @"faxNumber", @"faxNumberMetadata": @"faxNumberMetadata", @"firstName": @"firstName", @"firstNameMetadata": @"firstNameMetadata", @"fullName": @"fullName", @"fullNameMetadata": @"fullNameMetadata", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata": @"idCheckConfigurationNameMetadata", @"idCheckInformationInput": @"idCheckInformationInput", @"identityVerification": @"identityVerification", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"lastName": @"lastName", @"lastNameMetadata": @"lastNameMetadata", @"lockedRecipientPhoneAuthEditable": @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable": @"lockedRecipientSmsEditable", @"name": @"name", @"nameMetadata": @"nameMetadata", @"note": @"note", @"noteMetadata": @"noteMetadata", @"phoneAuthentication": @"phoneAuthentication", @"proofFile": @"proofFile", @"recipientAttachments": @"recipientAttachments", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"recipientFeatureMetadata": @"recipientFeatureMetadata", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientType": @"recipientType", @"recipientTypeMetadata": @"recipientTypeMetadata", @"requireIdLookup": @"requireIdLookup", @"requireIdLookupMetadata": @"requireIdLookupMetadata", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"routingOrderMetadata": @"routingOrderMetadata", @"sentDateTime": @"sentDateTime", @"signedDateTime": @"signedDateTime", @"signingGroupId": @"signingGroupId", @"signingGroupIdMetadata": @"signingGroupIdMetadata", @"signingGroupName": @"signingGroupName", @"signingGroupUsers": @"signingGroupUsers", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"status": @"status", @"statusCode": @"statusCode", @"suppressEmails": @"suppressEmails", @"tabs": @"tabs", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"totalTabCount": @"totalTabCount", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"accessCodeMetadata", @"addAccessCodeToEmail", @"additionalNotifications", @"additionalNotificationsMetadata", @"agentCanEditEmail", @"agentCanEditName", @"allowSystemOverrideForLockedRecipient", @"clientUserId", @"completedCount", @"customFields", @"declinedDateTime", @"declinedReason", @"deliveredDateTime", @"deliveryMethod", @"deliveryMethodMetadata", @"designatorId", @"designatorIdGuid", @"documentVisibility", @"email", @"emailMetadata", @"emailNotification", @"embeddedRecipientStartURL", @"errorDetails", @"excludedDocuments", @"faxNumber", @"faxNumberMetadata", @"firstName", @"firstNameMetadata", @"fullName", @"fullNameMetadata", @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata", @"idCheckInformationInput", @"identityVerification", @"inheritEmailNotificationConfiguration", @"lastName", @"lastNameMetadata", @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable", @"name", @"nameMetadata", @"note", @"noteMetadata", @"phoneAuthentication", @"proofFile", @"recipientAttachments", @"recipientAuthenticationStatus", @"recipientFeatureMetadata", @"recipientId", @"recipientIdGuid", @"recipientType", @"recipientTypeMetadata", @"requireIdLookup", @"requireIdLookupMetadata", @"roleName", @"routingOrder", @"routingOrderMetadata", @"sentDateTime", @"signedDateTime", @"signingGroupId", @"signingGroupIdMetadata", @"signingGroupName", @"signingGroupUsers", @"smsAuthentication", @"socialAuthentications", @"status", @"statusCode", @"suppressEmails", @"tabs", @"templateLocked", @"templateRequired", @"totalTabCount", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
