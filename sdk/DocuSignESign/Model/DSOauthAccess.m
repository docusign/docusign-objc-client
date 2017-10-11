#import "DSOauthAccess.h"

@implementation DSOauthAccess

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accessToken": @"access_token", @"data": @"data", @"expiresIn": @"expires_in", @"refreshToken": @"refresh_token", @"scope": @"scope", @"tokenType": @"token_type" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessToken", @"data", @"expiresIn", @"refreshToken", @"scope", @"tokenType"];
  return [optionalProperties containsObject:propertyName];
}

@end
