#import "DSEnvelopeDocument.h"

@implementation DSEnvelopeDocument

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"attachmentTabId": @"attachmentTabId", @"availableDocumentTypes": @"availableDocumentTypes", @"containsPdfFormFields": @"containsPdfFormFields", @"display": @"display", @"documentFields": @"documentFields", @"documentGroup": @"documentGroup", @"documentId": @"documentId", @"errorDetails": @"errorDetails", @"includeInDownload": @"includeInDownload", @"name": @"name", @"order": @"order", @"pages": @"pages", @"signerMustAcknowledge": @"signerMustAcknowledge", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"type": @"type", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"attachmentTabId", @"availableDocumentTypes", @"containsPdfFormFields", @"display", @"documentFields", @"documentGroup", @"documentId", @"errorDetails", @"includeInDownload", @"name", @"order", @"pages", @"signerMustAcknowledge", @"templateLocked", @"templateRequired", @"type", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
