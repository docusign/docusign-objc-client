#import "DSFolderItemV2.h"

@implementation DSFolderItemV2

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"completedDateTime": @"completedDateTime", @"createdDateTime": @"createdDateTime", @"envelopeId": @"envelopeId", @"envelopeUri": @"envelopeUri", @"expireDateTime": @"expireDateTime", @"folderId": @"folderId", @"folderUri": @"folderUri", @"is21CFRPart11": @"is21CFRPart11", @"isSignatureProviderEnvelope": @"isSignatureProviderEnvelope", @"lastModifiedDateTime": @"lastModifiedDateTime", @"ownerName": @"ownerName", @"recipients": @"recipients", @"recipientsUri": @"recipientsUri", @"senderCompany": @"senderCompany", @"senderEmail": @"senderEmail", @"senderName": @"senderName", @"senderUserId": @"senderUserId", @"sentDateTime": @"sentDateTime", @"status": @"status", @"subject": @"subject" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"completedDateTime", @"createdDateTime", @"envelopeId", @"envelopeUri", @"expireDateTime", @"folderId", @"folderUri", @"is21CFRPart11", @"isSignatureProviderEnvelope", @"lastModifiedDateTime", @"ownerName", @"recipients", @"recipientsUri", @"senderCompany", @"senderEmail", @"senderName", @"senderUserId", @"sentDateTime", @"status", @"subject"];
  return [optionalProperties containsObject:propertyName];
}

@end
