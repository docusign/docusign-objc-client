#import <DSESAccountSignature.h>

@implementation DSESAccountSignature

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"adoptedDateTime": @"adoptedDateTime", @"createdDateTime": @"createdDateTime", @"customField": @"customField", @"dateStampProperties": @"dateStampProperties", @"disallowUserResizeStamp": @"disallowUserResizeStamp", @"errorDetails": @"errorDetails", @"externalID": @"externalID", @"imageBase64": @"imageBase64", @"imageType": @"imageType", @"initials150ImageId": @"initials150ImageId", @"initialsImageUri": @"initialsImageUri", @"isDefault": @"isDefault", @"lastModifiedDateTime": @"lastModifiedDateTime", @"nrdsId": @"nrdsId", @"nrdsLastName": @"nrdsLastName", @"nrdsStatus": @"nrdsStatus", @"phoneticName": @"phoneticName", @"signature150ImageId": @"signature150ImageId", @"signatureFont": @"signatureFont", @"signatureGroups": @"signatureGroups", @"signatureId": @"signatureId", @"signatureImageUri": @"signatureImageUri", @"signatureInitials": @"signatureInitials", @"signatureName": @"signatureName", @"signatureRights": @"signatureRights", @"signatureType": @"signatureType", @"signatureUsers": @"signatureUsers", @"stampFormat": @"stampFormat", @"stampImageUri": @"stampImageUri", @"stampSizeMM": @"stampSizeMM", @"stampType": @"stampType", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"adoptedDateTime", @"createdDateTime", @"customField", @"dateStampProperties", @"disallowUserResizeStamp", @"errorDetails", @"externalID", @"imageBase64", @"imageType", @"initials150ImageId", @"initialsImageUri", @"isDefault", @"lastModifiedDateTime", @"nrdsId", @"nrdsLastName", @"nrdsStatus", @"phoneticName", @"signature150ImageId", @"signatureFont", @"signatureGroups", @"signatureId", @"signatureImageUri", @"signatureInitials", @"signatureName", @"signatureRights", @"signatureType", @"signatureUsers", @"stampFormat", @"stampImageUri", @"stampSizeMM", @"stampType", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
