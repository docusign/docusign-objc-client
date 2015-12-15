#import "DSFolder.h"

@implementation DSFolder

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"ownerUserName": @"ownerUserName", @"ownerEmail": @"ownerEmail", @"ownerUserId": @"ownerUserId", @"type": @"type", @"name": @"name", @"uri": @"uri", @"parentFolderId": @"parentFolderId", @"parentFolderUri": @"parentFolderUri", @"folderId": @"folderId", @"errorDetails": @"errorDetails", @"folders": @"folders", @"filter": @"filter" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"ownerUserName", @"ownerEmail", @"ownerUserId", @"type", @"name", @"uri", @"parentFolderId", @"parentFolderUri", @"folderId", @"errorDetails", @"folders", @"filter"];

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
