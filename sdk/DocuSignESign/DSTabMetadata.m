#import "DSTabMetadata.h"

@implementation DSTabMetadata

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"anchor": @"anchor", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorUnits": @"anchorUnits", @"anchorXOffset": @"anchorXOffset", @"anchorYOffset": @"anchorYOffset", @"bold": @"bold", @"concealValueOnDocument": @"concealValueOnDocument", @"createdByDisplayName": @"createdByDisplayName", @"createdByUserId": @"createdByUserId", @"customTabId": @"customTabId", @"disableAutoSize": @"disableAutoSize", @"editable": @"editable", @"font": @"font", @"fontColor": @"fontColor", @"fontSize": @"fontSize", @"height": @"height", @"includedInEmail": @"includedInEmail", @"initialValue": @"initialValue", @"italic": @"italic", @"items": @"items", @"lastModified": @"lastModified", @"lastModifiedByDisplayName": @"lastModifiedByDisplayName", @"lastModifiedByUserId": @"lastModifiedByUserId", @"locked": @"locked", @"maximumLength": @"maximumLength", @"mergeField": @"mergeField", @"name": @"name", @"required": @"required", @"scaleValue": @"scaleValue", @"shared": @"shared", @"tabLabel": @"tabLabel", @"type": @"type", @"underline": @"underline", @"validationMessage": @"validationMessage", @"validationPattern": @"validationPattern", @"width": @"width" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchor", @"anchorCaseSensitive", @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord", @"anchorUnits", @"anchorXOffset", @"anchorYOffset", @"bold", @"concealValueOnDocument", @"createdByDisplayName", @"createdByUserId", @"customTabId", @"disableAutoSize", @"editable", @"font", @"fontColor", @"fontSize", @"height", @"includedInEmail", @"initialValue", @"italic", @"items", @"lastModified", @"lastModifiedByDisplayName", @"lastModifiedByUserId", @"locked", @"maximumLength", @"mergeField", @"name", @"required", @"scaleValue", @"shared", @"tabLabel", @"type", @"underline", @"validationMessage", @"validationPattern", @"width"];
  return [optionalProperties containsObject:propertyName];
}

@end
