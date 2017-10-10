#import "DSWatermark.h"

@implementation DSWatermark

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"displayAngle": @"displayAngle", @"enabled": @"enabled", @"font": @"font", @"fontColor": @"fontColor", @"fontSize": @"fontSize", @"_id": @"id", @"imageBase64": @"imageBase64", @"transparency": @"transparency", @"watermarkText": @"watermarkText" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"displayAngle", @"enabled", @"font", @"fontColor", @"fontSize", @"_id", @"imageBase64", @"transparency", @"watermarkText"];
  return [optionalProperties containsObject:propertyName];
}

@end
