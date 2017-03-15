#import "DSListCustomField.h"

@implementation DSListCustomField

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"configurationType": @"configurationType", @"errorDetails": @"errorDetails", @"fieldId": @"fieldId", @"listItems": @"listItems", @"name": @"name", @"required": @"required", @"show": @"show", @"value": @"value" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"configurationType", @"errorDetails", @"fieldId", @"listItems", @"name", @"required", @"show", @"value"];
  return [optionalProperties containsObject:propertyName];
}

@end
