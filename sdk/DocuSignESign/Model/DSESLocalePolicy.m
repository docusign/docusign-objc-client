#import <DSESLocalePolicy.h>

@implementation DSESLocalePolicy

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"addressFormat": @"addressFormat", @"addressFormatMetadata": @"addressFormatMetadata", @"allowRegion": @"allowRegion", @"calendarType": @"calendarType", @"calendarTypeMetadata": @"calendarTypeMetadata", @"cultureName": @"cultureName", @"cultureNameMetadata": @"cultureNameMetadata", @"currencyCode": @"currencyCode", @"currencyCodeMetadata": @"currencyCodeMetadata", @"currencyNegativeFormat": @"currencyNegativeFormat", @"currencyNegativeFormatMetadata": @"currencyNegativeFormatMetadata", @"currencyPositiveFormat": @"currencyPositiveFormat", @"currencyPositiveFormatMetadata": @"currencyPositiveFormatMetadata", @"customDateFormat": @"customDateFormat", @"customSignDateFormat": @"customSignDateFormat", @"customSignTimeFormat": @"customSignTimeFormat", @"customTimeFormat": @"customTimeFormat", @"dateFormat": @"dateFormat", @"dateFormatMetadata": @"dateFormatMetadata", @"effectiveAddressFormat": @"effectiveAddressFormat", @"effectiveCalendarType": @"effectiveCalendarType", @"effectiveCurrencyCode": @"effectiveCurrencyCode", @"effectiveCurrencyNegativeFormat": @"effectiveCurrencyNegativeFormat", @"effectiveCurrencyPositiveFormat": @"effectiveCurrencyPositiveFormat", @"effectiveCustomDateFormat": @"effectiveCustomDateFormat", @"effectiveCustomTimeFormat": @"effectiveCustomTimeFormat", @"effectiveDateFormat": @"effectiveDateFormat", @"effectiveInitialFormat": @"effectiveInitialFormat", @"effectiveNameFormat": @"effectiveNameFormat", @"effectiveTimeFormat": @"effectiveTimeFormat", @"effectiveTimeZone": @"effectiveTimeZone", @"initialFormat": @"initialFormat", @"initialFormatMetadata": @"initialFormatMetadata", @"nameFormat": @"nameFormat", @"nameFormatMetadata": @"nameFormatMetadata", @"signDateFormat": @"signDateFormat", @"signDateFormatMetadata": @"signDateFormatMetadata", @"signTimeFormat": @"signTimeFormat", @"signTimeFormatMetadata": @"signTimeFormatMetadata", @"timeFormat": @"timeFormat", @"timeFormatMetadata": @"timeFormatMetadata", @"timeZone": @"timeZone", @"timeZoneMetadata": @"timeZoneMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addressFormat", @"addressFormatMetadata", @"allowRegion", @"calendarType", @"calendarTypeMetadata", @"cultureName", @"cultureNameMetadata", @"currencyCode", @"currencyCodeMetadata", @"currencyNegativeFormat", @"currencyNegativeFormatMetadata", @"currencyPositiveFormat", @"currencyPositiveFormatMetadata", @"customDateFormat", @"customSignDateFormat", @"customSignTimeFormat", @"customTimeFormat", @"dateFormat", @"dateFormatMetadata", @"effectiveAddressFormat", @"effectiveCalendarType", @"effectiveCurrencyCode", @"effectiveCurrencyNegativeFormat", @"effectiveCurrencyPositiveFormat", @"effectiveCustomDateFormat", @"effectiveCustomTimeFormat", @"effectiveDateFormat", @"effectiveInitialFormat", @"effectiveNameFormat", @"effectiveTimeFormat", @"effectiveTimeZone", @"initialFormat", @"initialFormatMetadata", @"nameFormat", @"nameFormatMetadata", @"signDateFormat", @"signDateFormatMetadata", @"signTimeFormat", @"signTimeFormatMetadata", @"timeFormat", @"timeFormatMetadata", @"timeZone", @"timeZoneMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
