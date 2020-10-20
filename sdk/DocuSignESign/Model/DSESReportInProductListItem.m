#import <DSESReportInProductListItem.h>

@implementation DSESReportInProductListItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"getUri": @"getUri", @"lastScheduledExecutionDate": @"lastScheduledExecutionDate", @"lastScheduledExecutionSuccessDate": @"lastScheduledExecutionSuccessDate", @"reportCustomizedId": @"reportCustomizedId", @"reportDescription": @"reportDescription", @"reportId": @"reportId", @"reportName": @"reportName", @"reportType": @"reportType", @"runUri": @"runUri", @"saveUri": @"saveUri", @"scheduleCreateDate": @"scheduleCreateDate", @"scheduleEndDate": @"scheduleEndDate", @"scheduleId": @"scheduleId", @"scheduleRenewDurationDays": @"scheduleRenewDurationDays" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"getUri", @"lastScheduledExecutionDate", @"lastScheduledExecutionSuccessDate", @"reportCustomizedId", @"reportDescription", @"reportId", @"reportName", @"reportType", @"runUri", @"saveUri", @"scheduleCreateDate", @"scheduleEndDate", @"scheduleId", @"scheduleRenewDurationDays"];
  return [optionalProperties containsObject:propertyName];
}

@end
