#import <DSESExternalDocumentSources.h>

@implementation DSESExternalDocumentSources

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"boxnetEnabled": @"boxnetEnabled", @"boxnetMetadata": @"boxnetMetadata", @"dropboxEnabled": @"dropboxEnabled", @"dropboxMetadata": @"dropboxMetadata", @"googleDriveEnabled": @"googleDriveEnabled", @"googleDriveMetadata": @"googleDriveMetadata", @"oneDriveEnabled": @"oneDriveEnabled", @"oneDriveMetadata": @"oneDriveMetadata", @"salesforceEnabled": @"salesforceEnabled", @"salesforceMetadata": @"salesforceMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"boxnetEnabled", @"boxnetMetadata", @"dropboxEnabled", @"dropboxMetadata", @"googleDriveEnabled", @"googleDriveMetadata", @"oneDriveEnabled", @"oneDriveMetadata", @"salesforceEnabled", @"salesforceMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
