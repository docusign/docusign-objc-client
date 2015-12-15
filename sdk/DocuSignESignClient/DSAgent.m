#import "DSAgent.h"

@implementation DSAgent

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"excludedDocuments": @"excludedDocuments", @"name": @"name", @"email": @"email", @"emailRecipientPostSigningURL": @"emailRecipientPostSigningURL", @"signingGroupId": @"signingGroupId", @"signingGroupName": @"signingGroupName", @"signingGroupUsers": @"signingGroupUsers", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"accessCode": @"accessCode", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"requireIdLookup": @"requireIdLookup", @"idCheckConfigurationName": @"idCheckConfigurationName", @"socialAuthentications": @"socialAuthentications", @"phoneAuthentication": @"phoneAuthentication", @"samlAuthentication": @"samlAuthentication", @"smsAuthentication": @"smsAuthentication", @"userId": @"userId", @"clientUserId": @"clientUserId", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"customFields": @"customFields", @"routingOrder": @"routingOrder", @"idCheckInformationInput": @"idCheckInformationInput", @"recipientAttachments": @"recipientAttachments", @"note": @"note", @"roleName": @"roleName", @"status": @"status", @"signedDateTime": @"signedDateTime", @"deliveredDateTime": @"deliveredDateTime", @"declinedDateTime": @"declinedDateTime", @"sentDateTime": @"sentDateTime", @"declinedReason": @"declinedReason", @"deliveryMethod": @"deliveryMethod", @"faxNumber": @"faxNumber", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"emailNotification": @"emailNotification", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"errorDetails": @"errorDetails", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"totalTabCount": @"totalTabCount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"excludedDocuments", @"name", @"email", @"emailRecipientPostSigningURL", @"signingGroupId", @"signingGroupName", @"signingGroupUsers", @"recipientId", @"recipientIdGuid", @"accessCode", @"addAccessCodeToEmail", @"requireIdLookup", @"idCheckConfigurationName", @"socialAuthentications", @"phoneAuthentication", @"samlAuthentication", @"smsAuthentication", @"userId", @"clientUserId", @"embeddedRecipientStartURL", @"customFields", @"routingOrder", @"idCheckInformationInput", @"recipientAttachments", @"note", @"roleName", @"status", @"signedDateTime", @"deliveredDateTime", @"declinedDateTime", @"sentDateTime", @"declinedReason", @"deliveryMethod", @"faxNumber", @"templateLocked", @"templateRequired", @"emailNotification", @"inheritEmailNotificationConfiguration", @"errorDetails", @"recipientAuthenticationStatus", @"totalTabCount"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
