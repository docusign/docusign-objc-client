#import "DSUsersResponse.h"

@implementation DSUsersResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"endPosition": @"endPosition", @"nextUri": @"nextUri", @"previousUri": @"previousUri", @"resultSetSize": @"resultSetSize", @"startPosition": @"startPosition", @"totalSetSize": @"totalSetSize", @"users": @"users" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"endPosition", @"nextUri", @"previousUri", @"resultSetSize", @"startPosition", @"totalSetSize", @"users"];
  return [optionalProperties containsObject:propertyName];
}

@end
