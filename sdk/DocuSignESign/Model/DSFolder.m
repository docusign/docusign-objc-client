#import "DSFolder.h"

@implementation DSFolder

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"errorDetails": @"errorDetails", @"filter": @"filter", @"folderId": @"folderId", @"folders": @"folders", @"name": @"name", @"ownerEmail": @"ownerEmail", @"ownerUserId": @"ownerUserId", @"ownerUserName": @"ownerUserName", @"parentFolderId": @"parentFolderId", @"parentFolderUri": @"parentFolderUri", @"type": @"type", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"errorDetails", @"filter", @"folderId", @"folders", @"name", @"ownerEmail", @"ownerUserId", @"ownerUserName", @"parentFolderId", @"parentFolderUri", @"type", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
