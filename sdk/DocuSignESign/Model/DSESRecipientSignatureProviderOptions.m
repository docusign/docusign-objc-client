#import <DSESRecipientSignatureProviderOptions.h>

@implementation DSESRecipientSignatureProviderOptions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cpfNumber": @"cpfNumber", @"cpfNumberMetadata": @"cpfNumberMetadata", @"oneTimePassword": @"oneTimePassword", @"oneTimePasswordMetadata": @"oneTimePasswordMetadata", @"signerRole": @"signerRole", @"signerRoleMetadata": @"signerRoleMetadata", @"sms": @"sms", @"smsMetadata": @"smsMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cpfNumber", @"cpfNumberMetadata", @"oneTimePassword", @"oneTimePasswordMetadata", @"signerRole", @"signerRoleMetadata", @"sms", @"smsMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
