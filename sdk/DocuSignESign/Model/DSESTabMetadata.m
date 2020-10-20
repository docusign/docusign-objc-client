#import <DSESTabMetadata.h>

@implementation DSESTabMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"anchor": @"anchor", @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorUnits": @"anchorUnits", @"anchorXOffset": @"anchorXOffset", @"anchorYOffset": @"anchorYOffset", @"bold": @"bold", @"collaborative": @"collaborative", @"concealValueOnDocument": @"concealValueOnDocument", @"createdByDisplayName": @"createdByDisplayName", @"createdByUserId": @"createdByUserId", @"customTabId": @"customTabId", @"disableAutoSize": @"disableAutoSize", @"editable": @"editable", @"font": @"font", @"fontColor": @"fontColor", @"fontSize": @"fontSize", @"height": @"height", @"includedInEmail": @"includedInEmail", @"initialValue": @"initialValue", @"italic": @"italic", @"items": @"items", @"lastModified": @"lastModified", @"lastModifiedByDisplayName": @"lastModifiedByDisplayName", @"lastModifiedByUserId": @"lastModifiedByUserId", @"locked": @"locked", @"maximumLength": @"maximumLength", @"mergeField": @"mergeField", @"name": @"name", @"paymentItemCode": @"paymentItemCode", @"paymentItemDescription": @"paymentItemDescription", @"paymentItemName": @"paymentItemName", @"requireAll": @"requireAll", @"required": @"required", @"requireInitialOnSharedChange": @"requireInitialOnSharedChange", @"scaleValue": @"scaleValue", @"selected": @"selected", @"shared": @"shared", @"stampType": @"stampType", @"stampTypeMetadata": @"stampTypeMetadata", @"tabLabel": @"tabLabel", @"type": @"type", @"underline": @"underline", @"validationMessage": @"validationMessage", @"validationPattern": @"validationPattern", @"width": @"width" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchor", @"anchorCaseSensitive", @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord", @"anchorUnits", @"anchorXOffset", @"anchorYOffset", @"bold", @"collaborative", @"concealValueOnDocument", @"createdByDisplayName", @"createdByUserId", @"customTabId", @"disableAutoSize", @"editable", @"font", @"fontColor", @"fontSize", @"height", @"includedInEmail", @"initialValue", @"italic", @"items", @"lastModified", @"lastModifiedByDisplayName", @"lastModifiedByUserId", @"locked", @"maximumLength", @"mergeField", @"name", @"paymentItemCode", @"paymentItemDescription", @"paymentItemName", @"requireAll", @"required", @"requireInitialOnSharedChange", @"scaleValue", @"selected", @"shared", @"stampType", @"stampTypeMetadata", @"tabLabel", @"type", @"underline", @"validationMessage", @"validationPattern", @"width"];
  return [optionalProperties containsObject:propertyName];
}

@end
