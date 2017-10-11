#import "DSWorkspaceFolderContents.h"

@implementation DSWorkspaceFolderContents

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"endPosition": @"endPosition", @"folder": @"folder", @"items": @"items", @"parentFolders": @"parentFolders", @"resultSetSize": @"resultSetSize", @"startPosition": @"startPosition", @"totalSetSize": @"totalSetSize", @"workspaceId": @"workspaceId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"endPosition", @"folder", @"items", @"parentFolders", @"resultSetSize", @"startPosition", @"totalSetSize", @"workspaceId"];
  return [optionalProperties containsObject:propertyName];
}

@end
