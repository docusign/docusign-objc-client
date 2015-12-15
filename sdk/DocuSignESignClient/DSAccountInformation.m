#import "DSAccountInformation.h"

@implementation DSAccountInformation

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"currentPlanId": @"currentPlanId", @"planName": @"planName", @"planClassification": @"planClassification", @"planStartDate": @"planStartDate", @"planEndDate": @"planEndDate", @"billingPeriodStartDate": @"billingPeriodStartDate", @"billingPeriodEndDate": @"billingPeriodEndDate", @"billingPeriodEnvelopesSent": @"billingPeriodEnvelopesSent", @"billingPeriodEnvelopesAllowed": @"billingPeriodEnvelopesAllowed", @"billingPeriodDaysRemaining": @"billingPeriodDaysRemaining", @"canUpgrade": @"canUpgrade", @"canCancelRenewal": @"canCancelRenewal", @"envelopeSendingBlocked": @"envelopeSendingBlocked", @"envelopeUnitPrice": @"envelopeUnitPrice", @"suspensionStatus": @"suspensionStatus", @"suspensionDate": @"suspensionDate", @"accountName": @"accountName", @"connectPermission": @"connectPermission", @"docuSignLandingUrl": @"docuSignLandingUrl", @"distributorCode": @"distributorCode", @"accountIdGuid": @"accountIdGuid", @"currencyCode": @"currencyCode", @"forgottenPasswordQuestionsCount": @"forgottenPasswordQuestionsCount", @"paymentMethod": @"paymentMethod", @"seatsAllowed": @"seatsAllowed", @"seatsInUse": @"seatsInUse", @"createdDate": @"createdDate", @"isDowngrade": @"isDowngrade", @"billingProfile": @"billingProfile", @"status21CFRPart11": @"status21CFRPart11" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"currentPlanId", @"planName", @"planClassification", @"planStartDate", @"planEndDate", @"billingPeriodStartDate", @"billingPeriodEndDate", @"billingPeriodEnvelopesSent", @"billingPeriodEnvelopesAllowed", @"billingPeriodDaysRemaining", @"canUpgrade", @"canCancelRenewal", @"envelopeSendingBlocked", @"envelopeUnitPrice", @"suspensionStatus", @"suspensionDate", @"accountName", @"connectPermission", @"docuSignLandingUrl", @"distributorCode", @"accountIdGuid", @"currencyCode", @"forgottenPasswordQuestionsCount", @"paymentMethod", @"seatsAllowed", @"seatsInUse", @"createdDate", @"isDowngrade", @"billingProfile", @"status21CFRPart11"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
