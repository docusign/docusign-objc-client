#import "DSAccountInformation.h"

@implementation DSAccountInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accountIdGuid": @"accountIdGuid", @"accountName": @"accountName", @"allowTransactionRooms": @"allowTransactionRooms", @"billingPeriodDaysRemaining": @"billingPeriodDaysRemaining", @"billingPeriodEndDate": @"billingPeriodEndDate", @"billingPeriodEnvelopesAllowed": @"billingPeriodEnvelopesAllowed", @"billingPeriodEnvelopesSent": @"billingPeriodEnvelopesSent", @"billingPeriodStartDate": @"billingPeriodStartDate", @"billingProfile": @"billingProfile", @"canCancelRenewal": @"canCancelRenewal", @"canUpgrade": @"canUpgrade", @"connectPermission": @"connectPermission", @"createdDate": @"createdDate", @"currencyCode": @"currencyCode", @"currentPlanId": @"currentPlanId", @"distributorCode": @"distributorCode", @"docuSignLandingUrl": @"docuSignLandingUrl", @"envelopeSendingBlocked": @"envelopeSendingBlocked", @"envelopeUnitPrice": @"envelopeUnitPrice", @"forgottenPasswordQuestionsCount": @"forgottenPasswordQuestionsCount", @"isDowngrade": @"isDowngrade", @"paymentMethod": @"paymentMethod", @"planClassification": @"planClassification", @"planEndDate": @"planEndDate", @"planName": @"planName", @"planStartDate": @"planStartDate", @"seatsAllowed": @"seatsAllowed", @"seatsInUse": @"seatsInUse", @"status21CFRPart11": @"status21CFRPart11", @"suspensionDate": @"suspensionDate", @"suspensionStatus": @"suspensionStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountIdGuid", @"accountName", @"allowTransactionRooms", @"billingPeriodDaysRemaining", @"billingPeriodEndDate", @"billingPeriodEnvelopesAllowed", @"billingPeriodEnvelopesSent", @"billingPeriodStartDate", @"billingProfile", @"canCancelRenewal", @"canUpgrade", @"connectPermission", @"createdDate", @"currencyCode", @"currentPlanId", @"distributorCode", @"docuSignLandingUrl", @"envelopeSendingBlocked", @"envelopeUnitPrice", @"forgottenPasswordQuestionsCount", @"isDowngrade", @"paymentMethod", @"planClassification", @"planEndDate", @"planName", @"planStartDate", @"seatsAllowed", @"seatsInUse", @"status21CFRPart11", @"suspensionDate", @"suspensionStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
