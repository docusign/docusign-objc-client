#import <DSESAccountSignatureDefinition.h>

@implementation DSESAccountSignatureDefinition

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"dateStampProperties": @"dateStampProperties", @"disallowUserResizeStamp": @"disallowUserResizeStamp", @"externalID": @"externalID", @"imageType": @"imageType", @"isDefault": @"isDefault", @"nrdsId": @"nrdsId", @"nrdsLastName": @"nrdsLastName", @"phoneticName": @"phoneticName", @"signatureFont": @"signatureFont", @"signatureGroups": @"signatureGroups", @"signatureId": @"signatureId", @"signatureInitials": @"signatureInitials", @"signatureName": @"signatureName", @"signatureUsers": @"signatureUsers", @"stampFormat": @"stampFormat", @"stampSizeMM": @"stampSizeMM" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dateStampProperties", @"disallowUserResizeStamp", @"externalID", @"imageType", @"isDefault", @"nrdsId", @"nrdsLastName", @"phoneticName", @"signatureFont", @"signatureGroups", @"signatureId", @"signatureInitials", @"signatureName", @"signatureUsers", @"stampFormat", @"stampSizeMM"];
  return [optionalProperties containsObject:propertyName];
}

@end
