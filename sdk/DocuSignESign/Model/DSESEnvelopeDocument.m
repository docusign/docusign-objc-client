#import <DSESEnvelopeDocument.h>

@implementation DSESEnvelopeDocument

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"addedRecipientIds": @"addedRecipientIds", @"attachmentTabId": @"attachmentTabId", @"authoritativeCopy": @"authoritativeCopy", @"authoritativeCopyMetadata": @"authoritativeCopyMetadata", @"availableDocumentTypes": @"availableDocumentTypes", @"containsPdfFormFields": @"containsPdfFormFields", @"display": @"display", @"displayMetadata": @"displayMetadata", @"documentFields": @"documentFields", @"documentId": @"documentId", @"documentIdGuid": @"documentIdGuid", @"errorDetails": @"errorDetails", @"includeInDownload": @"includeInDownload", @"includeInDownloadMetadata": @"includeInDownloadMetadata", @"name": @"name", @"nameMetadata": @"nameMetadata", @"order": @"order", @"pages": @"pages", @"signerMustAcknowledge": @"signerMustAcknowledge", @"signerMustAcknowledgeMetadata": @"signerMustAcknowledgeMetadata", @"sizeBytes": @"sizeBytes", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"type": @"type", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addedRecipientIds", @"attachmentTabId", @"authoritativeCopy", @"authoritativeCopyMetadata", @"availableDocumentTypes", @"containsPdfFormFields", @"display", @"displayMetadata", @"documentFields", @"documentId", @"documentIdGuid", @"errorDetails", @"includeInDownload", @"includeInDownloadMetadata", @"name", @"nameMetadata", @"order", @"pages", @"signerMustAcknowledge", @"signerMustAcknowledgeMetadata", @"sizeBytes", @"templateLocked", @"templateRequired", @"type", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
