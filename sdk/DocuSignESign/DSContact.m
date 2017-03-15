#import "DSContact.h"

@implementation DSContact

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"contactId": @"contactId", @"contactUri": @"contactUri", @"emails": @"emails", @"errorDetails": @"errorDetails", @"name": @"name", @"organization": @"organization", @"shared": @"shared", @"signingGroup": @"signingGroup", @"signingGroupName": @"signingGroupName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contactId", @"contactUri", @"emails", @"errorDetails", @"name", @"organization", @"shared", @"signingGroup", @"signingGroupName"];
  return [optionalProperties containsObject:propertyName];
}

@end
