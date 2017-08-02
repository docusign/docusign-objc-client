#import "DSUserAccountManagementGranularInformation.h"

@implementation DSUserAccountManagementGranularInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"canManageAdmins": @"canManageAdmins", @"canManageAdminsMetadata": @"canManageAdminsMetadata", @"canManageGroups": @"canManageGroups", @"canManageGroupsMetadata": @"canManageGroupsMetadata", @"canManageSharing": @"canManageSharing", @"canManageSharingMetadata": @"canManageSharingMetadata", @"canManageUsers": @"canManageUsers", @"canManageUsersMetadata": @"canManageUsersMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"canManageAdmins", @"canManageAdminsMetadata", @"canManageGroups", @"canManageGroupsMetadata", @"canManageSharing", @"canManageSharingMetadata", @"canManageUsers", @"canManageUsersMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
