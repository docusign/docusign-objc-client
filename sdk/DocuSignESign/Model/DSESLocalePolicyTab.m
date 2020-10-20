#import <DSESLocalePolicyTab.h>

@implementation DSESLocalePolicyTab

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"addressFormat": @"addressFormat", @"calendarType": @"calendarType", @"cultureName": @"cultureName", @"currencyNegativeFormat": @"currencyNegativeFormat", @"currencyPositiveFormat": @"currencyPositiveFormat", @"customDateFormat": @"customDateFormat", @"customTimeFormat": @"customTimeFormat", @"dateFormat": @"dateFormat", @"initialFormat": @"initialFormat", @"nameFormat": @"nameFormat", @"timeFormat": @"timeFormat", @"timeZone": @"timeZone" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addressFormat", @"calendarType", @"cultureName", @"currencyNegativeFormat", @"currencyPositiveFormat", @"customDateFormat", @"customTimeFormat", @"dateFormat", @"initialFormat", @"nameFormat", @"timeFormat", @"timeZone"];
  return [optionalProperties containsObject:propertyName];
}

@end
