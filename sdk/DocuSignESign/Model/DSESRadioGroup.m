#import <DSESRadioGroup.h>

@implementation DSESRadioGroup

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"conditionalParentLabel": @"conditionalParentLabel", @"conditionalParentLabelMetadata": @"conditionalParentLabelMetadata", @"conditionalParentValue": @"conditionalParentValue", @"conditionalParentValueMetadata": @"conditionalParentValueMetadata", @"documentId": @"documentId", @"documentIdMetadata": @"documentIdMetadata", @"groupName": @"groupName", @"groupNameMetadata": @"groupNameMetadata", @"radios": @"radios", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientIdGuidMetadata": @"recipientIdGuidMetadata", @"recipientIdMetadata": @"recipientIdMetadata", @"requireAll": @"requireAll", @"requireAllMetadata": @"requireAllMetadata", @"requireInitialOnSharedChange": @"requireInitialOnSharedChange", @"requireInitialOnSharedChangeMetadata": @"requireInitialOnSharedChangeMetadata", @"shared": @"shared", @"sharedMetadata": @"sharedMetadata", @"tabType": @"tabType", @"tabTypeMetadata": @"tabTypeMetadata", @"templateLocked": @"templateLocked", @"templateLockedMetadata": @"templateLockedMetadata", @"templateRequired": @"templateRequired", @"templateRequiredMetadata": @"templateRequiredMetadata", @"tooltip": @"tooltip", @"tooltipMetadata": @"tooltipMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"conditionalParentLabel", @"conditionalParentLabelMetadata", @"conditionalParentValue", @"conditionalParentValueMetadata", @"documentId", @"documentIdMetadata", @"groupName", @"groupNameMetadata", @"radios", @"recipientId", @"recipientIdGuid", @"recipientIdGuidMetadata", @"recipientIdMetadata", @"requireAll", @"requireAllMetadata", @"requireInitialOnSharedChange", @"requireInitialOnSharedChangeMetadata", @"shared", @"sharedMetadata", @"tabType", @"tabTypeMetadata", @"templateLocked", @"templateLockedMetadata", @"templateRequired", @"templateRequiredMetadata", @"tooltip", @"tooltipMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
