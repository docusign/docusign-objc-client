#import <DSESRecipientIdentityPhoneNumber.h>

@implementation DSESRecipientIdentityPhoneNumber

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"countryCode": @"countryCode", @"extension": @"extension", @"number": @"number" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"countryCode", @"extension", @"number"];
  return [optionalProperties containsObject:propertyName];
}

@end
