#import "DSNotaryHost.h"

@implementation DSNotaryHost

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accessCode": @"accessCode", @"addAccessCodeToEmail": @"addAccessCodeToEmail", @"clientUserId": @"clientUserId", @"customFields": @"customFields", @"declinedDateTime": @"declinedDateTime", @"declinedReason": @"declinedReason", @"deliveredDateTime": @"deliveredDateTime", @"deliveryMethod": @"deliveryMethod", @"documentVisibility": @"documentVisibility", @"email": @"email", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"errorDetails": @"errorDetails", @"faxNumber": @"faxNumber", @"hostRecipientId": @"hostRecipientId", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckInformationInput": @"idCheckInformationInput", @"inheritEmailNotificationConfiguration": @"inheritEmailNotificationConfiguration", @"name": @"name", @"notaryEmailMetadata": @"notaryEmailMetadata", @"notaryNameMetadata": @"notaryNameMetadata", @"note": @"note", @"phoneAuthentication": @"phoneAuthentication", @"recipientAttachments": @"recipientAttachments", @"recipientAuthenticationStatus": @"recipientAuthenticationStatus", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"requireIdLookup": @"requireIdLookup", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"samlAuthentication": @"samlAuthentication", @"sentDateTime": @"sentDateTime", @"signedDateTime": @"signedDateTime", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"status": @"status", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"totalTabCount": @"totalTabCount", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"addAccessCodeToEmail", @"clientUserId", @"customFields", @"declinedDateTime", @"declinedReason", @"deliveredDateTime", @"deliveryMethod", @"documentVisibility", @"email", @"emailNotification", @"embeddedRecipientStartURL", @"errorDetails", @"faxNumber", @"hostRecipientId", @"idCheckConfigurationName", @"idCheckInformationInput", @"inheritEmailNotificationConfiguration", @"name", @"notaryEmailMetadata", @"notaryNameMetadata", @"note", @"phoneAuthentication", @"recipientAttachments", @"recipientAuthenticationStatus", @"recipientId", @"recipientIdGuid", @"requireIdLookup", @"roleName", @"routingOrder", @"samlAuthentication", @"sentDateTime", @"signedDateTime", @"smsAuthentication", @"socialAuthentications", @"status", @"templateLocked", @"templateRequired", @"totalTabCount", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
