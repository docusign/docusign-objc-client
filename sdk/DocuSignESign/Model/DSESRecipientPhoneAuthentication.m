#import <DSESRecipientPhoneAuthentication.h>

@implementation DSESRecipientPhoneAuthentication

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"recipMayProvideNumber": @"recipMayProvideNumber", @"recipMayProvideNumberMetadata": @"recipMayProvideNumberMetadata", @"recordVoicePrint": @"recordVoicePrint", @"recordVoicePrintMetadata": @"recordVoicePrintMetadata", @"senderProvidedNumbers": @"senderProvidedNumbers", @"senderProvidedNumbersMetadata": @"senderProvidedNumbersMetadata", @"validateRecipProvidedNumber": @"validateRecipProvidedNumber", @"validateRecipProvidedNumberMetadata": @"validateRecipProvidedNumberMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"recipMayProvideNumber", @"recipMayProvideNumberMetadata", @"recordVoicePrint", @"recordVoicePrintMetadata", @"senderProvidedNumbers", @"senderProvidedNumbersMetadata", @"validateRecipProvidedNumber", @"validateRecipProvidedNumberMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
