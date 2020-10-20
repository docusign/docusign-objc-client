#import <DSESSealSign.h>

@implementation DSESSealSign

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessCode": @"accessCode", @"accessCodeMetadata": @"accessCodeMetadata", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"allowSystemOverrideForLockedRecipient": @"allowSystemOverrideForLockedRecipient", @"clientUserId": @"clientUserId", @"completedCount": @"completedCount", @"customFields": @"customFields", @"declinedDateTime": @"declinedDateTime", @"declinedReason": @"declinedReason", @"deliveredDateTime": @"deliveredDateTime", @"deliveryMethod": @"deliveryMethod", @"deliveryMethodMetadata": @"deliveryMethodMetadata", @"designatorId": @"designatorId", @"designatorIdGuid": @"designatorIdGuid", @"documentVisibility": @"documentVisibility", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"errorDetails": @"errorDetails", @"faxNumber": @"faxNumber", @"faxNumberMetadata": @"faxNumberMetadata", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata": @"idCheckConfigurationNameMetadata", @"idCheckInformationInput": @"idCheckInformationInput", @"identityVerification": @"identityVerification", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"lockedRecipientPhoneAuthEditable": @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable": @"lockedRecipientSmsEditable", @"name": @"name", @"note": @"note", @"noteMetadata": @"noteMetadata", @"phoneAuthentication": @"phoneAuthentication", @"recipientAttachments": @"recipientAttachments", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"recipientFeatureMetadata": @"recipientFeatureMetadata", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientSignatureProviders": @"recipientSignatureProviders", @"recipientType": @"recipientType", @"recipientTypeMetadata": @"recipientTypeMetadata", @"requireIdLookup": @"requireIdLookup", @"requireIdLookupMetadata": @"requireIdLookupMetadata", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"routingOrderMetadata": @"routingOrderMetadata", @"sentDateTime": @"sentDateTime", @"signedDateTime": @"signedDateTime", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"status": @"status", @"statusCode": @"statusCode", @"suppressEmails": @"suppressEmails", @"tabs": @"tabs", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"totalTabCount": @"totalTabCount", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"accessCodeMetadata", @"addAccessCodeToEmail", @"allowSystemOverrideForLockedRecipient", @"clientUserId", @"completedCount", @"customFields", @"declinedDateTime", @"declinedReason", @"deliveredDateTime", @"deliveryMethod", @"deliveryMethodMetadata", @"designatorId", @"designatorIdGuid", @"documentVisibility", @"emailNotification", @"embeddedRecipientStartURL", @"errorDetails", @"faxNumber", @"faxNumberMetadata", @"idCheckConfigurationName", @"idCheckConfigurationNameMetadata", @"idCheckInformationInput", @"identityVerification", @"inheritEmailNotificationConfiguration", @"lockedRecipientPhoneAuthEditable", @"lockedRecipientSmsEditable", @"name", @"note", @"noteMetadata", @"phoneAuthentication", @"recipientAttachments", @"recipientAuthenticationStatus", @"recipientFeatureMetadata", @"recipientId", @"recipientIdGuid", @"recipientSignatureProviders", @"recipientType", @"recipientTypeMetadata", @"requireIdLookup", @"requireIdLookupMetadata", @"roleName", @"routingOrder", @"routingOrderMetadata", @"sentDateTime", @"signedDateTime", @"smsAuthentication", @"socialAuthentications", @"status", @"statusCode", @"suppressEmails", @"tabs", @"templateLocked", @"templateRequired", @"totalTabCount", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
