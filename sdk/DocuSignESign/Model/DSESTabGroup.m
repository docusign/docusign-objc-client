#import <DSESTabGroup.h>

@implementation DSESTabGroup

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"anchorAllowWhiteSpaceInCharacters": @"anchorAllowWhiteSpaceInCharacters", @"anchorAllowWhiteSpaceInCharactersMetadata": @"anchorAllowWhiteSpaceInCharactersMetadata", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorCaseSensitiveMetadata": @"anchorCaseSensitiveMetadata", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorHorizontalAlignmentMetadata": @"anchorHorizontalAlignmentMetadata", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorIgnoreIfNotPresentMetadata": @"anchorIgnoreIfNotPresentMetadata", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorMatchWholeWordMetadata": @"anchorMatchWholeWordMetadata", @"anchorString": @"anchorString", @"anchorStringMetadata": @"anchorStringMetadata", @"anchorTabProcessorVersion": @"anchorTabProcessorVersion", @"anchorTabProcessorVersionMetadata": @"anchorTabProcessorVersionMetadata", @"anchorUnits": @"anchorUnits", @"anchorUnitsMetadata": @"anchorUnitsMetadata", @"anchorXOffset": @"anchorXOffset", @"anchorXOffsetMetadata": @"anchorXOffsetMetadata", @"anchorYOffset": @"anchorYOffset", @"anchorYOffsetMetadata": @"anchorYOffsetMetadata", @"conditionalParentLabel": @"conditionalParentLabel", @"conditionalParentLabelMetadata": @"conditionalParentLabelMetadata", @"conditionalParentValue": @"conditionalParentValue", @"conditionalParentValueMetadata": @"conditionalParentValueMetadata", @"customTabId": @"customTabId", @"customTabIdMetadata": @"customTabIdMetadata", @"documentId": @"documentId", @"documentIdMetadata": @"documentIdMetadata", @"errorDetails": @"errorDetails", @"formOrder": @"formOrder", @"formOrderMetadata": @"formOrderMetadata", @"formPageLabel": @"formPageLabel", @"formPageLabelMetadata": @"formPageLabelMetadata", @"formPageNumber": @"formPageNumber", @"formPageNumberMetadata": @"formPageNumberMetadata", @"groupLabel": @"groupLabel", @"groupLabelMetadata": @"groupLabelMetadata", @"groupRule": @"groupRule", @"groupRuleMetadata": @"groupRuleMetadata", @"height": @"height", @"heightMetadata": @"heightMetadata", @"maximumAllowed": @"maximumAllowed", @"maximumAllowedMetadata": @"maximumAllowedMetadata", @"mergeField": @"mergeField", @"mergeFieldXml": @"mergeFieldXml", @"minimumRequired": @"minimumRequired", @"minimumRequiredMetadata": @"minimumRequiredMetadata", @"pageNumber": @"pageNumber", @"pageNumberMetadata": @"pageNumberMetadata", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientIdGuidMetadata": @"recipientIdGuidMetadata", @"recipientIdMetadata": @"recipientIdMetadata", @"smartContractInformation": @"smartContractInformation", @"status": @"status", @"statusMetadata": @"statusMetadata", @"tabGroupLabels": @"tabGroupLabels", @"tabGroupLabelsMetadata": @"tabGroupLabelsMetadata", @"tabId": @"tabId", @"tabIdMetadata": @"tabIdMetadata", @"tabOrder": @"tabOrder", @"tabOrderMetadata": @"tabOrderMetadata", @"tabScope": @"tabScope", @"tabScopeMetadata": @"tabScopeMetadata", @"tabType": @"tabType", @"tabTypeMetadata": @"tabTypeMetadata", @"templateLocked": @"templateLocked", @"templateLockedMetadata": @"templateLockedMetadata", @"templateRequired": @"templateRequired", @"templateRequiredMetadata": @"templateRequiredMetadata", @"tooltip": @"tooltip", @"toolTipMetadata": @"toolTipMetadata", @"validationMessage": @"validationMessage", @"validationMessageMetadata": @"validationMessageMetadata", @"width": @"width", @"widthMetadata": @"widthMetadata", @"xPosition": @"xPosition", @"xPositionMetadata": @"xPositionMetadata", @"yPosition": @"yPosition", @"yPositionMetadata": @"yPositionMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchorAllowWhiteSpaceInCharacters", @"anchorAllowWhiteSpaceInCharactersMetadata", @"anchorCaseSensitive", @"anchorCaseSensitiveMetadata", @"anchorHorizontalAlignment", @"anchorHorizontalAlignmentMetadata", @"anchorIgnoreIfNotPresent", @"anchorIgnoreIfNotPresentMetadata", @"anchorMatchWholeWord", @"anchorMatchWholeWordMetadata", @"anchorString", @"anchorStringMetadata", @"anchorTabProcessorVersion", @"anchorTabProcessorVersionMetadata", @"anchorUnits", @"anchorUnitsMetadata", @"anchorXOffset", @"anchorXOffsetMetadata", @"anchorYOffset", @"anchorYOffsetMetadata", @"conditionalParentLabel", @"conditionalParentLabelMetadata", @"conditionalParentValue", @"conditionalParentValueMetadata", @"customTabId", @"customTabIdMetadata", @"documentId", @"documentIdMetadata", @"errorDetails", @"formOrder", @"formOrderMetadata", @"formPageLabel", @"formPageLabelMetadata", @"formPageNumber", @"formPageNumberMetadata", @"groupLabel", @"groupLabelMetadata", @"groupRule", @"groupRuleMetadata", @"height", @"heightMetadata", @"maximumAllowed", @"maximumAllowedMetadata", @"mergeField", @"mergeFieldXml", @"minimumRequired", @"minimumRequiredMetadata", @"pageNumber", @"pageNumberMetadata", @"recipientId", @"recipientIdGuid", @"recipientIdGuidMetadata", @"recipientIdMetadata", @"smartContractInformation", @"status", @"statusMetadata", @"tabGroupLabels", @"tabGroupLabelsMetadata", @"tabId", @"tabIdMetadata", @"tabOrder", @"tabOrderMetadata", @"tabScope", @"tabScopeMetadata", @"tabType", @"tabTypeMetadata", @"templateLocked", @"templateLockedMetadata", @"templateRequired", @"templateRequiredMetadata", @"tooltip", @"toolTipMetadata", @"validationMessage", @"validationMessageMetadata", @"width", @"widthMetadata", @"xPosition", @"xPositionMetadata", @"yPosition", @"yPositionMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
