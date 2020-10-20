#import <DSESFolderSharedItem.h>

@implementation DSESFolderSharedItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"errorDetails": @"errorDetails", @"folderId": @"folderId", @"name": @"name", @"owner": @"owner", @"parentFolderId": @"parentFolderId", @"parentFolderUri": @"parentFolderUri", @"shared": @"shared", @"sharedGroups": @"sharedGroups", @"sharedUsers": @"sharedUsers", @"uri": @"uri", @"user": @"user" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"errorDetails", @"folderId", @"name", @"owner", @"parentFolderId", @"parentFolderUri", @"shared", @"sharedGroups", @"sharedUsers", @"uri", @"user"];
  return [optionalProperties containsObject:propertyName];
}

@end
