#import <DSESDocumentHtmlDisplaySettings.h>

@implementation DSESDocumentHtmlDisplaySettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cellStyle": @"cellStyle", @"collapsibleSettings": @"collapsibleSettings", @"display": @"display", @"displayLabel": @"displayLabel", @"displayOrder": @"displayOrder", @"displayPageNumber": @"displayPageNumber", @"hideLabelWhenOpened": @"hideLabelWhenOpened", @"inlineOuterStyle": @"inlineOuterStyle", @"labelWhenOpened": @"labelWhenOpened", @"preLabel": @"preLabel", @"scrollToTopWhenOpened": @"scrollToTopWhenOpened", @"tableStyle": @"tableStyle" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cellStyle", @"collapsibleSettings", @"display", @"displayLabel", @"displayOrder", @"displayPageNumber", @"hideLabelWhenOpened", @"inlineOuterStyle", @"labelWhenOpened", @"preLabel", @"scrollToTopWhenOpened", @"tableStyle"];
  return [optionalProperties containsObject:propertyName];
}

@end
