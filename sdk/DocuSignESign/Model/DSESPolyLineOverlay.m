#import <DSESPolyLineOverlay.h>

@implementation DSESPolyLineOverlay

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"anchorAllowWhiteSpaceInCharacters": @"anchorAllowWhiteSpaceInCharacters", @"anchorAllowWhiteSpaceInCharactersMetadata": @"anchorAllowWhiteSpaceInCharactersMetadata", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorCaseSensitiveMetadata": @"anchorCaseSensitiveMetadata", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorHorizontalAlignmentMetadata": @"anchorHorizontalAlignmentMetadata", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorIgnoreIfNotPresentMetadata": @"anchorIgnoreIfNotPresentMetadata", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorMatchWholeWordMetadata": @"anchorMatchWholeWordMetadata", @"anchorString": @"anchorString", @"anchorStringMetadata": @"anchorStringMetadata", @"anchorTabProcessorVersion": @"anchorTabProcessorVersion", @"anchorTabProcessorVersionMetadata": @"anchorTabProcessorVersionMetadata", @"anchorUnits": @"anchorUnits", @"anchorUnitsMetadata": @"anchorUnitsMetadata", @"anchorXOffset": @"anchorXOffset", @"anchorXOffsetMetadata": @"anchorXOffsetMetadata", @"anchorYOffset": @"anchorYOffset", @"anchorYOffsetMetadata": @"anchorYOffsetMetadata", @"conditionalParentLabel": @"conditionalParentLabel", @"conditionalParentLabelMetadata": @"conditionalParentLabelMetadata", @"conditionalParentValue": @"conditionalParentValue", @"conditionalParentValueMetadata": @"conditionalParentValueMetadata", @"customTabId": @"customTabId", @"customTabIdMetadata": @"customTabIdMetadata", @"documentId": @"documentId", @"documentIdMetadata": @"documentIdMetadata", @"errorDetails": @"errorDetails", @"formOrder": @"formOrder", @"formOrderMetadata": @"formOrderMetadata", @"formPageLabel": @"formPageLabel", @"formPageLabelMetadata": @"formPageLabelMetadata", @"formPageNumber": @"formPageNumber", @"formPageNumberMetadata": @"formPageNumberMetadata", @"graphicsContext": @"graphicsContext", @"height": @"height", @"heightMetadata": @"heightMetadata", @"locked": @"locked", @"lockedMetadata": @"lockedMetadata", @"mergeField": @"mergeField", @"mergeFieldXml": @"mergeFieldXml", @"overlayType": @"overlayType", @"overlayTypeMetadata": @"overlayTypeMetadata", @"pageNumber": @"pageNumber", @"pageNumberMetadata": @"pageNumberMetadata", @"polyLines": @"polyLines", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"recipientIdGuidMetadata": @"recipientIdGuidMetadata", @"recipientIdMetadata": @"recipientIdMetadata", @"shared": @"shared", @"sharedMetadata": @"sharedMetadata", @"smartContractInformation": @"smartContractInformation", @"status": @"status", @"statusMetadata": @"statusMetadata", @"tabGroupLabels": @"tabGroupLabels", @"tabGroupLabelsMetadata": @"tabGroupLabelsMetadata", @"tabId": @"tabId", @"tabIdMetadata": @"tabIdMetadata", @"tabLabel": @"tabLabel", @"tabOrder": @"tabOrder", @"tabOrderMetadata": @"tabOrderMetadata", @"tabType": @"tabType", @"tabTypeMetadata": @"tabTypeMetadata", @"templateLocked": @"templateLocked", @"templateLockedMetadata": @"templateLockedMetadata", @"templateRequired": @"templateRequired", @"templateRequiredMetadata": @"templateRequiredMetadata", @"tooltip": @"tooltip", @"toolTipMetadata": @"toolTipMetadata", @"width": @"width", @"widthMetadata": @"widthMetadata", @"xPosition": @"xPosition", @"xPositionMetadata": @"xPositionMetadata", @"yPosition": @"yPosition", @"yPositionMetadata": @"yPositionMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchorAllowWhiteSpaceInCharacters", @"anchorAllowWhiteSpaceInCharactersMetadata", @"anchorCaseSensitive", @"anchorCaseSensitiveMetadata", @"anchorHorizontalAlignment", @"anchorHorizontalAlignmentMetadata", @"anchorIgnoreIfNotPresent", @"anchorIgnoreIfNotPresentMetadata", @"anchorMatchWholeWord", @"anchorMatchWholeWordMetadata", @"anchorString", @"anchorStringMetadata", @"anchorTabProcessorVersion", @"anchorTabProcessorVersionMetadata", @"anchorUnits", @"anchorUnitsMetadata", @"anchorXOffset", @"anchorXOffsetMetadata", @"anchorYOffset", @"anchorYOffsetMetadata", @"conditionalParentLabel", @"conditionalParentLabelMetadata", @"conditionalParentValue", @"conditionalParentValueMetadata", @"customTabId", @"customTabIdMetadata", @"documentId", @"documentIdMetadata", @"errorDetails", @"formOrder", @"formOrderMetadata", @"formPageLabel", @"formPageLabelMetadata", @"formPageNumber", @"formPageNumberMetadata", @"graphicsContext", @"height", @"heightMetadata", @"locked", @"lockedMetadata", @"mergeField", @"mergeFieldXml", @"overlayType", @"overlayTypeMetadata", @"pageNumber", @"pageNumberMetadata", @"polyLines", @"recipientId", @"recipientIdGuid", @"recipientIdGuidMetadata", @"recipientIdMetadata", @"shared", @"sharedMetadata", @"smartContractInformation", @"status", @"statusMetadata", @"tabGroupLabels", @"tabGroupLabelsMetadata", @"tabId", @"tabIdMetadata", @"tabLabel", @"tabOrder", @"tabOrderMetadata", @"tabType", @"tabTypeMetadata", @"templateLocked", @"templateLockedMetadata", @"templateRequired", @"templateRequiredMetadata", @"tooltip", @"toolTipMetadata", @"width", @"widthMetadata", @"xPosition", @"xPositionMetadata", @"yPosition", @"yPositionMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
