#import "DSPurchasedEnvelopesInformation.h"

@implementation DSPurchasedEnvelopesInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"amount": @"amount", @"appName": @"appName", @"currencyCode": @"currencyCode", @"platform": @"platform", @"productId": @"productId", @"quantity": @"quantity", @"receiptData": @"receiptData", @"storeName": @"storeName", @"transactionId": @"transactionId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"amount", @"appName", @"currencyCode", @"platform", @"productId", @"quantity", @"receiptData", @"storeName", @"transactionId"];
  return [optionalProperties containsObject:propertyName];
}

@end
