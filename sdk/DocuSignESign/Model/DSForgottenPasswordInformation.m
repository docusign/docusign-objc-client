#import "DSForgottenPasswordInformation.h"

@implementation DSForgottenPasswordInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"forgottenPasswordAnswer1": @"forgottenPasswordAnswer1", @"forgottenPasswordAnswer2": @"forgottenPasswordAnswer2", @"forgottenPasswordAnswer3": @"forgottenPasswordAnswer3", @"forgottenPasswordAnswer4": @"forgottenPasswordAnswer4", @"forgottenPasswordQuestion1": @"forgottenPasswordQuestion1", @"forgottenPasswordQuestion2": @"forgottenPasswordQuestion2", @"forgottenPasswordQuestion3": @"forgottenPasswordQuestion3", @"forgottenPasswordQuestion4": @"forgottenPasswordQuestion4" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"forgottenPasswordAnswer1", @"forgottenPasswordAnswer2", @"forgottenPasswordAnswer3", @"forgottenPasswordAnswer4", @"forgottenPasswordQuestion1", @"forgottenPasswordQuestion2", @"forgottenPasswordQuestion3", @"forgottenPasswordQuestion4"];
  return [optionalProperties containsObject:propertyName];
}

@end
