#import "DSAccountSignatureProvider.h"

@implementation DSAccountSignatureProvider

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"isRequired": @"isRequired", @"priority": @"priority", @"signatureProviderDisplayName": @"signatureProviderDisplayName", @"signatureProviderId": @"signatureProviderId", @"signatureProviderName": @"signatureProviderName", @"signatureProviderOptionsMetadata": @"signatureProviderOptionsMetadata", @"signatureProviderRequiredOptions": @"signatureProviderRequiredOptions" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"isRequired", @"priority", @"signatureProviderDisplayName", @"signatureProviderId", @"signatureProviderName", @"signatureProviderOptionsMetadata", @"signatureProviderRequiredOptions"];
  return [optionalProperties containsObject:propertyName];
}

@end
