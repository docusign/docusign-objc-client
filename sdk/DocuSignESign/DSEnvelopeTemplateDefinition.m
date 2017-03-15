#import "DSEnvelopeTemplateDefinition.h"

@implementation DSEnvelopeTemplateDefinition

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"_description": @"description", @"folderId": @"folderId", @"folderName": @"folderName", @"folderUri": @"folderUri", @"lastModified": @"lastModified", @"lastModifiedBy": @"lastModifiedBy", @"name": @"name", @"varNewPassword": @"newPassword", @"owner": @"owner", @"pageCount": @"pageCount", @"parentFolderUri": @"parentFolderUri", @"password": @"password", @"shared": @"shared", @"templateId": @"templateId", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_description", @"folderId", @"folderName", @"folderUri", @"lastModified", @"lastModifiedBy", @"name", @"varNewPassword", @"owner", @"pageCount", @"parentFolderUri", @"password", @"shared", @"templateId", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
