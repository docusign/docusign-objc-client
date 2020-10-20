#import <DSESPaymentGatewayAccount.h>

@implementation DSESPaymentGatewayAccount

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"allowCustomMetadata": @"allowCustomMetadata", @"config": @"config", @"displayName": @"displayName", @"isEnabled": @"isEnabled", @"isLegacy": @"isLegacy", @"lastModified": @"lastModified", @"paymentGateway": @"paymentGateway", @"paymentGatewayAccountId": @"paymentGatewayAccountId", @"paymentGatewayDisplayName": @"paymentGatewayDisplayName", @"payPalLegacySettings": @"payPalLegacySettings", @"supportedCurrencies": @"supportedCurrencies", @"supportedPaymentMethods": @"supportedPaymentMethods", @"supportedPaymentMethodsWithOptions": @"supportedPaymentMethodsWithOptions", @"zeroDecimalCurrencies": @"zeroDecimalCurrencies" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowCustomMetadata", @"config", @"displayName", @"isEnabled", @"isLegacy", @"lastModified", @"paymentGateway", @"paymentGatewayAccountId", @"paymentGatewayDisplayName", @"payPalLegacySettings", @"supportedCurrencies", @"supportedPaymentMethods", @"supportedPaymentMethodsWithOptions", @"zeroDecimalCurrencies"];
  return [optionalProperties containsObject:propertyName];
}

@end
