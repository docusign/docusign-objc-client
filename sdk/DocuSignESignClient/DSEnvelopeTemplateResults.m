#import "DSEnvelopeTemplateResults.h"

@implementation DSEnvelopeTemplateResults

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"envelopeTemplates": @"envelopeTemplates", @"resultSetSize": @"resultSetSize", @"startPosition": @"startPosition", @"endPosition": @"endPosition", @"totalSetSize": @"totalSetSize", @"nextUri": @"nextUri", @"previousUri": @"previousUri", @"folders": @"folders" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"envelopeTemplates", @"resultSetSize", @"startPosition", @"endPosition", @"totalSetSize", @"nextUri", @"previousUri", @"folders"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
