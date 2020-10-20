#import <DSESConnectSalesforceObject.h>

@implementation DSESConnectSalesforceObject

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"active": @"active", @"_description": @"description", @"_id": @"id", @"insert": @"insert", @"onCompleteOnly": @"onCompleteOnly", @"selectFields": @"selectFields", @"sfObject": @"sfObject", @"sfObjectName": @"sfObjectName", @"updateFields": @"updateFields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"active", @"_description", @"_id", @"insert", @"onCompleteOnly", @"selectFields", @"sfObject", @"sfObjectName", @"updateFields"];
  return [optionalProperties containsObject:propertyName];
}

@end
