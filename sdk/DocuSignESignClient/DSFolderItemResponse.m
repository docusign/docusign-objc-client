#import "DSFolderItemResponse.h"

@implementation DSFolderItemResponse

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"resultSetSize": @"resultSetSize", @"startPosition": @"startPosition", @"endPosition": @"endPosition", @"totalRows": @"totalRows", @"nextUri": @"nextUri", @"previousUri": @"previousUri", @"folderItems": @"folderItems" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"resultSetSize", @"startPosition", @"endPosition", @"totalRows", @"nextUri", @"previousUri", @"folderItems"];

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
