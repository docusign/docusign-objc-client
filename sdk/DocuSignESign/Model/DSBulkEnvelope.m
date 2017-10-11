#import "DSBulkEnvelope.h"

@implementation DSBulkEnvelope

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"bulkRecipientRow": @"bulkRecipientRow", @"bulkStatus": @"bulkStatus", @"email": @"email", @"envelopeId": @"envelopeId", @"envelopeUri": @"envelopeUri", @"errorDetails": @"errorDetails", @"name": @"name", @"submittedDateTime": @"submittedDateTime", @"transactionId": @"transactionId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bulkRecipientRow", @"bulkStatus", @"email", @"envelopeId", @"envelopeUri", @"errorDetails", @"name", @"submittedDateTime", @"transactionId"];
  return [optionalProperties containsObject:propertyName];
}

@end
