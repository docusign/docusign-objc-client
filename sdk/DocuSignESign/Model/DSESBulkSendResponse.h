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





@protocol DSESBulkSendResponse
@end

@interface DSESBulkSendResponse : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* batchId;
/*  [optional]
 */
@property(nonatomic) NSString* batchSize;
/*  [optional]
 */
@property(nonatomic) NSString* envelopeOrTemplateId;
/* Array or errors. [optional]
 */
@property(nonatomic) NSArray<NSString*>* errorDetails;
/*  [optional]
 */
@property(nonatomic) NSArray<NSString*>* errors;
/*  [optional]
 */
@property(nonatomic) NSString* queueLimit;
/*  [optional]
 */
@property(nonatomic) NSString* totalQueued;

@end
