#import "DSDocument.h"

@implementation DSDocument

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"documentId": @"documentId", @"uri": @"uri", @"remoteUrl": @"remoteUrl", @"name": @"name", @"password": @"password", @"transformPdfFields": @"transformPdfFields", @"fileExtension": @"fileExtension", @"matchBoxes": @"matchBoxes", @"order": @"order", @"pages": @"pages", @"documentFields": @"documentFields", @"encryptedWithKeyManager": @"encryptedWithKeyManager", @"documentBase64": @"documentBase64", @"applyAnchorTabs": @"applyAnchorTabs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"documentId", @"uri", @"remoteUrl", @"name", @"password", @"transformPdfFields", @"fileExtension", @"matchBoxes", @"order", @"pages", @"documentFields", @"encryptedWithKeyManager", @"documentBase64", @"applyAnchorTabs"];

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
