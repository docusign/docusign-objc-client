#import "DSEventNotification.h"

@implementation DSEventNotification

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"url": @"url", @"loggingEnabled": @"loggingEnabled", @"requireAcknowledgment": @"requireAcknowledgment", @"envelopeEvents": @"envelopeEvents", @"recipientEvents": @"recipientEvents", @"useSoapInterface": @"useSoapInterface", @"soapNameSpace": @"soapNameSpace", @"includeCertificateWithSoap": @"includeCertificateWithSoap", @"signMessageWithX509Cert": @"signMessageWithX509Cert", @"includeDocuments": @"includeDocuments", @"includeEnvelopeVoidReason": @"includeEnvelopeVoidReason", @"includeTimeZone": @"includeTimeZone", @"includeSenderAccountAsCustomField": @"includeSenderAccountAsCustomField", @"includeDocumentFields": @"includeDocumentFields", @"includeCertificateOfCompletion": @"includeCertificateOfCompletion" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"url", @"loggingEnabled", @"requireAcknowledgment", @"envelopeEvents", @"recipientEvents", @"useSoapInterface", @"soapNameSpace", @"includeCertificateWithSoap", @"signMessageWithX509Cert", @"includeDocuments", @"includeEnvelopeVoidReason", @"includeTimeZone", @"includeSenderAccountAsCustomField", @"includeDocumentFields", @"includeCertificateOfCompletion"];

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
