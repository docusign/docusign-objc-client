#import "DSMergeField.h"

@implementation DSMergeField

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"allowSenderToEdit": @"allowSenderToEdit", @"configurationType": @"configurationType", @"path": @"path", @"row": @"row", @"writeBack": @"writeBack" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowSenderToEdit", @"configurationType", @"path", @"row", @"writeBack"];
  return [optionalProperties containsObject:propertyName];
}

@end
