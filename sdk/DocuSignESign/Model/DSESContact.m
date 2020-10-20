#import <DSESContact.h>

@implementation DSESContact

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cloudProvider": @"cloudProvider", @"cloudProviderContainerId": @"cloudProviderContainerId", @"contactId": @"contactId", @"contactPhoneNumbers": @"contactPhoneNumbers", @"contactUri": @"contactUri", @"emails": @"emails", @"errorDetails": @"errorDetails", @"isOwner": @"isOwner", @"name": @"name", @"organization": @"organization", @"shared": @"shared", @"signingGroup": @"signingGroup", @"signingGroupName": @"signingGroupName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cloudProvider", @"cloudProviderContainerId", @"contactId", @"contactPhoneNumbers", @"contactUri", @"emails", @"errorDetails", @"isOwner", @"name", @"organization", @"shared", @"signingGroup", @"signingGroupName"];
  return [optionalProperties containsObject:propertyName];
}

@end
