#import "DSServiceInformation.h"

@implementation DSServiceInformation

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"serviceVersions": @"serviceVersions", @"buildVersion": @"buildVersion", @"buildBranch": @"buildBranch", @"buildSHA": @"buildSHA", @"buildBranchDeployedDateTime": @"buildBranchDeployedDateTime", @"linkedSites": @"linkedSites" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"serviceVersions", @"buildVersion", @"buildBranch", @"buildSHA", @"buildBranchDeployedDateTime", @"linkedSites"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
