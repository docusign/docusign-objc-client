#import "DSRadio.h"

@implementation DSRadio

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"pageNumber": @"pageNumber", @"xPosition": @"xPosition", @"yPosition": @"yPosition", @"anchorString": @"anchorString", @"anchorXOffset": @"anchorXOffset", @"anchorYOffset": @"anchorYOffset", @"anchorUnits": @"anchorUnits", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"value": @"value", @"selected": @"selected", @"tabId": @"tabId", @"required": @"required", @"locked": @"locked", @"errorDetails": @"errorDetails" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"pageNumber", @"xPosition", @"yPosition", @"anchorString", @"anchorXOffset", @"anchorYOffset", @"anchorUnits", @"anchorIgnoreIfNotPresent", @"anchorCaseSensitive", @"anchorMatchWholeWord", @"anchorHorizontalAlignment", @"value", @"selected", @"tabId", @"required", @"locked", @"errorDetails"];

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
