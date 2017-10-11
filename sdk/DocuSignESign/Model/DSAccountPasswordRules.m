#import "DSAccountPasswordRules.h"

@implementation DSAccountPasswordRules

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"expirePassword": @"expirePassword", @"expirePasswordDays": @"expirePasswordDays", @"expirePasswordDaysMetadata": @"expirePasswordDaysMetadata", @"lockoutDurationMinutes": @"lockoutDurationMinutes", @"lockoutDurationMinutesMetadata": @"lockoutDurationMinutesMetadata", @"lockoutDurationType": @"lockoutDurationType", @"lockoutDurationTypeMetadata": @"lockoutDurationTypeMetadata", @"minimumPasswordAgeDays": @"minimumPasswordAgeDays", @"minimumPasswordAgeDaysMetadata": @"minimumPasswordAgeDaysMetadata", @"minimumPasswordLength": @"minimumPasswordLength", @"minimumPasswordLengthMetadata": @"minimumPasswordLengthMetadata", @"passwordIncludeDigit": @"passwordIncludeDigit", @"passwordIncludeDigitOrSpecialCharacter": @"passwordIncludeDigitOrSpecialCharacter", @"passwordIncludeLowerCase": @"passwordIncludeLowerCase", @"passwordIncludeSpecialCharacter": @"passwordIncludeSpecialCharacter", @"passwordIncludeUpperCase": @"passwordIncludeUpperCase", @"passwordStrengthType": @"passwordStrengthType", @"passwordStrengthTypeMetadata": @"passwordStrengthTypeMetadata", @"questionsRequired": @"questionsRequired", @"questionsRequiredMetadata": @"questionsRequiredMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"expirePassword", @"expirePasswordDays", @"expirePasswordDaysMetadata", @"lockoutDurationMinutes", @"lockoutDurationMinutesMetadata", @"lockoutDurationType", @"lockoutDurationTypeMetadata", @"minimumPasswordAgeDays", @"minimumPasswordAgeDaysMetadata", @"minimumPasswordLength", @"minimumPasswordLengthMetadata", @"passwordIncludeDigit", @"passwordIncludeDigitOrSpecialCharacter", @"passwordIncludeLowerCase", @"passwordIncludeSpecialCharacter", @"passwordIncludeUpperCase", @"passwordStrengthType", @"passwordStrengthTypeMetadata", @"questionsRequired", @"questionsRequiredMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
