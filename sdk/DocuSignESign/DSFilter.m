#import "DSFilter.h"

@implementation DSFilter

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"actionRequired": @"actionRequired", @"expires": @"expires", @"isTemplate": @"isTemplate", @"status": @"status", @"fromDateTime": @"fromDateTime", @"toDateTime": @"toDateTime", @"searchTarget": @"searchTarget", @"searchText": @"searchText", @"folderIds": @"folderIds", @"orderBy": @"orderBy", @"order": @"order" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"actionRequired", @"expires", @"isTemplate", @"status", @"fromDateTime", @"toDateTime", @"searchTarget", @"searchText", @"folderIds", @"orderBy", @"order"];

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
