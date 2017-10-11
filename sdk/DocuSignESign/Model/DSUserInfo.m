#import "DSUserInfo.h"

@implementation DSUserInfo

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"activationAccessCode": @"activationAccessCode", @"email": @"email", @"errorDetails": @"errorDetails", @"loginStatus": @"loginStatus", @"sendActivationEmail": @"sendActivationEmail", @"uri": @"uri", @"userId": @"userId", @"userName": @"userName", @"userStatus": @"userStatus", @"userType": @"userType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"activationAccessCode", @"email", @"errorDetails", @"loginStatus", @"sendActivationEmail", @"uri", @"userId", @"userName", @"userStatus", @"userType"];
  return [optionalProperties containsObject:propertyName];
}

@end
