#import <DSESJurisdiction.h>

@implementation DSESJurisdiction

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"allowSystemCreatedSeal": @"allowSystemCreatedSeal", @"allowUserUploadedSeal": @"allowUserUploadedSeal", @"commissionIdInSeal": @"commissionIdInSeal", @"county": @"county", @"countyInSeal": @"countyInSeal", @"enabled": @"enabled", @"jurisdictionId": @"jurisdictionId", @"name": @"name", @"notaryPublicInSeal": @"notaryPublicInSeal", @"stateNameInSeal": @"stateNameInSeal" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowSystemCreatedSeal", @"allowUserUploadedSeal", @"commissionIdInSeal", @"county", @"countyInSeal", @"enabled", @"jurisdictionId", @"name", @"notaryPublicInSeal", @"stateNameInSeal"];
  return [optionalProperties containsObject:propertyName];
}

@end
