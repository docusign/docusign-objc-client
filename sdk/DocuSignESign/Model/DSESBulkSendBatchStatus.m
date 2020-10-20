#import <DSESBulkSendBatchStatus.h>

@implementation DSESBulkSendBatchStatus

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"batchId": @"batchId", @"batchName": @"batchName", @"batchSize": @"batchSize", @"bulkErrors": @"bulkErrors", @"envelopeIdOrTemplateId": @"envelopeIdOrTemplateId", @"envelopesUri": @"envelopesUri", @"failed": @"failed", @"mailingListId": @"mailingListId", @"queued": @"queued", @"sent": @"sent", @"submittedDate": @"submittedDate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"batchId", @"batchName", @"batchSize", @"bulkErrors", @"envelopeIdOrTemplateId", @"envelopesUri", @"failed", @"mailingListId", @"queued", @"sent", @"submittedDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
