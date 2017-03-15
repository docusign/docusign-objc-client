#import "DSBillingInvoice.h"

@implementation DSBillingInvoice

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"amount": @"amount", @"balance": @"balance", @"dueDate": @"dueDate", @"invoiceId": @"invoiceId", @"invoiceItems": @"invoiceItems", @"invoiceNumber": @"invoiceNumber", @"invoiceUri": @"invoiceUri", @"nonTaxableAmount": @"nonTaxableAmount", @"pdfAvailable": @"pdfAvailable", @"taxableAmount": @"taxableAmount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"amount", @"balance", @"dueDate", @"invoiceId", @"invoiceItems", @"invoiceNumber", @"invoiceUri", @"nonTaxableAmount", @"pdfAvailable", @"taxableAmount"];
  return [optionalProperties containsObject:propertyName];
}

@end
