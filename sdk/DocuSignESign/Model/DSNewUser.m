#import "DSNewUser.h"

@implementation DSNewUser

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"apiPassword": @"apiPassword", @"createdDateTime": @"createdDateTime", @"email": @"email", @"errorDetails": @"errorDetails", @"permissionProfileId": @"permissionProfileId", @"permissionProfileName": @"permissionProfileName", @"uri": @"uri", @"userId": @"userId", @"userName": @"userName", @"userStatus": @"userStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"apiPassword", @"createdDateTime", @"email", @"errorDetails", @"permissionProfileId", @"permissionProfileName", @"uri", @"userId", @"userName", @"userStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
