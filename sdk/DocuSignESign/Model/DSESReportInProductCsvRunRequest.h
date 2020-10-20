#import <Foundation/Foundation.h>
#import <DSESObject.h>

/**
* DocuSign REST API
* The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.
*
* OpenAPI spec version: v2.1
* Contact: devcenter@docusign.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import <DSESReportInProductField.h>
@protocol DSESReportInProductField;
@class DSESReportInProductField;



@protocol DSESReportInProductCsvRunRequest
@end

@interface DSESReportInProductCsvRunRequest : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* customFieldFilter;
/*  [optional]
 */
@property(nonatomic) NSString* dateRangeCustomFromDate;
/*  [optional]
 */
@property(nonatomic) NSString* dateRangeCustomToDate;
/*  [optional]
 */
@property(nonatomic) NSString* dateRangeFilter;
/*  [optional]
 */
@property(nonatomic) NSString* envelopeDateTypeFilter;
/*  [optional]
 */
@property(nonatomic) NSString* envelopeRecipientNameContainsFilter;
/*  [optional]
 */
@property(nonatomic) NSString* envelopeStatusFilter;
/*  [optional]
 */
@property(nonatomic) NSString* envelopeSubjectContainsFilter;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESReportInProductField>* fields;
/*  [optional]
 */
@property(nonatomic) NSString* forDownload;
/*  [optional]
 */
@property(nonatomic) NSString* isDashboard;
/*  [optional]
 */
@property(nonatomic) NSString* varNewLine;
/*  [optional]
 */
@property(nonatomic) NSString* overrideTimezoneKey;
/*  [optional]
 */
@property(nonatomic) NSString* periodLengthFilter;
/*  [optional]
 */
@property(nonatomic) NSString* quote;
/*  [optional]
 */
@property(nonatomic) NSString* reportCustomizedId;
/*  [optional]
 */
@property(nonatomic) NSString* reportDescription;
/*  [optional]
 */
@property(nonatomic) NSString* reportId;
/*  [optional]
 */
@property(nonatomic) NSString* reportInvocationType;
/*  [optional]
 */
@property(nonatomic) NSString* reportName;
/*  [optional]
 */
@property(nonatomic) NSString* sentByFilter;
/*  [optional]
 */
@property(nonatomic) NSString* sentByIds;
/*  [optional]
 */
@property(nonatomic) NSString* separator;
/*  [optional]
 */
@property(nonatomic) NSString* sortDirection;
/*  [optional]
 */
@property(nonatomic) NSString* sortField;
/* Starting position of the current result set. [optional]
 */
@property(nonatomic) NSString* startPosition;

@end