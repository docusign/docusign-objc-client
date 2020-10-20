#import <DSESTemplateUpdateSummary.h>

@implementation DSESTemplateUpdateSummary

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bulkEnvelopeStatus": @"bulkEnvelopeStatus", @"envelopeId": @"envelopeId", @"errorDetails": @"errorDetails", @"listCustomFieldUpdateResults": @"listCustomFieldUpdateResults", @"lockInformation": @"lockInformation", @"purgeState": @"purgeState", @"recipientUpdateResults": @"recipientUpdateResults", @"tabUpdateResults": @"tabUpdateResults", @"textCustomFieldUpdateResults": @"textCustomFieldUpdateResults" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bulkEnvelopeStatus", @"envelopeId", @"errorDetails", @"listCustomFieldUpdateResults", @"lockInformation", @"purgeState", @"recipientUpdateResults", @"tabUpdateResults", @"textCustomFieldUpdateResults"];
  return [optionalProperties containsObject:propertyName];
}

@end
