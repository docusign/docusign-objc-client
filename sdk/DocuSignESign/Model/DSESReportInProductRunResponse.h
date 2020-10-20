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


#import <DSESReportInProductRunResponseRow.h>
@protocol DSESReportInProductRunResponseRow;
@class DSESReportInProductRunResponseRow;



@protocol DSESReportInProductRunResponse
@end

@interface DSESReportInProductRunResponse : DSESObject

/* The last position in the result set.  [optional]
 */
@property(nonatomic) NSString* endPosition;
/*  [optional]
 */
@property(nonatomic) NSString* exceededMaxResults;
/*  [optional]
 */
@property(nonatomic) NSString* lastWarehouseRefreshDateTime;
/* The number of results returned in this response.  [optional]
 */
@property(nonatomic) NSString* resultSetSize;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESReportInProductRunResponseRow>* rows;
/* Starting position of the current result set. [optional]
 */
@property(nonatomic) NSString* startPosition;
/* The total number of items available in the result set. This will always be greater than or equal to the value of the property returning the results in the in the response. [optional]
 */
@property(nonatomic) NSString* totalSetSize;

@end
