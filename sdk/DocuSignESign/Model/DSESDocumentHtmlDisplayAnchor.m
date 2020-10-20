#import <DSESDocumentHtmlDisplayAnchor.h>

@implementation DSESDocumentHtmlDisplayAnchor

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"caseSensitive": @"caseSensitive", @"displaySettings": @"displaySettings", @"endAnchor": @"endAnchor", @"removeEndAnchor": @"removeEndAnchor", @"removeStartAnchor": @"removeStartAnchor", @"startAnchor": @"startAnchor" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"caseSensitive", @"displaySettings", @"endAnchor", @"removeEndAnchor", @"removeStartAnchor", @"startAnchor"];
  return [optionalProperties containsObject:propertyName];
}

@end
