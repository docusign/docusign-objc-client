#import "DSFolderItemV2.h"

@implementation DSFolderItemV2

- (instancetype)init {
  self = [super init];

  if (self) {
    // initalise property's default value, if any
    
  }

  return self;
}

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"ownerName": @"ownerName", @"envelopeId": @"envelopeId", @"envelopeUri": @"envelopeUri", @"status": @"status", @"lastModifiedDateTime": @"lastModifiedDateTime", @"senderUserId": @"senderUserId", @"senderName": @"senderName", @"senderEmail": @"senderEmail", @"senderCompany": @"senderCompany", @"createdDateTime": @"createdDateTime", @"sentDateTime": @"sentDateTime", @"completedDateTime": @"completedDateTime", @"subject": @"subject", @"expireDateTime": @"expireDateTime", @"folderId": @"folderId", @"folderUri": @"folderUri", @"recipients": @"recipients", @"recipientsUri": @"recipientsUri", @"is21CFRPart11": @"is21CFRPart11", @"isUniversalSignatureEnvelope": @"isUniversalSignatureEnvelope" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"ownerName", @"envelopeId", @"envelopeUri", @"status", @"lastModifiedDateTime", @"senderUserId", @"senderName", @"senderEmail", @"senderCompany", @"createdDateTime", @"sentDateTime", @"completedDateTime", @"subject", @"expireDateTime", @"folderId", @"folderUri", @"recipients", @"recipientsUri", @"is21CFRPart11", @"isUniversalSignatureEnvelope"];

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
