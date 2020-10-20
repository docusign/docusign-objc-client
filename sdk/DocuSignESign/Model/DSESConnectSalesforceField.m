#import <DSESConnectSalesforceField.h>

@implementation DSESConnectSalesforceField

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"dsAttribute": @"dsAttribute", @"dsLink": @"dsLink", @"dsNode": @"dsNode", @"_id": @"id", @"sfField": @"sfField", @"sfFieldName": @"sfFieldName", @"sfFolder": @"sfFolder", @"sfLockedValue": @"sfLockedValue" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dsAttribute", @"dsLink", @"dsNode", @"_id", @"sfField", @"sfFieldName", @"sfFolder", @"sfLockedValue"];
  return [optionalProperties containsObject:propertyName];
}

@end
