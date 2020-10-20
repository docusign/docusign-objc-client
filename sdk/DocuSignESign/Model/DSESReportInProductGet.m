#import <DSESReportInProductGet.h>

@implementation DSESReportInProductGet

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"customFieldFilter": @"customFieldFilter", @"dateRangeCustomFromDate": @"dateRangeCustomFromDate", @"dateRangeCustomToDate": @"dateRangeCustomToDate", @"dateRangeFilter": @"dateRangeFilter", @"displayOrder": @"displayOrder", @"envelopeDateTypeFilter": @"envelopeDateTypeFilter", @"envelopeRecipientNameContainsFilter": @"envelopeRecipientNameContainsFilter", @"envelopeStatusFilter": @"envelopeStatusFilter", @"envelopeSubjectContainsFilter": @"envelopeSubjectContainsFilter", @"fields": @"fields", @"lastScheduledExecutionDate": @"lastScheduledExecutionDate", @"lastScheduledExecutionSuccessDate": @"lastScheduledExecutionSuccessDate", @"maxDownloadRows": @"maxDownloadRows", @"maxGridRows": @"maxGridRows", @"maxScheduledRows": @"maxScheduledRows", @"periodLengthFilter": @"periodLengthFilter", @"reportCustomizedId": @"reportCustomizedId", @"reportDescription": @"reportDescription", @"reportId": @"reportId", @"reportName": @"reportName", @"reportType": @"reportType", @"runUri": @"runUri", @"saveUri": @"saveUri", @"scheduleId": @"scheduleId", @"sentByDetails": @"sentByDetails", @"sentByFilter": @"sentByFilter", @"sentByIds": @"sentByIds", @"sortFieldDirection": @"sortFieldDirection", @"sortFieldName": @"sortFieldName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customFieldFilter", @"dateRangeCustomFromDate", @"dateRangeCustomToDate", @"dateRangeFilter", @"displayOrder", @"envelopeDateTypeFilter", @"envelopeRecipientNameContainsFilter", @"envelopeStatusFilter", @"envelopeSubjectContainsFilter", @"fields", @"lastScheduledExecutionDate", @"lastScheduledExecutionSuccessDate", @"maxDownloadRows", @"maxGridRows", @"maxScheduledRows", @"periodLengthFilter", @"reportCustomizedId", @"reportDescription", @"reportId", @"reportName", @"reportType", @"runUri", @"saveUri", @"scheduleId", @"sentByDetails", @"sentByFilter", @"sentByIds", @"sortFieldDirection", @"sortFieldName"];
  return [optionalProperties containsObject:propertyName];
}

@end
