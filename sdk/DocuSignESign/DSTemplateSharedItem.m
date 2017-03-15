#import "DSTemplateSharedItem.h"

@implementation DSTemplateSharedItem

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"errorDetails": @"errorDetails", @"owner": @"owner", @"shared": @"shared", @"sharedGroups": @"sharedGroups", @"sharedUsers": @"sharedUsers", @"templateId": @"templateId", @"templateName": @"templateName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"errorDetails", @"owner", @"shared", @"sharedGroups", @"sharedUsers", @"templateId", @"templateName"];
  return [optionalProperties containsObject:propertyName];
}

@end
