#import <DSESDocumentHtmlDefinition.h>

@implementation DSESDocumentHtmlDefinition

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"displayAnchorPrefix": @"displayAnchorPrefix", @"displayAnchors": @"displayAnchors", @"displayOrder": @"displayOrder", @"displayPageNumber": @"displayPageNumber", @"documentGuid": @"documentGuid", @"documentId": @"documentId", @"headerLabel": @"headerLabel", @"maxScreenWidth": @"maxScreenWidth", @"removeEmptyTags": @"removeEmptyTags", @"showMobileOptimizedToggle": @"showMobileOptimizedToggle", @"source": @"source" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"displayAnchorPrefix", @"displayAnchors", @"displayOrder", @"displayPageNumber", @"documentGuid", @"documentId", @"headerLabel", @"maxScreenWidth", @"removeEmptyTags", @"showMobileOptimizedToggle", @"source"];
  return [optionalProperties containsObject:propertyName];
}

@end
