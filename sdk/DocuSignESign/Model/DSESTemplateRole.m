#import <DSESTemplateRole.h>

@implementation DSESTemplateRole

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessCode": @"accessCode", @"clientUserId": @"clientUserId", @"defaultRecipient": @"defaultRecipient", @"email": @"email", @"emailNotification": @"emailNotification", @"embeddedRecipientStartURL": @"embeddedRecipientStartURL", @"inPersonSignerName": @"inPersonSignerName", @"name": @"name", @"recipientSignatureProviders": @"recipientSignatureProviders", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"signingGroupId": @"signingGroupId", @"tabs": @"tabs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"clientUserId", @"defaultRecipient", @"email", @"emailNotification", @"embeddedRecipientStartURL", @"inPersonSignerName", @"name", @"recipientSignatureProviders", @"roleName", @"routingOrder", @"signingGroupId", @"tabs"];
  return [optionalProperties containsObject:propertyName];
}

@end
