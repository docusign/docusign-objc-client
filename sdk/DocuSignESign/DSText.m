#import "DSText.h"

@implementation DSText

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorString": @"anchorString", @"anchorUnits": @"anchorUnits", @"anchorXOffset": @"anchorXOffset", @"anchorYOffset": @"anchorYOffset", @"bold": @"bold", @"concealValueOnDocument": @"concealValueOnDocument", @"conditionalParentLabel": @"conditionalParentLabel", @"conditionalParentValue": @"conditionalParentValue", @"customTabId": @"customTabId", @"disableAutoSize": @"disableAutoSize", @"documentId": @"documentId", @"errorDetails": @"errorDetails", @"font": @"font", @"fontColor": @"fontColor", @"fontSize": @"fontSize", @"formula": @"formula", @"height": @"height", @"isPaymentAmount": @"isPaymentAmount", @"italic": @"italic", @"locked": @"locked", @"maxLength": @"maxLength", @"mergeField": @"mergeField", @"name": @"name", @"originalValue": @"originalValue", @"pageNumber": @"pageNumber", @"recipientId": @"recipientId", @"requireAll": @"requireAll", @"required": @"required", @"requireInitialOnSharedChange": @"requireInitialOnSharedChange", @"senderRequired": @"senderRequired", @"shared": @"shared", @"status": @"status", @"tabId": @"tabId", @"tabLabel": @"tabLabel", @"tabOrder": @"tabOrder", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"underline": @"underline", @"validationMessage": @"validationMessage", @"validationPattern": @"validationPattern", @"value": @"value", @"width": @"width", @"xPosition": @"xPosition", @"yPosition": @"yPosition" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchorCaseSensitive", @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord", @"anchorString", @"anchorUnits", @"anchorXOffset", @"anchorYOffset", @"bold", @"concealValueOnDocument", @"conditionalParentLabel", @"conditionalParentValue", @"customTabId", @"disableAutoSize", @"documentId", @"errorDetails", @"font", @"fontColor", @"fontSize", @"formula", @"height", @"isPaymentAmount", @"italic", @"locked", @"maxLength", @"mergeField", @"name", @"originalValue", @"pageNumber", @"recipientId", @"requireAll", @"required", @"requireInitialOnSharedChange", @"senderRequired", @"shared", @"status", @"tabId", @"tabLabel", @"tabOrder", @"templateLocked", @"templateRequired", @"underline", @"validationMessage", @"validationPattern", @"value", @"width", @"xPosition", @"yPosition"];
  return [optionalProperties containsObject:propertyName];
}

@end
