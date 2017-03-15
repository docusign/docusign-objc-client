#import "DSSignerAttachment.h"

@implementation DSSignerAttachment

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorString": @"anchorString", @"anchorUnits": @"anchorUnits", @"anchorXOffset": @"anchorXOffset", @"anchorYOffset": @"anchorYOffset", @"conditionalParentLabel": @"conditionalParentLabel", @"conditionalParentValue": @"conditionalParentValue", @"customTabId": @"customTabId", @"documentId": @"documentId", @"errorDetails": @"errorDetails", @"mergeField": @"mergeField", @"name": @"name", @"optional": @"optional", @"pageNumber": @"pageNumber", @"recipientId": @"recipientId", @"scaleValue": @"scaleValue", @"status": @"status", @"tabId": @"tabId", @"tabLabel": @"tabLabel", @"tabOrder": @"tabOrder", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"xPosition": @"xPosition", @"yPosition": @"yPosition" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchorCaseSensitive", @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord", @"anchorString", @"anchorUnits", @"anchorXOffset", @"anchorYOffset", @"conditionalParentLabel", @"conditionalParentValue", @"customTabId", @"documentId", @"errorDetails", @"mergeField", @"name", @"optional", @"pageNumber", @"recipientId", @"scaleValue", @"status", @"tabId", @"tabLabel", @"tabOrder", @"templateLocked", @"templateRequired", @"xPosition", @"yPosition"];
  return [optionalProperties containsObject:propertyName];
}

@end
