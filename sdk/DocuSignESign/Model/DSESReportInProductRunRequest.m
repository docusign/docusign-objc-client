#import <DSESReportInProductRunRequest.h>

@implementation DSESReportInProductRunRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"customFieldFilter": @"customFieldFilter", @"dateRangeCustomFromDate": @"dateRangeCustomFromDate", @"dateRangeCustomToDate": @"dateRangeCustomToDate", @"dateRangeFilter": @"dateRangeFilter", @"envelopeDateTypeFilter": @"envelopeDateTypeFilter", @"envelopeRecipientNameContainsFilter": @"envelopeRecipientNameContainsFilter", @"envelopeStatusFilter": @"envelopeStatusFilter", @"envelopeSubjectContainsFilter": @"envelopeSubjectContainsFilter", @"fields": @"fields", @"forDownload": @"forDownload", @"isDashboard": @"isDashboard", @"periodLengthFilter": @"periodLengthFilter", @"reportCustomizedId": @"reportCustomizedId", @"reportDescription": @"reportDescription", @"reportId": @"reportId", @"reportInvocationType": @"reportInvocationType", @"reportName": @"reportName", @"sentByFilter": @"sentByFilter", @"sentByIds": @"sentByIds", @"sortDirection": @"sortDirection", @"sortField": @"sortField", @"startPosition": @"startPosition" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customFieldFilter", @"dateRangeCustomFromDate", @"dateRangeCustomToDate", @"dateRangeFilter", @"envelopeDateTypeFilter", @"envelopeRecipientNameContainsFilter", @"envelopeStatusFilter", @"envelopeSubjectContainsFilter", @"fields", @"forDownload", @"isDashboard", @"periodLengthFilter", @"reportCustomizedId", @"reportDescription", @"reportId", @"reportInvocationType", @"reportName", @"sentByFilter", @"sentByIds", @"sortDirection", @"sortField", @"startPosition"];
  return [optionalProperties containsObject:propertyName];
}

@end
