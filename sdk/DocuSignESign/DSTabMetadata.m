#import "DSTabMetadata.h"

@implementation DSTabMetadata

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"font": @"font", @"bold": @"bold", @"italic": @"italic", @"underline": @"underline", @"fontColor": @"fontColor", @"fontSize": @"fontSize", @"height": @"height", @"width": @"width", @"customTabId": @"customTabId", @"initialValue": @"initialValue", @"includedInEmail": @"includedInEmail", @"disableAutoSize": @"disableAutoSize", @"concealValueOnDocument": @"concealValueOnDocument", @"locked": @"locked", @"required": @"required", @"shared": @"shared", @"items": @"items", @"tabLabel": @"tabLabel", @"maximumLength": @"maximumLength", @"anchor": @"anchor", @"anchorXOffset": @"anchorXOffset", @"anchorYOffset": @"anchorYOffset", @"anchorUnits": @"anchorUnits", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"name": @"name", @"type": @"type", @"validationMessage": @"validationMessage", @"validationPattern": @"validationPattern", @"lastModifiedByUserId": @"lastModifiedByUserId", @"lastModifiedByDisplayName": @"lastModifiedByDisplayName", @"lastModified": @"lastModified", @"createdByUserId": @"createdByUserId", @"createdByDisplayName": @"createdByDisplayName", @"editable": @"editable", @"mergeField": @"mergeField" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"font", @"bold", @"italic", @"underline", @"fontColor", @"fontSize", @"height", @"width", @"customTabId", @"initialValue", @"includedInEmail", @"disableAutoSize", @"concealValueOnDocument", @"locked", @"required", @"shared", @"items", @"tabLabel", @"maximumLength", @"anchor", @"anchorXOffset", @"anchorYOffset", @"anchorUnits", @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord", @"anchorCaseSensitive", @"anchorHorizontalAlignment", @"name", @"type", @"validationMessage", @"validationPattern", @"lastModifiedByUserId", @"lastModifiedByDisplayName", @"lastModified", @"createdByUserId", @"createdByDisplayName", @"editable", @"mergeField"];

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
