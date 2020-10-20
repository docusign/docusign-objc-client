#import <DSESBulkSendBatchSummaries.h>

@implementation DSESBulkSendBatchSummaries

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"batchSizeLimit": @"batchSizeLimit", @"bulkBatchSummaries": @"bulkBatchSummaries", @"endPosition": @"endPosition", @"nextUri": @"nextUri", @"previousUri": @"previousUri", @"queueLimit": @"queueLimit", @"resultSetSize": @"resultSetSize", @"startPosition": @"startPosition", @"totalQueued": @"totalQueued", @"totalSetSize": @"totalSetSize" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"batchSizeLimit", @"bulkBatchSummaries", @"endPosition", @"nextUri", @"previousUri", @"queueLimit", @"resultSetSize", @"startPosition", @"totalQueued", @"totalSetSize"];
  return [optionalProperties containsObject:propertyName];
}

@end
