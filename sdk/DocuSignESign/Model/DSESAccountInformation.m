#import <DSESAccountInformation.h>

@implementation DSESAccountInformation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountIdGuid": @"accountIdGuid", @"accountName": @"accountName", @"accountSettings": @"accountSettings", @"allowTransactionRooms": @"allowTransactionRooms", @"billingPeriodDaysRemaining": @"billingPeriodDaysRemaining", @"billingPeriodEndDate": @"billingPeriodEndDate", @"billingPeriodEnvelopesAllowed": @"billingPeriodEnvelopesAllowed", @"billingPeriodEnvelopesSent": @"billingPeriodEnvelopesSent", @"billingPeriodStartDate": @"billingPeriodStartDate", @"billingProfile": @"billingProfile", @"canUpgrade": @"canUpgrade", @"connectPermission": @"connectPermission", @"createdDate": @"createdDate", @"currencyCode": @"currencyCode", @"currentPlanId": @"currentPlanId", @"distributorCode": @"distributorCode", @"docuSignLandingUrl": @"docuSignLandingUrl", @"dssValues": @"dssValues", @"envelopeSendingBlocked": @"envelopeSendingBlocked", @"envelopeUnitPrice": @"envelopeUnitPrice", @"externalAccountId": @"externalAccountId", @"forgottenPasswordQuestionsCount": @"forgottenPasswordQuestionsCount", @"isDowngrade": @"isDowngrade", @"paymentMethod": @"paymentMethod", @"planClassification": @"planClassification", @"planEndDate": @"planEndDate", @"planName": @"planName", @"planStartDate": @"planStartDate", @"recipientDomains": @"recipientDomains", @"seatsAllowed": @"seatsAllowed", @"seatsInUse": @"seatsInUse", @"status21CFRPart11": @"status21CFRPart11", @"suspensionDate": @"suspensionDate", @"suspensionStatus": @"suspensionStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountIdGuid", @"accountName", @"accountSettings", @"allowTransactionRooms", @"billingPeriodDaysRemaining", @"billingPeriodEndDate", @"billingPeriodEnvelopesAllowed", @"billingPeriodEnvelopesSent", @"billingPeriodStartDate", @"billingProfile", @"canUpgrade", @"connectPermission", @"createdDate", @"currencyCode", @"currentPlanId", @"distributorCode", @"docuSignLandingUrl", @"dssValues", @"envelopeSendingBlocked", @"envelopeUnitPrice", @"externalAccountId", @"forgottenPasswordQuestionsCount", @"isDowngrade", @"paymentMethod", @"planClassification", @"planEndDate", @"planName", @"planStartDate", @"recipientDomains", @"seatsAllowed", @"seatsInUse", @"status21CFRPart11", @"suspensionDate", @"suspensionStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
