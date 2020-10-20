#import <DSESRadio.h>

@implementation DSESRadio

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"anchorAllowWhiteSpaceInCharacters": @"anchorAllowWhiteSpaceInCharacters", @"anchorAllowWhiteSpaceInCharactersMetadata": @"anchorAllowWhiteSpaceInCharactersMetadata", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorCaseSensitiveMetadata": @"anchorCaseSensitiveMetadata", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorHorizontalAlignmentMetadata": @"anchorHorizontalAlignmentMetadata", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorIgnoreIfNotPresentMetadata": @"anchorIgnoreIfNotPresentMetadata", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorMatchWholeWordMetadata": @"anchorMatchWholeWordMetadata", @"anchorString": @"anchorString", @"anchorStringMetadata": @"anchorStringMetadata", @"anchorTabProcessorVersion": @"anchorTabProcessorVersion", @"anchorTabProcessorVersionMetadata": @"anchorTabProcessorVersionMetadata", @"anchorUnits": @"anchorUnits", @"anchorUnitsMetadata": @"anchorUnitsMetadata", @"anchorXOffset": @"anchorXOffset", @"anchorXOffsetMetadata": @"anchorXOffsetMetadata", @"anchorYOffset": @"anchorYOffset", @"anchorYOffsetMetadata": @"anchorYOffsetMetadata", @"bold": @"bold", @"boldMetadata": @"boldMetadata", @"errorDetails": @"errorDetails", @"font": @"font", @"fontColor": @"fontColor", @"fontColorMetadata": @"fontColorMetadata", @"fontMetadata": @"fontMetadata", @"fontSize": @"fontSize", @"fontSizeMetadata": @"fontSizeMetadata", @"italic": @"italic", @"italicMetadata": @"italicMetadata", @"locked": @"locked", @"lockedMetadata": @"lockedMetadata", @"pageNumber": @"pageNumber", @"pageNumberMetadata": @"pageNumberMetadata", @"required": @"required", @"requiredMetadata": @"requiredMetadata", @"selected": @"selected", @"selectedMetadata": @"selectedMetadata", @"status": @"status", @"statusMetadata": @"statusMetadata", @"tabId": @"tabId", @"tabIdMetadata": @"tabIdMetadata", @"tabOrder": @"tabOrder", @"tabOrderMetadata": @"tabOrderMetadata", @"underline": @"underline", @"underlineMetadata": @"underlineMetadata", @"value": @"value", @"valueMetadata": @"valueMetadata", @"xPosition": @"xPosition", @"xPositionMetadata": @"xPositionMetadata", @"yPosition": @"yPosition", @"yPositionMetadata": @"yPositionMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchorAllowWhiteSpaceInCharacters", @"anchorAllowWhiteSpaceInCharactersMetadata", @"anchorCaseSensitive", @"anchorCaseSensitiveMetadata", @"anchorHorizontalAlignment", @"anchorHorizontalAlignmentMetadata", @"anchorIgnoreIfNotPresent", @"anchorIgnoreIfNotPresentMetadata", @"anchorMatchWholeWord", @"anchorMatchWholeWordMetadata", @"anchorString", @"anchorStringMetadata", @"anchorTabProcessorVersion", @"anchorTabProcessorVersionMetadata", @"anchorUnits", @"anchorUnitsMetadata", @"anchorXOffset", @"anchorXOffsetMetadata", @"anchorYOffset", @"anchorYOffsetMetadata", @"bold", @"boldMetadata", @"errorDetails", @"font", @"fontColor", @"fontColorMetadata", @"fontMetadata", @"fontSize", @"fontSizeMetadata", @"italic", @"italicMetadata", @"locked", @"lockedMetadata", @"pageNumber", @"pageNumberMetadata", @"required", @"requiredMetadata", @"selected", @"selectedMetadata", @"status", @"statusMetadata", @"tabId", @"tabIdMetadata", @"tabOrder", @"tabOrderMetadata", @"underline", @"underlineMetadata", @"value", @"valueMetadata", @"xPosition", @"xPositionMetadata", @"yPosition", @"yPositionMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
