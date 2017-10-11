#import "DSPowerFormRecipient.h"

@implementation DSPowerFormRecipient

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accessCode": @"accessCode", @"accessCodeLocked": @"accessCodeLocked", @"accessCodeRequired": @"accessCodeRequired", @"email": @"email", @"emailLocked": @"emailLocked", @"idCheckConfigurationName": @"idCheckConfigurationName", @"idCheckRequired": @"idCheckRequired", @"name": @"name", @"recipientType": @"recipientType", @"roleName": @"roleName", @"routingOrder": @"routingOrder", @"templateRequiresIdLookup": @"templateRequiresIdLookup", @"userNameLocked": @"userNameLocked" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCode", @"accessCodeLocked", @"accessCodeRequired", @"email", @"emailLocked", @"idCheckConfigurationName", @"idCheckRequired", @"name", @"recipientType", @"roleName", @"routingOrder", @"templateRequiresIdLookup", @"userNameLocked"];
  return [optionalProperties containsObject:propertyName];
}

@end
