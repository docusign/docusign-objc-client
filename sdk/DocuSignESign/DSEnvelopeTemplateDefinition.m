#import "DSEnvelopeTemplateDefinition.h"

@implementation DSEnvelopeTemplateDefinition

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"templateId": @"templateId", @"name": @"name", @"shared": @"shared", @"password": @"password", @"newPassword": @"varNewPassword", @"description": @"_description", @"lastModified": @"lastModified", @"lastModifiedBy": @"lastModifiedBy", @"pageCount": @"pageCount", @"uri": @"uri", @"folderName": @"folderName", @"folderId": @"folderId", @"folderUri": @"folderUri", @"parentFolderUri": @"parentFolderUri", @"owner": @"owner" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"templateId", @"name", @"shared", @"password", @"varNewPassword", @"_description", @"lastModified", @"lastModifiedBy", @"pageCount", @"uri", @"folderName", @"folderId", @"folderUri", @"parentFolderUri", @"owner"];

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
