#import "DSLoginAccount.h"

@implementation DSLoginAccount

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accountId": @"accountId", @"accountIdGuid": @"accountIdGuid", @"baseUrl": @"baseUrl", @"email": @"email", @"isDefault": @"isDefault", @"loginAccountSettings": @"loginAccountSettings", @"loginUserSettings": @"loginUserSettings", @"name": @"name", @"siteDescription": @"siteDescription", @"userId": @"userId", @"userName": @"userName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountId", @"accountIdGuid", @"baseUrl", @"email", @"isDefault", @"loginAccountSettings", @"loginUserSettings", @"name", @"siteDescription", @"userId", @"userName"];
  return [optionalProperties containsObject:propertyName];
}

@end
