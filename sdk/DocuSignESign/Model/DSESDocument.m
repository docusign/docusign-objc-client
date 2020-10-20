#import <DSESDocument.h>

@implementation DSESDocument

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"applyAnchorTabs": @"applyAnchorTabs", @"display": @"display", @"documentBase64": @"documentBase64", @"documentFields": @"documentFields", @"documentId": @"documentId", @"encryptedWithKeyManager": @"encryptedWithKeyManager", @"fileExtension": @"fileExtension", @"fileFormatHint": @"fileFormatHint", @"htmlDefinition": @"htmlDefinition", @"includeInDownload": @"includeInDownload", @"matchBoxes": @"matchBoxes", @"name": @"name", @"order": @"order", @"pages": @"pages", @"password": @"password", @"pdfFormFieldOption": @"pdfFormFieldOption", @"remoteUrl": @"remoteUrl", @"signerMustAcknowledge": @"signerMustAcknowledge", @"signerMustAcknowledgeUseAccountDefault": @"signerMustAcknowledgeUseAccountDefault", @"tabs": @"tabs", @"templateLocked": @"templateLocked", @"templateRequired": @"templateRequired", @"transformPdfFields": @"transformPdfFields", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"applyAnchorTabs", @"display", @"documentBase64", @"documentFields", @"documentId", @"encryptedWithKeyManager", @"fileExtension", @"fileFormatHint", @"htmlDefinition", @"includeInDownload", @"matchBoxes", @"name", @"order", @"pages", @"password", @"pdfFormFieldOption", @"remoteUrl", @"signerMustAcknowledge", @"signerMustAcknowledgeUseAccountDefault", @"tabs", @"templateLocked", @"templateRequired", @"transformPdfFields", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
