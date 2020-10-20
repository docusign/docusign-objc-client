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





@protocol DSESReportInProductListItem
@end

@interface DSESReportInProductListItem : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* getUri;
/*  [optional]
 */
@property(nonatomic) NSString* lastScheduledExecutionDate;
/*  [optional]
 */
@property(nonatomic) NSString* lastScheduledExecutionSuccessDate;
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
@property(nonatomic) NSString* reportName;
/*  [optional]
 */
@property(nonatomic) NSString* reportType;
/*  [optional]
 */
@property(nonatomic) NSString* runUri;
/*  [optional]
 */
@property(nonatomic) NSString* saveUri;
/*  [optional]
 */
@property(nonatomic) NSString* scheduleCreateDate;
/*  [optional]
 */
@property(nonatomic) NSString* scheduleEndDate;
/*  [optional]
 */
@property(nonatomic) NSString* scheduleId;
/*  [optional]
 */
@property(nonatomic) NSString* scheduleRenewDurationDays;

@end
