#import "DSBillingPaymentItem.h"

@implementation DSBillingPaymentItem

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"amount": @"amount", @"_description": @"description", @"paymentDate": @"paymentDate", @"paymentId": @"paymentId", @"paymentNumber": @"paymentNumber" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"amount", @"_description", @"paymentDate", @"paymentId", @"paymentNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end
