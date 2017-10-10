#import "DSAgent.h"

@implementation DSAgent

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accessCode": @"accessCode", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"clientUserId": @"clientUserId", @"customFields": @"customFields", @"declinedDateTime": @"declinedDateTime", @"declinedReason": @"declinedReason", @"deliveredDateTime": @"deliveredDateTime", @"deliveryMethod": @"deliveryMethod", @"documentVisibility": @"documentVisibility", @"email": @"email", @"emailNotification": @"emailNotification", @"emailRecipientPostSigningURL": @"emailRecipientPostSigningURL", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"errorDetails": @"errorDetails", @"excludedDocuments": @"excludedDocuments", @"faxNumber": @"faxNumber", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckInformationInput": @"idCheckInformationInput", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"name": @"name", @"note": @"note", @"phoneAuthentication": @"phoneAuthentication", @"recipientAttachments": @"recipientAttachments", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"requireIdLookup": @"requireIdLookup", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"samlAuthentication": @"samlAuthentication", @"sentDateTime": @"sentDateTime", @"signedDateTime": @"signedDateTime", @"signingGroupId": @"signingGroupId", @"signingGroupName": @"signingGroupName", @"signingGroupUsers": @"signingGroupUsers", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"status": @"status", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"totalTabCount": @"totalTabCount", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"addAccessCodeToEmail", @"clientUserId", @"customFields", @"declinedDateTime", @"declinedReason", @"deliveredDateTime", @"deliveryMethod", @"documentVisibility", @"email", @"emailNotification", @"emailRecipientPostSigningURL", @"embeddedRecipientStartURL", @"errorDetails", @"excludedDocuments", @"faxNumber", @"idCheckConfigurationName", @"idCheckInformationInput", @"inheritEmailNotificationConfiguration", @"name", @"note", @"phoneAuthentication", @"recipientAttachments", @"recipientAuthenticationStatus", @"recipientId", @"recipientIdGuid", @"requireIdLookup", @"roleName", @"routingOrder", @"samlAuthentication", @"sentDateTime", @"signedDateTime", @"signingGroupId", @"signingGroupName", @"signingGroupUsers", @"smsAuthentication", @"socialAuthentications", @"status", @"templateLocked", @"templateRequired", @"totalTabCount", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
