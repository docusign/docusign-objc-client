#import <DSESStamp.h>

@implementation DSESStamp

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"adoptedDateTime": @"adoptedDateTime", @"createdDateTime": @"createdDateTime", @"customField": @"customField", @"dateStampProperties": @"dateStampProperties", @"disallowUserResizeStamp": @"disallowUserResizeStamp", @"errorDetails": @"errorDetails", @"externalID": @"externalID", @"imageBase64": @"imageBase64", @"imageType": @"imageType", @"lastModifiedDateTime": @"lastModifiedDateTime", @"phoneticName": @"phoneticName", @"signatureName": @"signatureName", @"stampFormat": @"stampFormat", @"stampImageUri": @"stampImageUri", @"stampSizeMM": @"stampSizeMM", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"adoptedDateTime", @"createdDateTime", @"customField", @"dateStampProperties", @"disallowUserResizeStamp", @"errorDetails", @"externalID", @"imageBase64", @"imageType", @"lastModifiedDateTime", @"phoneticName", @"signatureName", @"stampFormat", @"stampImageUri", @"stampSizeMM", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
