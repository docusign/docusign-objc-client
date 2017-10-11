#import "DSFolderItem.h"

@implementation DSFolderItem

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"completedDateTime": @"completedDateTime", @"createdDateTime": @"createdDateTime", @"customFields": @"customFields", @"_description": @"description", @"envelopeId": @"envelopeId", @"envelopeUri": @"envelopeUri", @"is21CFRPart11": @"is21CFRPart11", @"isSignatureProviderEnvelope": @"isSignatureProviderEnvelope", @"lastModified": @"lastModified", @"name": @"name", @"ownerName": @"ownerName", @"pageCount": @"pageCount", @"password": @"password", @"senderEmail": @"senderEmail", @"senderName": @"senderName", @"sentDateTime": @"sentDateTime", @"shared": @"shared", @"status": @"status", @"subject": @"subject", @"templateId": @"templateId", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"completedDateTime", @"createdDateTime", @"customFields", @"_description", @"envelopeId", @"envelopeUri", @"is21CFRPart11", @"isSignatureProviderEnvelope", @"lastModified", @"name", @"ownerName", @"pageCount", @"password", @"senderEmail", @"senderName", @"sentDateTime", @"shared", @"status", @"subject", @"templateId", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
