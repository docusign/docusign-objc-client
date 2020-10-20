#import <DSESUserAccountManagementGranularInformation.h>

@implementation DSESUserAccountManagementGranularInformation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"canManageAccountSecuritySettings": @"canManageAccountSecuritySettings", @"canManageAccountSecuritySettingsMetadata": @"canManageAccountSecuritySettingsMetadata", @"canManageAccountSettings": @"canManageAccountSettings", @"canManageAccountSettingsMetadata": @"canManageAccountSettingsMetadata", @"canManageAdmins": @"canManageAdmins", @"canManageAdminsMetadata": @"canManageAdminsMetadata", @"canManageEnvelopeTransfer": @"canManageEnvelopeTransfer", @"canManageEnvelopeTransferMetadata": @"canManageEnvelopeTransferMetadata", @"canManageReporting": @"canManageReporting", @"canManageReportingMetadata": @"canManageReportingMetadata", @"canManageSharing": @"canManageSharing", @"canManageSharingMetadata": @"canManageSharingMetadata", @"canManageSigningGroups": @"canManageSigningGroups", @"canManageSigningGroupsMetadata": @"canManageSigningGroupsMetadata", @"canManageUsers": @"canManageUsers", @"canManageUsersMetadata": @"canManageUsersMetadata", @"canViewUsers": @"canViewUsers" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"canManageAccountSecuritySettings", @"canManageAccountSecuritySettingsMetadata", @"canManageAccountSettings", @"canManageAccountSettingsMetadata", @"canManageAdmins", @"canManageAdminsMetadata", @"canManageEnvelopeTransfer", @"canManageEnvelopeTransferMetadata", @"canManageReporting", @"canManageReportingMetadata", @"canManageSharing", @"canManageSharingMetadata", @"canManageSigningGroups", @"canManageSigningGroupsMetadata", @"canManageUsers", @"canManageUsersMetadata", @"canViewUsers"];
  return [optionalProperties containsObject:propertyName];
}

@end
