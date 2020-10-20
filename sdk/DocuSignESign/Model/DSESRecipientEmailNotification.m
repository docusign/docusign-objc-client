#import <DSESRecipientEmailNotification.h>

@implementation DSESRecipientEmailNotification

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"emailBody": @"emailBody", @"emailBodyMetadata": @"emailBodyMetadata", @"emailSubject": @"emailSubject", @"emailSubjectMetadata": @"emailSubjectMetadata", @"supportedLanguage": @"supportedLanguage", @"supportedLanguageMetadata": @"supportedLanguageMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"emailBody", @"emailBodyMetadata", @"emailSubject", @"emailSubjectMetadata", @"supportedLanguage", @"supportedLanguageMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
