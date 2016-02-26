#import "DSEnvelopeTemplateResult.h"

@implementation DSEnvelopeTemplateResult

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"templateId": @"templateId", @"name": @"name", @"shared": @"shared", @"password": @"password", @"description": @"_description", @"lastModified": @"lastModified", @"pageCount": @"pageCount", @"uri": @"uri", @"folderName": @"folderName", @"folderId": @"folderId", @"folderUri": @"folderUri", @"parentFolderUri": @"parentFolderUri", @"owner": @"owner", @"documents": @"documents", @"recipients": @"recipients", @"transactionId": @"transactionId", @"status": @"status", @"documentsUri": @"documentsUri", @"recipientsUri": @"recipientsUri", @"asynchronous": @"asynchronous", @"envelopeUri": @"envelopeUri", @"emailSubject": @"emailSubject", @"emailBlurb": @"emailBlurb", @"envelopeId": @"envelopeId", @"signingLocation": @"signingLocation", @"customFieldsUri": @"customFieldsUri", @"envelopeIdStamping": @"envelopeIdStamping", @"authoritativeCopy": @"authoritativeCopy", @"notification": @"notification", @"notificationUri": @"notificationUri", @"enforceSignerVisibility": @"enforceSignerVisibility", @"enableWetSign": @"enableWetSign", @"allowMarkup": @"allowMarkup", @"allowReassign": @"allowReassign", @"createdDateTime": @"createdDateTime", @"lastModifiedDateTime": @"lastModifiedDateTime", @"deliveredDateTime": @"deliveredDateTime", @"sentDateTime": @"sentDateTime", @"completedDateTime": @"completedDateTime", @"voidedDateTime": @"voidedDateTime", @"voidedReason": @"voidedReason", @"deletedDateTime": @"deletedDateTime", @"declinedDateTime": @"declinedDateTime", @"statusChangedDateTime": @"statusChangedDateTime", @"documentsCombinedUri": @"documentsCombinedUri", @"certificateUri": @"certificateUri", @"templatesUri": @"templatesUri", @"messageLock": @"messageLock", @"recipientsLock": @"recipientsLock", @"brandLock": @"brandLock", @"brandId": @"brandId", @"useDisclosure": @"useDisclosure", @"emailSettings": @"emailSettings", @"purgeState": @"purgeState", @"lockInformation": @"lockInformation", @"is21CFRPart11": @"is21CFRPart11", @"isUniversalSignatureEnvelope": @"isUniversalSignatureEnvelope" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"templateId", @"name", @"shared", @"password", @"_description", @"lastModified", @"pageCount", @"uri", @"folderName", @"folderId", @"folderUri", @"parentFolderUri", @"owner", @"documents", @"recipients", @"transactionId", @"status", @"documentsUri", @"recipientsUri", @"asynchronous", @"envelopeUri", @"emailSubject", @"emailBlurb", @"envelopeId", @"signingLocation", @"customFieldsUri", @"envelopeIdStamping", @"authoritativeCopy", @"notification", @"notificationUri", @"enforceSignerVisibility", @"enableWetSign", @"allowMarkup", @"allowReassign", @"createdDateTime", @"lastModifiedDateTime", @"deliveredDateTime", @"sentDateTime", @"completedDateTime", @"voidedDateTime", @"voidedReason", @"deletedDateTime", @"declinedDateTime", @"statusChangedDateTime", @"documentsCombinedUri", @"certificateUri", @"templatesUri", @"messageLock", @"recipientsLock", @"brandLock", @"brandId", @"useDisclosure", @"emailSettings", @"purgeState", @"lockInformation", @"is21CFRPart11", @"isUniversalSignatureEnvelope"];

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
