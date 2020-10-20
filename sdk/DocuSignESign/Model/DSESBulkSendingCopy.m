#import <DSESBulkSendingCopy.h>

@implementation DSESBulkSendingCopy

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"customFields": @"customFields", @"emailBlurb": @"emailBlurb", @"emailSubject": @"emailSubject", @"recipients": @"recipients" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customFields", @"emailBlurb", @"emailSubject", @"recipients"];
  return [optionalProperties containsObject:propertyName];
}

@end
