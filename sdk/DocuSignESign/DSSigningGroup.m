#import "DSSigningGroup.h"

@implementation DSSigningGroup

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"created": @"created", @"createdBy": @"createdBy", @"errorDetails": @"errorDetails", @"groupEmail": @"groupEmail", @"groupName": @"groupName", @"groupType": @"groupType", @"modified": @"modified", @"modifiedBy": @"modifiedBy", @"signingGroupId": @"signingGroupId", @"users": @"users" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"created", @"createdBy", @"errorDetails", @"groupEmail", @"groupName", @"groupType", @"modified", @"modifiedBy", @"signingGroupId", @"users"];
  return [optionalProperties containsObject:propertyName];
}

@end
