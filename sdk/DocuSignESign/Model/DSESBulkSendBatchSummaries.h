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


#import <DSESBulkSendBatchSummary.h>
@protocol DSESBulkSendBatchSummary;
@class DSESBulkSendBatchSummary;



@protocol DSESBulkSendBatchSummaries
@end

@interface DSESBulkSendBatchSummaries : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* batchSizeLimit;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESBulkSendBatchSummary>* bulkBatchSummaries;
/* The last position in the result set.  [optional]
 */
@property(nonatomic) NSString* endPosition;
/* The URI to the next chunk of records based on the search request. If the endPosition is the entire results of the search, this is null.  [optional]
 */
@property(nonatomic) NSString* nextUri;
/* The postal code for the billing address. [optional]
 */
@property(nonatomic) NSString* previousUri;
/*  [optional]
 */
@property(nonatomic) NSString* queueLimit;
/* The number of results returned in this response.  [optional]
 */
@property(nonatomic) NSString* resultSetSize;
/* Starting position of the current result set. [optional]
 */
@property(nonatomic) NSString* startPosition;
/*  [optional]
 */
@property(nonatomic) NSString* totalQueued;
/* The total number of items available in the result set. This will always be greater than or equal to the value of the property returning the results in the in the response. [optional]
 */
@property(nonatomic) NSString* totalSetSize;

@end
