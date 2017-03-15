#import "DSDocument.h"

@implementation DSDocument

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"applyAnchorTabs": @"applyAnchorTabs", @"display": @"display", @"documentBase64": @"documentBase64", @"documentFields": @"documentFields", @"documentGroup": @"documentGroup", @"documentId": @"documentId", @"encryptedWithKeyManager": @"encryptedWithKeyManager", @"fileExtension": @"fileExtension", @"includeInDownload": @"includeInDownload", @"matchBoxes": @"matchBoxes", @"name": @"name", @"order": @"order", @"pages": @"pages", @"password": @"password", @"remoteUrl": @"remoteUrl", @"signerMustAcknowledge": @"signerMustAcknowledge", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"transformPdfFields": @"transformPdfFields", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"applyAnchorTabs", @"display", @"documentBase64", @"documentFields", @"documentGroup", @"documentId", @"encryptedWithKeyManager", @"fileExtension", @"includeInDownload", @"matchBoxes", @"name", @"order", @"pages", @"password", @"remoteUrl", @"signerMustAcknowledge", @"templateLocked", @"templateRequired", @"transformPdfFields", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
