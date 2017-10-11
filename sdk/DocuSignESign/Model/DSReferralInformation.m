#import "DSReferralInformation.h"

@implementation DSReferralInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"advertisementId": @"advertisementId", @"enableSupport": @"enableSupport", @"externalOrgId": @"externalOrgId", @"groupMemberId": @"groupMemberId", @"idType": @"idType", @"includedSeats": @"includedSeats", @"industry": @"industry", @"planStartMonth": @"planStartMonth", @"promoCode": @"promoCode", @"publisherId": @"publisherId", @"referralCode": @"referralCode", @"referrerName": @"referrerName", @"saleDiscountAmount": @"saleDiscountAmount", @"saleDiscountFixedAmount": @"saleDiscountFixedAmount", @"saleDiscountPercent": @"saleDiscountPercent", @"saleDiscountPeriods": @"saleDiscountPeriods", @"saleDiscountSeatPriceOverride": @"saleDiscountSeatPriceOverride", @"shopperId": @"shopperId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"advertisementId", @"enableSupport", @"externalOrgId", @"groupMemberId", @"idType", @"includedSeats", @"industry", @"planStartMonth", @"promoCode", @"publisherId", @"referralCode", @"referrerName", @"saleDiscountAmount", @"saleDiscountFixedAmount", @"saleDiscountPercent", @"saleDiscountPeriods", @"saleDiscountSeatPriceOverride", @"shopperId"];
  return [optionalProperties containsObject:propertyName];
}

@end
