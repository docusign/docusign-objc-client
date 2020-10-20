#import <DSESDirectDebitProcessorInformation.h>

@implementation DSESDirectDebitProcessorInformation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bankBranchCode": @"bankBranchCode", @"bankCheckDigit": @"bankCheckDigit", @"bankCode": @"bankCode", @"bankName": @"bankName", @"bankTransferAccountName": @"bankTransferAccountName", @"bankTransferAccountNumber": @"bankTransferAccountNumber", @"bankTransferType": @"bankTransferType", @"country": @"country", @"email": @"email", @"firstName": @"firstName", @"iBAN": @"iBAN", @"lastName": @"lastName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bankBranchCode", @"bankCheckDigit", @"bankCode", @"bankName", @"bankTransferAccountName", @"bankTransferAccountNumber", @"bankTransferType", @"country", @"email", @"firstName", @"iBAN", @"lastName"];
  return [optionalProperties containsObject:propertyName];
}

@end
