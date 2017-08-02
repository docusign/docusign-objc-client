#import "DSTabAccountSettings.h"

@implementation DSTabAccountSettings

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"allowTabOrder": @"allowTabOrder", @"allowTabOrderMetadata": @"allowTabOrderMetadata", @"approveDeclineTabsEnabled": @"approveDeclineTabsEnabled", @"approveDeclineTabsMetadata": @"approveDeclineTabsMetadata", @"calculatedFieldsEnabled": @"calculatedFieldsEnabled", @"calculatedFieldsMetadata": @"calculatedFieldsMetadata", @"checkboxTabsEnabled": @"checkboxTabsEnabled", @"checkboxTabsMetadata": @"checkboxTabsMetadata", @"dataFieldRegexEnabled": @"dataFieldRegexEnabled", @"dataFieldRegexMetadata": @"dataFieldRegexMetadata", @"dataFieldSizeEnabled": @"dataFieldSizeEnabled", @"dataFieldSizeMetadata": @"dataFieldSizeMetadata", @"firstLastEmailTabsEnabled": @"firstLastEmailTabsEnabled", @"firstLastEmailTabsMetadata": @"firstLastEmailTabsMetadata", @"listTabsEnabled": @"listTabsEnabled", @"listTabsMetadata": @"listTabsMetadata", @"noteTabsEnabled": @"noteTabsEnabled", @"noteTabsMetadata": @"noteTabsMetadata", @"radioTabsEnabled": @"radioTabsEnabled", @"radioTabsMetadata": @"radioTabsMetadata", @"savingCustomTabsEnabled": @"savingCustomTabsEnabled", @"savingCustomTabsMetadata": @"savingCustomTabsMetadata", @"senderToChangeTabAssignmentsEnabled": @"senderToChangeTabAssignmentsEnabled", @"senderToChangeTabAssignmentsMetadata": @"senderToChangeTabAssignmentsMetadata", @"sharedCustomTabsEnabled": @"sharedCustomTabsEnabled", @"sharedCustomTabsMetadata": @"sharedCustomTabsMetadata", @"tabDataLabelEnabled": @"tabDataLabelEnabled", @"tabDataLabelMetadata": @"tabDataLabelMetadata", @"tabLocationEnabled": @"tabLocationEnabled", @"tabLocationMetadata": @"tabLocationMetadata", @"tabLockingEnabled": @"tabLockingEnabled", @"tabLockingMetadata": @"tabLockingMetadata", @"tabScaleEnabled": @"tabScaleEnabled", @"tabScaleMetadata": @"tabScaleMetadata", @"tabTextFormattingEnabled": @"tabTextFormattingEnabled", @"tabTextFormattingMetadata": @"tabTextFormattingMetadata", @"textTabsEnabled": @"textTabsEnabled", @"textTabsMetadata": @"textTabsMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowTabOrder", @"allowTabOrderMetadata", @"approveDeclineTabsEnabled", @"approveDeclineTabsMetadata", @"calculatedFieldsEnabled", @"calculatedFieldsMetadata", @"checkboxTabsEnabled", @"checkboxTabsMetadata", @"dataFieldRegexEnabled", @"dataFieldRegexMetadata", @"dataFieldSizeEnabled", @"dataFieldSizeMetadata", @"firstLastEmailTabsEnabled", @"firstLastEmailTabsMetadata", @"listTabsEnabled", @"listTabsMetadata", @"noteTabsEnabled", @"noteTabsMetadata", @"radioTabsEnabled", @"radioTabsMetadata", @"savingCustomTabsEnabled", @"savingCustomTabsMetadata", @"senderToChangeTabAssignmentsEnabled", @"senderToChangeTabAssignmentsMetadata", @"sharedCustomTabsEnabled", @"sharedCustomTabsMetadata", @"tabDataLabelEnabled", @"tabDataLabelMetadata", @"tabLocationEnabled", @"tabLocationMetadata", @"tabLockingEnabled", @"tabLockingMetadata", @"tabScaleEnabled", @"tabScaleMetadata", @"tabTextFormattingEnabled", @"tabTextFormattingMetadata", @"textTabsEnabled", @"textTabsMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
