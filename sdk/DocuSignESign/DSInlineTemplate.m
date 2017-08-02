#import "DSInlineTemplate.h"

@implementation DSInlineTemplate

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"customFields": @"customFields", @"documents": @"documents", @"envelope": @"envelope", @"recipients": @"recipients", @"sequence": @"sequence" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customFields", @"documents", @"envelope", @"recipients", @"sequence"];
  return [optionalProperties containsObject:propertyName];
}

@end
