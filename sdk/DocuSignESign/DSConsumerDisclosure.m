#import "DSConsumerDisclosure.h"

@implementation DSConsumerDisclosure

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accountEsignId": @"accountEsignId", @"allowCDWithdraw": @"allowCDWithdraw", @"changeEmail": @"changeEmail", @"changeEmailOther": @"changeEmailOther", @"companyName": @"companyName", @"companyPhone": @"companyPhone", @"varCopyCostPerPage": @"copyCostPerPage", @"varCopyFeeCollectionMethod": @"copyFeeCollectionMethod", @"varCopyRequestEmail": @"copyRequestEmail", @"custom": @"custom", @"enableEsign": @"enableEsign", @"esignAgreement": @"esignAgreement", @"esignText": @"esignText", @"languageCode": @"languageCode", @"mustAgreeToEsign": @"mustAgreeToEsign", @"pdfId": @"pdfId", @"useBrand": @"useBrand", @"useConsumerDisclosureWithinAccount": @"useConsumerDisclosureWithinAccount", @"withdrawAddressLine1": @"withdrawAddressLine1", @"withdrawAddressLine2": @"withdrawAddressLine2", @"withdrawByEmail": @"withdrawByEmail", @"withdrawByMail": @"withdrawByMail", @"withdrawByPhone": @"withdrawByPhone", @"withdrawCity": @"withdrawCity", @"withdrawConsequences": @"withdrawConsequences", @"withdrawEmail": @"withdrawEmail", @"withdrawOther": @"withdrawOther", @"withdrawPhone": @"withdrawPhone", @"withdrawPostalCode": @"withdrawPostalCode", @"withdrawState": @"withdrawState" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountEsignId", @"allowCDWithdraw", @"changeEmail", @"changeEmailOther", @"companyName", @"companyPhone", @"varCopyCostPerPage", @"varCopyFeeCollectionMethod", @"varCopyRequestEmail", @"custom", @"enableEsign", @"esignAgreement", @"esignText", @"languageCode", @"mustAgreeToEsign", @"pdfId", @"useBrand", @"useConsumerDisclosureWithinAccount", @"withdrawAddressLine1", @"withdrawAddressLine2", @"withdrawByEmail", @"withdrawByMail", @"withdrawByPhone", @"withdrawCity", @"withdrawConsequences", @"withdrawEmail", @"withdrawOther", @"withdrawPhone", @"withdrawPostalCode", @"withdrawState"];
  return [optionalProperties containsObject:propertyName];
}

@end
