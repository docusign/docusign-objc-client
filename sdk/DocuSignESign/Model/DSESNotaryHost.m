#import <DSESNotaryHost.h>

@implementation DSESNotaryHost

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessCode": @"accessCode", @"accessCodeMetadata": @"accessCodeMetadata", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"allowSystemOverrideForLockedRecipient": @"allowSystemOverrideForLockedRecipient", @"clientUserId": @"clientUserId", @"completedCount": @"completedCount", @"customFields": @"customFields", @"declinedDateTime": @"declinedDateTime", @"declinedReason": @"declinedReason", @"deliveredDateTime": @"deliveredDateTime", @"deliveryMethod": @"deliveryMethod", @"deliveryMethodMetadata": @"deliveryMethodMetadata", @"designatorId": @"designatorId", @"designatorIdGuid": @"designatorIdGuid", @"documentVisibility": @"documentVisibility", @"email": @"email", @"emailMetadata": @"emailMetadata", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"errorDetails": @"errorDetails", @"faxNumber": @"faxNumber", @"faxNumberMetadata": @"faxNumberMetadata", @"hostRecipientId": @"hostRecipientId", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata": @"idCheckConfigurationNameMetadata", @"idCheckInformationInput": @"idCheckInformationInput", @"identityVerification": @"identityVerification", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"lockedRecipientPhoneAuthEditable": @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable": @"lockedRecipientSmsEditable", @"name": @"name", @"nameMetadata": @"nameMetadata", @"note": @"note", @"noteMetadata": @"noteMetadata", @"phoneAuthentication": @"phoneAuthentication", @"recipientAttachments": @"recipientAttachments", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"recipientFeatureMetadata": @"recipientFeatureMetadata", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientType": @"recipientType", @"recipientTypeMetadata": @"recipientTypeMetadata", @"requireIdLookup": @"requireIdLookup", @"requireIdLookupMetadata": @"requireIdLookupMetadata", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"routingOrderMetadata": @"routingOrderMetadata", @"sentDateTime": @"sentDateTime", @"signedDateTime": @"signedDateTime", @"signingGroupId": @"signingGroupId", @"signingGroupIdMetadata": @"signingGroupIdMetadata", @"signingGroupName": @"signingGroupName", @"signingGroupUsers": @"signingGroupUsers", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"status": @"status", @"statusCode": @"statusCode", @"suppressEmails": @"suppressEmails", @"tabs": @"tabs", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"totalTabCount": @"totalTabCount", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"accessCodeMetadata", @"addAccessCodeToEmail", @"allowSystemOverrideForLockedRecipient", @"clientUserId", @"completedCount", @"customFields", @"declinedDateTime", @"declinedReason", @"deliveredDateTime", @"deliveryMethod", @"deliveryMethodMetadata", @"designatorId", @"designatorIdGuid", @"documentVisibility", @"email", @"emailMetadata", @"emailNotification", @"embeddedRecipientStartURL", @"errorDetails", @"faxNumber", @"faxNumberMetadata", @"hostRecipientId", @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata", @"idCheckInformationInput", @"identityVerification", @"inheritEmailNotificationConfiguration", @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable", @"name", @"nameMetadata", @"note", @"noteMetadata", @"phoneAuthentication", @"recipientAttachments", @"recipientAuthenticationStatus", @"recipientFeatureMetadata", @"recipientId", @"recipientIdGuid", @"recipientType", @"recipientTypeMetadata", @"requireIdLookup", @"requireIdLookupMetadata", @"roleName", @"routingOrder", @"routingOrderMetadata", @"sentDateTime", @"signedDateTime", @"signingGroupId", @"signingGroupIdMetadata", @"signingGroupName", @"signingGroupUsers", @"smsAuthentication", @"socialAuthentications", @"status", @"statusCode", @"suppressEmails", @"tabs", @"templateLocked", @"templateRequired", @"totalTabCount", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
