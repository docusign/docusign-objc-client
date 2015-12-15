#import "DSGroupInformation.h"

@implementation DSGroupInformation

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"groups": @"groups", @"resultSetSize": @"resultSetSize", @"totalSetSize": @"totalSetSize", @"startPosition": @"startPosition", @"endPosition": @"endPosition", @"nextUri": @"nextUri", @"previousUri": @"previousUri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"groups", @"resultSetSize", @"totalSetSize", @"startPosition", @"endPosition", @"nextUri", @"previousUri"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
