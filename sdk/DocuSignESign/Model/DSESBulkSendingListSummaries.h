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


#import <DSESBulkSendingListSummary.h>
@protocol DSESBulkSendingListSummary;
@class DSESBulkSendingListSummary;



@protocol DSESBulkSendingListSummaries
@end

@interface DSESBulkSendingListSummaries : DSESObject

/*  [optional]
 */
@property(nonatomic) NSArray<DSESBulkSendingListSummary>* bulkListSummaries;

@end
