#import "DSPage.h"

@implementation DSPage

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"dpi": @"dpi", @"errorDetails": @"errorDetails", @"height": @"height", @"imageBytes": @"imageBytes", @"mimeType": @"mimeType", @"pageId": @"pageId", @"sequence": @"sequence", @"width": @"width" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dpi", @"errorDetails", @"height", @"imageBytes", @"mimeType", @"pageId", @"sequence", @"width"];
  return [optionalProperties containsObject:propertyName];
}

@end
