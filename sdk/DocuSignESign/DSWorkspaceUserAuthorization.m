#import "DSWorkspaceUserAuthorization.h"

@implementation DSWorkspaceUserAuthorization

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"canDelete": @"canDelete", @"canMove": @"canMove", @"canTransact": @"canTransact", @"canView": @"canView", @"created": @"created", @"createdById": @"createdById", @"errorDetails": @"errorDetails", @"modified": @"modified", @"modifiedById": @"modifiedById", @"workspaceUserId": @"workspaceUserId", @"workspaceUserInformation": @"workspaceUserInformation" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"canDelete", @"canMove", @"canTransact", @"canView", @"created", @"createdById", @"errorDetails", @"modified", @"modifiedById", @"workspaceUserId", @"workspaceUserInformation"];
  return [optionalProperties containsObject:propertyName];
}

@end
