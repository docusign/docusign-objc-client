#import <DSESAccessCodeFormat.h>

@implementation DSESAccessCodeFormat

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"formatRequired": @"formatRequired", @"formatRequiredMetadata": @"formatRequiredMetadata", @"letterRequired": @"letterRequired", @"letterRequiredMetadata": @"letterRequiredMetadata", @"minimumLength": @"minimumLength", @"minimumLengthMetadata": @"minimumLengthMetadata", @"numberRequired": @"numberRequired", @"numberRequiredMetadata": @"numberRequiredMetadata", @"specialCharacterRequired": @"specialCharacterRequired", @"specialCharacterRequiredMetadata": @"specialCharacterRequiredMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"formatRequired", @"formatRequiredMetadata", @"letterRequired", @"letterRequiredMetadata", @"minimumLength", @"minimumLengthMetadata", @"numberRequired", @"numberRequiredMetadata", @"specialCharacterRequired", @"specialCharacterRequiredMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
