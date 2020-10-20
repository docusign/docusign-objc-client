#import <DSESInitialHere.h>

@implementation DSESInitialHere

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"anchorAllowWhiteSpaceInCharacters": @"anchorAllowWhiteSpaceInCharacters", @"anchorAllowWhiteSpaceInCharactersMetadata": @"anchorAllowWhiteSpaceInCharactersMetadata", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorCaseSensitiveMetadata": @"anchorCaseSensitiveMetadata", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorHorizontalAlignmentMetadata": @"anchorHorizontalAlignmentMetadata", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorIgnoreIfNotPresentMetadata": @"anchorIgnoreIfNotPresentMetadata", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorMatchWholeWordMetadata": @"anchorMatchWholeWordMetadata", @"anchorString": @"anchorString", @"anchorStringMetadata": @"anchorStringMetadata", @"anchorTabProcessorVersion": @"anchorTabProcessorVersion", @"anchorTabProcessorVersionMetadata": @"anchorTabProcessorVersionMetadata", @"anchorUnits": @"anchorUnits", @"anchorUnitsMetadata": @"anchorUnitsMetadata", @"anchorXOffset": @"anchorXOffset", @"anchorXOffsetMetadata": @"anchorXOffsetMetadata", @"anchorYOffset": @"anchorYOffset", @"anchorYOffsetMetadata": @"anchorYOffsetMetadata", @"conditionalParentLabel": @"conditionalParentLabel", @"conditionalParentLabelMetadata": @"conditionalParentLabelMetadata", @"conditionalParentValue": @"conditionalParentValue", @"conditionalParentValueMetadata": @"conditionalParentValueMetadata", @"customTabId": @"customTabId", @"customTabIdMetadata": @"customTabIdMetadata", @"documentId": @"documentId", @"documentIdMetadata": @"documentIdMetadata", @"errorDetails": @"errorDetails", @"formOrder": @"formOrder", @"formOrderMetadata": @"formOrderMetadata", @"formPageLabel": @"formPageLabel", @"formPageLabelMetadata": @"formPageLabelMetadata", @"formPageNumber": @"formPageNumber", @"formPageNumberMetadata": @"formPageNumberMetadata", @"height": @"height", @"heightMetadata": @"heightMetadata", @"mergeField": @"mergeField", @"mergeFieldXml": @"mergeFieldXml", @"name": @"name", @"nameMetadata": @"nameMetadata", @"optional": @"optional", @"optionalMetadata": @"optionalMetadata", @"pageNumber": @"pageNumber", @"pageNumberMetadata": @"pageNumberMetadata", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientIdGuidMetadata": @"recipientIdGuidMetadata", @"recipientIdMetadata": @"recipientIdMetadata", @"scaleValue": @"scaleValue", @"scaleValueMetadata": @"scaleValueMetadata", @"smartContractInformation": @"smartContractInformation", @"status": @"status", @"statusMetadata": @"statusMetadata", @"tabGroupLabels": @"tabGroupLabels", @"tabGroupLabelsMetadata": @"tabGroupLabelsMetadata", @"tabId": @"tabId", @"tabIdMetadata": @"tabIdMetadata", @"tabLabel": @"tabLabel", @"tabLabelMetadata": @"tabLabelMetadata", @"tabOrder": @"tabOrder", @"tabOrderMetadata": @"tabOrderMetadata", @"tabType": @"tabType", @"tabTypeMetadata": @"tabTypeMetadata", @"templateLocked": @"templateLocked", @"templateLockedMetadata": @"templateLockedMetadata", @"templateRequired": @"templateRequired", @"templateRequiredMetadata": @"templateRequiredMetadata", @"tooltip": @"tooltip", @"toolTipMetadata": @"toolTipMetadata", @"width": @"width", @"widthMetadata": @"widthMetadata", @"xPosition": @"xPosition", @"xPositionMetadata": @"xPositionMetadata", @"yPosition": @"yPosition", @"yPositionMetadata": @"yPositionMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchorAllowWhiteSpaceInCharacters", @"anchorAllowWhiteSpaceInCharactersMetadata", @"anchorCaseSensitive", @"anchorCaseSensitiveMetadata", @"anchorHorizontalAlignment", @"anchorHorizontalAlignmentMetadata", @"anchorIgnoreIfNotPresent", @"anchorIgnoreIfNotPresentMetadata", @"anchorMatchWholeWord", @"anchorMatchWholeWordMetadata", @"anchorString", @"anchorStringMetadata", @"anchorTabProcessorVersion", @"anchorTabProcessorVersionMetadata", @"anchorUnits", @"anchorUnitsMetadata", @"anchorXOffset", @"anchorXOffsetMetadata", @"anchorYOffset", @"anchorYOffsetMetadata", @"conditionalParentLabel", @"conditionalParentLabelMetadata", @"conditionalParentValue", @"conditionalParentValueMetadata", @"customTabId", @"customTabIdMetadata", @"documentId", @"documentIdMetadata", @"errorDetails", @"formOrder", @"formOrderMetadata", @"formPageLabel", @"formPageLabelMetadata", @"formPageNumber", @"formPageNumberMetadata", @"height", @"heightMetadata", @"mergeField", @"mergeFieldXml", @"name", @"nameMetadata", @"optional", @"optionalMetadata", @"pageNumber", @"pageNumberMetadata", @"recipientId", @"recipientIdGuid", @"recipientIdGuidMetadata", @"recipientIdMetadata", @"scaleValue", @"scaleValueMetadata", @"smartContractInformation", @"status", @"statusMetadata", @"tabGroupLabels", @"tabGroupLabelsMetadata", @"tabId", @"tabIdMetadata", @"tabLabel", @"tabLabelMetadata", @"tabOrder", @"tabOrderMetadata", @"tabType", @"tabTypeMetadata", @"templateLocked", @"templateLockedMetadata", @"templateRequired", @"templateRequiredMetadata", @"tooltip", @"toolTipMetadata", @"width", @"widthMetadata", @"xPosition", @"xPositionMetadata", @"yPosition", @"yPositionMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
