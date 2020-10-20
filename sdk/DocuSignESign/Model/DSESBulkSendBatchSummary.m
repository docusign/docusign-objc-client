#import <DSESBulkSendBatchSummary.h>

@implementation DSESBulkSendBatchSummary

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"batchId": @"batchId", @"batchName": @"batchName", @"batchSize": @"batchSize", @"batchUri": @"batchUri", @"failed": @"failed", @"queued": @"queued", @"sent": @"sent", @"submittedDate": @"submittedDate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"batchId", @"batchName", @"batchSize", @"batchUri", @"failed", @"queued", @"sent", @"submittedDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
