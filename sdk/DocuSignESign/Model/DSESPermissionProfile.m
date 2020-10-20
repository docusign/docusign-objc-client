#import <DSESPermissionProfile.h>

@implementation DSESPermissionProfile

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"modifiedByUsername": @"modifiedByUsername", @"modifiedDateTime": @"modifiedDateTime", @"permissionProfileId": @"permissionProfileId", @"permissionProfileName": @"permissionProfileName", @"settings": @"settings", @"userCount": @"userCount", @"users": @"users" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"modifiedByUsername", @"modifiedDateTime", @"permissionProfileId", @"permissionProfileName", @"settings", @"userCount", @"users"];
  return [optionalProperties containsObject:propertyName];
}

@end
