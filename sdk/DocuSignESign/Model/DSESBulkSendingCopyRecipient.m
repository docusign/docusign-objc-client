#import <DSESBulkSendingCopyRecipient.h>

@implementation DSESBulkSendingCopyRecipient

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessCode": @"accessCode", @"clientUserId": @"clientUserId", @"customFields": @"customFields", @"deliveryMethod": @"deliveryMethod", @"email": @"email", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"faxNumber": @"faxNumber", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckInformationInput": @"idCheckInformationInput", @"identificationMethod": @"identificationMethod", @"name": @"name", @"note": @"note", @"phoneAuthentication": @"phoneAuthentication", @"recipientId": @"recipientId", @"recipientSignatureProviders": @"recipientSignatureProviders", @"roleName": @"roleName", @"smsAuthentication": @"smsAuthentication", @"socialAuthentications": @"socialAuthentications", @"tabs": @"tabs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"clientUserId", @"customFields", @"deliveryMethod", @"email", @"emailNotification", @"embeddedRecipientStartURL", @"faxNumber", @"idCheckConfigurationName", @"idCheckInformationInput", @"identificationMethod", @"name", @"note", @"phoneAuthentication", @"recipientId", @"recipientSignatureProviders", @"roleName", @"smsAuthentication", @"socialAuthentications", @"tabs"];
  return [optionalProperties containsObject:propertyName];
}

@end
