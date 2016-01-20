#import "DSLockInformation.h"

@implementation DSLockInformation

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"lockedByUser": @"lockedByUser", @"lockedByApp": @"lockedByApp", @"lockedUntilDateTime": @"lockedUntilDateTime", @"lockDurationInSeconds": @"lockDurationInSeconds", @"lockType": @"lockType", @"useScratchPad": @"useScratchPad", @"lockToken": @"lockToken", @"errorDetails": @"errorDetails" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"lockedByUser", @"lockedByApp", @"lockedUntilDateTime", @"lockDurationInSeconds", @"lockType", @"useScratchPad", @"lockToken", @"errorDetails"];

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
