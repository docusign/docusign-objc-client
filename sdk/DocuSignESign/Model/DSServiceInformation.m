#import "DSServiceInformation.h"

@implementation DSServiceInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"buildBranch": @"buildBranch", @"buildBranchDeployedDateTime": @"buildBranchDeployedDateTime", @"buildSHA": @"buildSHA", @"buildVersion": @"buildVersion", @"linkedSites": @"linkedSites", @"serviceVersions": @"serviceVersions" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"buildBranch", @"buildBranchDeployedDateTime", @"buildSHA", @"buildVersion", @"linkedSites", @"serviceVersions"];
  return [optionalProperties containsObject:propertyName];
}

@end
