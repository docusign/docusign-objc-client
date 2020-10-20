#import <DSESPaymentDetails.h>

@implementation DSESPaymentDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"allowedPaymentMethods": @"allowedPaymentMethods", @"chargeId": @"chargeId", @"currencyCode": @"currencyCode", @"currencyCodeMetadata": @"currencyCodeMetadata", @"customerId": @"customerId", @"customMetadata": @"customMetadata", @"customMetadataRequired": @"customMetadataRequired", @"gatewayAccountId": @"gatewayAccountId", @"gatewayAccountIdMetadata": @"gatewayAccountIdMetadata", @"gatewayDisplayName": @"gatewayDisplayName", @"gatewayName": @"gatewayName", @"lineItems": @"lineItems", @"paymentOption": @"paymentOption", @"paymentSourceId": @"paymentSourceId", @"status": @"status", @"total": @"total" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowedPaymentMethods", @"chargeId", @"currencyCode", @"currencyCodeMetadata", @"customerId", @"customMetadata", @"customMetadataRequired", @"gatewayAccountId", @"gatewayAccountIdMetadata", @"gatewayDisplayName", @"gatewayName", @"lineItems", @"paymentOption", @"paymentSourceId", @"status", @"total"];
  return [optionalProperties containsObject:propertyName];
}

@end
