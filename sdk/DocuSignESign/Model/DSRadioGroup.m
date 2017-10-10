#import "DSRadioGroup.h"

@implementation DSRadioGroup

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"conditionalParentLabel": @"conditionalParentLabel", @"conditionalParentValue": @"conditionalParentValue", @"documentId": @"documentId", @"groupName": @"groupName", @"radios": @"radios", @"recipientId": @"recipientId", @"requireAll": @"requireAll", @"requireInitialOnSharedChange": @"requireInitialOnSharedChange", @"shared": @"shared" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"conditionalParentLabel", @"conditionalParentValue", @"documentId", @"groupName", @"radios", @"recipientId", @"requireAll", @"requireInitialOnSharedChange", @"shared"];
  return [optionalProperties containsObject:propertyName];
}

@end
