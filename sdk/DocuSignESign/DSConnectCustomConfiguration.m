#import "DSConnectCustomConfiguration.h"

@implementation DSConnectCustomConfiguration

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"allowEnvelopePublish": @"allowEnvelopePublish", @"allUsers": @"allUsers", @"configurationType": @"configurationType", @"connectId": @"connectId", @"enableLog": @"enableLog", @"envelopeEvents": @"envelopeEvents", @"includeCertificateOfCompletion": @"includeCertificateOfCompletion", @"includeCertSoapHeader": @"includeCertSoapHeader", @"includeDocumentFields": @"includeDocumentFields", @"includeDocuments": @"includeDocuments", @"includeEnvelopeVoidReason": @"includeEnvelopeVoidReason", @"includeSenderAccountasCustomField": @"includeSenderAccountasCustomField", @"includeTimeZoneInformation": @"includeTimeZoneInformation", @"name": @"name", @"recipientEvents": @"recipientEvents", @"requiresAcknowledgement": @"requiresAcknowledgement", @"signMessageWithX509Certificate": @"signMessageWithX509Certificate", @"soapNamespace": @"soapNamespace", @"urlToPublishTo": @"urlToPublishTo", @"userIds": @"userIds", @"useSoapInterface": @"useSoapInterface" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowEnvelopePublish", @"allUsers", @"configurationType", @"connectId", @"enableLog", @"envelopeEvents", @"includeCertificateOfCompletion", @"includeCertSoapHeader", @"includeDocumentFields", @"includeDocuments", @"includeEnvelopeVoidReason", @"includeSenderAccountasCustomField", @"includeTimeZoneInformation", @"name", @"recipientEvents", @"requiresAcknowledgement", @"signMessageWithX509Certificate", @"soapNamespace", @"urlToPublishTo", @"userIds", @"useSoapInterface"];
  return [optionalProperties containsObject:propertyName];
}

@end
