#import "DSIdCheckInformationInput.h"

@implementation DSIdCheckInformationInput

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"addressInformationInput": @"addressInformationInput", @"dobInformationInput": @"dobInformationInput", @"ssn4InformationInput": @"ssn4InformationInput", @"ssn9InformationInput": @"ssn9InformationInput" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"addressInformationInput", @"dobInformationInput", @"ssn4InformationInput", @"ssn9InformationInput"];

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
