#import <DSESWorkspace.h>

@implementation DSESWorkspace

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"billableAccountId": @"billableAccountId", @"callerInformation": @"callerInformation", @"created": @"created", @"createdByInformation": @"createdByInformation", @"lastModified": @"lastModified", @"lastModifiedByInformation": @"lastModifiedByInformation", @"settings": @"settings", @"status": @"status", @"workspaceBaseUrl": @"workspaceBaseUrl", @"workspaceDescription": @"workspaceDescription", @"workspaceId": @"workspaceId", @"workspaceName": @"workspaceName", @"workspaceUri": @"workspaceUri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"billableAccountId", @"callerInformation", @"created", @"createdByInformation", @"lastModified", @"lastModifiedByInformation", @"settings", @"status", @"workspaceBaseUrl", @"workspaceDescription", @"workspaceId", @"workspaceName", @"workspaceUri"];
  return [optionalProperties containsObject:propertyName];
}

@end
