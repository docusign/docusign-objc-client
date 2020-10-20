#import <DSESConnectCustomConfiguration.h>

@implementation DSESConnectCustomConfiguration

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"allowEnvelopePublish": @"allowEnvelopePublish", @"allowSalesforcePublish": @"allowSalesforcePublish", @"allUsers": @"allUsers", @"configurationType": @"configurationType", @"connectId": @"connectId", @"enableLog": @"enableLog", @"envelopeEvents": @"envelopeEvents", @"eventData": @"eventData", @"externalFolderId": @"externalFolderId", @"externalFolderLabel": @"externalFolderLabel", @"includeCertificateOfCompletion": @"includeCertificateOfCompletion", @"includeCertSoapHeader": @"includeCertSoapHeader", @"includeDocumentFields": @"includeDocumentFields", @"includeDocuments": @"includeDocuments", @"includeEnvelopeVoidReason": @"includeEnvelopeVoidReason", @"includeHMAC": @"includeHMAC", @"includeSenderAccountasCustomField": @"includeSenderAccountasCustomField", @"includeTimeZoneInformation": @"includeTimeZoneInformation", @"name": @"name", @"password": @"password", @"recipientEvents": @"recipientEvents", @"requireMutualTls": @"requireMutualTls", @"requiresAcknowledgement": @"requiresAcknowledgement", @"salesforceApiVersion": @"salesforceApiVersion", @"salesforceAuthcode": @"salesforceAuthcode", @"salesforceCallBackUrl": @"salesforceCallBackUrl", @"salesforceDocumentsAsContentFiles": @"salesforceDocumentsAsContentFiles", @"senderOverride": @"senderOverride", @"senderSelectableItems": @"senderSelectableItems", @"sfObjects": @"sfObjects", @"signMessageWithX509Certificate": @"signMessageWithX509Certificate", @"soapNamespace": @"soapNamespace", @"urlToPublishTo": @"urlToPublishTo", @"userIds": @"userIds", @"userName": @"userName", @"useSoapInterface": @"useSoapInterface" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowEnvelopePublish", @"allowSalesforcePublish", @"allUsers", @"configurationType", @"connectId", @"enableLog", @"envelopeEvents", @"eventData", @"externalFolderId", @"externalFolderLabel", @"includeCertificateOfCompletion", @"includeCertSoapHeader", @"includeDocumentFields", @"includeDocuments", @"includeEnvelopeVoidReason", @"includeHMAC", @"includeSenderAccountasCustomField", @"includeTimeZoneInformation", @"name", @"password", @"recipientEvents", @"requireMutualTls", @"requiresAcknowledgement", @"salesforceApiVersion", @"salesforceAuthcode", @"salesforceCallBackUrl", @"salesforceDocumentsAsContentFiles", @"senderOverride", @"senderSelectableItems", @"sfObjects", @"signMessageWithX509Certificate", @"soapNamespace", @"urlToPublishTo", @"userIds", @"userName", @"useSoapInterface"];
  return [optionalProperties containsObject:propertyName];
}

@end
