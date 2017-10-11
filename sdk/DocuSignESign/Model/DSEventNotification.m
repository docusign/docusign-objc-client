#import "DSEventNotification.h"

@implementation DSEventNotification

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"envelopeEvents": @"envelopeEvents", @"includeCertificateOfCompletion": @"includeCertificateOfCompletion", @"includeCertificateWithSoap": @"includeCertificateWithSoap", @"includeDocumentFields": @"includeDocumentFields", @"includeDocuments": @"includeDocuments", @"includeEnvelopeVoidReason": @"includeEnvelopeVoidReason", @"includeSenderAccountAsCustomField": @"includeSenderAccountAsCustomField", @"includeTimeZone": @"includeTimeZone", @"loggingEnabled": @"loggingEnabled", @"recipientEvents": @"recipientEvents", @"requireAcknowledgment": @"requireAcknowledgment", @"signMessageWithX509Cert": @"signMessageWithX509Cert", @"soapNameSpace": @"soapNameSpace", @"url": @"url", @"useSoapInterface": @"useSoapInterface" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"envelopeEvents", @"includeCertificateOfCompletion", @"includeCertificateWithSoap", @"includeDocumentFields", @"includeDocuments", @"includeEnvelopeVoidReason", @"includeSenderAccountAsCustomField", @"includeTimeZone", @"loggingEnabled", @"recipientEvents", @"requireAcknowledgment", @"signMessageWithX509Cert", @"soapNameSpace", @"url", @"useSoapInterface"];
  return [optionalProperties containsObject:propertyName];
}

@end
