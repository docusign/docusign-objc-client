#import "DSAddressInformation.h"

@implementation DSAddressInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"city": @"city", @"country": @"country", @"fax": @"fax", @"phone": @"phone", @"state": @"state", @"street1": @"street1", @"street2": @"street2", @"zip": @"zip" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"city", @"country", @"fax", @"phone", @"state", @"street1", @"street2", @"zip"];
  return [optionalProperties containsObject:propertyName];
}

@end
