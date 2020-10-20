#import <DSESWorkspaceItem.h>

@implementation DSESWorkspaceItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"callerAuthorization": @"callerAuthorization", @"contentType": @"contentType", @"created": @"created", @"createdById": @"createdById", @"createdByInformation": @"createdByInformation", @"extension": @"extension", @"fileSize": @"fileSize", @"fileUri": @"fileUri", @"_id": @"id", @"isPublic": @"isPublic", @"lastModified": @"lastModified", @"lastModifiedById": @"lastModifiedById", @"lastModifiedByInformation": @"lastModifiedByInformation", @"name": @"name", @"pageCount": @"pageCount", @"parentFolderId": @"parentFolderId", @"parentFolderUri": @"parentFolderUri", @"sha256": @"sha256", @"thumbHeight": @"thumbHeight", @"thumbnail": @"thumbnail", @"thumbWidth": @"thumbWidth", @"type": @"type", @"uri": @"uri", @"userAuthorization": @"userAuthorization" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"callerAuthorization", @"contentType", @"created", @"createdById", @"createdByInformation", @"extension", @"fileSize", @"fileUri", @"_id", @"isPublic", @"lastModified", @"lastModifiedById", @"lastModifiedByInformation", @"name", @"pageCount", @"parentFolderId", @"parentFolderUri", @"sha256", @"thumbHeight", @"thumbnail", @"thumbWidth", @"type", @"uri", @"userAuthorization"];
  return [optionalProperties containsObject:propertyName];
}

@end
