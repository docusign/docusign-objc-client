#import <DSESNotaryJurisdiction.h>

@implementation DSESNotaryJurisdiction

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"commissionExpiration": @"commissionExpiration", @"commissionId": @"commissionId", @"county": @"county", @"errorDetails": @"errorDetails", @"jurisdiction": @"jurisdiction", @"registeredName": @"registeredName", @"sealType": @"sealType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"commissionExpiration", @"commissionId", @"county", @"errorDetails", @"jurisdiction", @"registeredName", @"sealType"];
  return [optionalProperties containsObject:propertyName];
}

@end
