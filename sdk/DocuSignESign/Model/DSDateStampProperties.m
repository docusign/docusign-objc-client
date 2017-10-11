#import "DSDateStampProperties.h"

@implementation DSDateStampProperties

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"dateAreaHeight": @"dateAreaHeight", @"dateAreaWidth": @"dateAreaWidth", @"dateAreaX": @"dateAreaX", @"dateAreaY": @"dateAreaY" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dateAreaHeight", @"dateAreaWidth", @"dateAreaX", @"dateAreaY"];
  return [optionalProperties containsObject:propertyName];
}

@end
