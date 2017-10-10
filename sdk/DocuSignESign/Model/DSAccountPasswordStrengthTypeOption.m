#import "DSAccountPasswordStrengthTypeOption.h"

@implementation DSAccountPasswordStrengthTypeOption

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"minimumLength": @"minimumLength", @"name": @"name", @"passwordIncludeDigit": @"passwordIncludeDigit", @"passwordIncludeDigitOrSpecialCharacter": @"passwordIncludeDigitOrSpecialCharacter", @"passwordIncludeLowerCase": @"passwordIncludeLowerCase", @"passwordIncludeSpecialCharacter": @"passwordIncludeSpecialCharacter", @"passwordIncludeUpperCase": @"passwordIncludeUpperCase" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"minimumLength", @"name", @"passwordIncludeDigit", @"passwordIncludeDigitOrSpecialCharacter", @"passwordIncludeLowerCase", @"passwordIncludeSpecialCharacter", @"passwordIncludeUpperCase"];
  return [optionalProperties containsObject:propertyName];
}

@end
