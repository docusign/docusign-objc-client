#import "DSFolderItem.h"

@implementation DSFolderItem

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"ownerName": @"ownerName", @"envelopeId": @"envelopeId", @"envelopeUri": @"envelopeUri", @"status": @"status", @"senderName": @"senderName", @"senderEmail": @"senderEmail", @"createdDateTime": @"createdDateTime", @"sentDateTime": @"sentDateTime", @"completedDateTime": @"completedDateTime", @"subject": @"subject", @"templateId": @"templateId", @"name": @"name", @"shared": @"shared", @"password": @"password", @"description": @"_description", @"lastModified": @"lastModified", @"pageCount": @"pageCount", @"uri": @"uri", @"is21CFRPart11": @"is21CFRPart11", @"customFields": @"customFields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"ownerName", @"envelopeId", @"envelopeUri", @"status", @"senderName", @"senderEmail", @"createdDateTime", @"sentDateTime", @"completedDateTime", @"subject", @"templateId", @"name", @"shared", @"password", @"_description", @"lastModified", @"pageCount", @"uri", @"is21CFRPart11", @"customFields"];

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
