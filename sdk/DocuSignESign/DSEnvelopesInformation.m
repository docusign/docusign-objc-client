#import "DSEnvelopesInformation.h"

@implementation DSEnvelopesInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"endPosition": @"endPosition", @"envelopes": @"envelopes", @"envelopeTransactionStatuses": @"envelopeTransactionStatuses", @"nextUri": @"nextUri", @"previousUri": @"previousUri", @"resultSetSize": @"resultSetSize", @"startPosition": @"startPosition", @"totalSetSize": @"totalSetSize" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"endPosition", @"envelopes", @"envelopeTransactionStatuses", @"nextUri", @"previousUri", @"resultSetSize", @"startPosition", @"totalSetSize"];
  return [optionalProperties containsObject:propertyName];
}

@end
