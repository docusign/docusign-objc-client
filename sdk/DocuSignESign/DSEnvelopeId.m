#import "DSEnvelopeId.h"

@implementation DSEnvelopeId

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"tabLabel": @"tabLabel", @"font": @"font", @"bold": @"bold", @"italic": @"italic", @"underline": @"underline", @"fontColor": @"fontColor", @"fontSize": @"fontSize", @"documentId": @"documentId", @"recipientId": @"recipientId", @"pageNumber": @"pageNumber", @"xPosition": @"xPosition", @"yPosition": @"yPosition", @"anchorString": @"anchorString", @"anchorXOffset": @"anchorXOffset", @"anchorYOffset": @"anchorYOffset", @"anchorUnits": @"anchorUnits", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"tabId": @"tabId", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"conditionalParentLabel": @"conditionalParentLabel", @"conditionalParentValue": @"conditionalParentValue", @"customTabId": @"customTabId", @"mergeField": @"mergeField", @"status": @"status", @"errorDetails": @"errorDetails" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"name", @"tabLabel", @"font", @"bold", @"italic", @"underline", @"fontColor", @"fontSize", @"documentId", @"recipientId", @"pageNumber", @"xPosition", @"yPosition", @"anchorString", @"anchorXOffset", @"anchorYOffset", @"anchorUnits", @"anchorIgnoreIfNotPresent", @"anchorCaseSensitive", @"anchorMatchWholeWord", @"anchorHorizontalAlignment", @"tabId", @"templateLocked", @"templateRequired", @"conditionalParentLabel", @"conditionalParentValue", @"customTabId", @"mergeField", @"status", @"errorDetails"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
