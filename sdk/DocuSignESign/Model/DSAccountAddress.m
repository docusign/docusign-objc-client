#import "DSAccountAddress.h"

@implementation DSAccountAddress

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"address1": @"address1", @"address2": @"address2", @"city": @"city", @"country": @"country", @"email": @"email", @"fax": @"fax", @"firstName": @"firstName", @"lastName": @"lastName", @"phone": @"phone", @"postalCode": @"postalCode", @"state": @"state", @"supportedCountries": @"supportedCountries" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address1", @"address2", @"city", @"country", @"email", @"fax", @"firstName", @"lastName", @"phone", @"postalCode", @"state", @"supportedCountries"];
  return [optionalProperties containsObject:propertyName];
}

@end
