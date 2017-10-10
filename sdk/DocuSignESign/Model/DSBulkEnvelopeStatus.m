#import "DSBulkEnvelopeStatus.h"

@implementation DSBulkEnvelopeStatus

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"batchId": @"batchId", @"batchSize": @"batchSize", @"bulkEnvelopes": @"bulkEnvelopes", @"bulkEnvelopesBatchUri": @"bulkEnvelopesBatchUri", @"endPosition": @"endPosition", @"failed": @"failed", @"nextUri": @"nextUri", @"previousUri": @"previousUri", @"queued": @"queued", @"resultSetSize": @"resultSetSize", @"sent": @"sent", @"startPosition": @"startPosition", @"submittedDate": @"submittedDate", @"totalSetSize": @"totalSetSize" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"batchId", @"batchSize", @"bulkEnvelopes", @"bulkEnvelopesBatchUri", @"endPosition", @"failed", @"nextUri", @"previousUri", @"queued", @"resultSetSize", @"sent", @"startPosition", @"submittedDate", @"totalSetSize"];
  return [optionalProperties containsObject:propertyName];
}

@end
