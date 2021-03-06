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


#import <DSESBulkEnvelopeStatus.h>
#import <DSESErrorDetails.h>
@protocol DSESBulkEnvelopeStatus;
@class DSESBulkEnvelopeStatus;
@protocol DSESErrorDetails;
@class DSESErrorDetails;



@protocol DSESEnvelopeSummary
@end

@interface DSESEnvelopeSummary : DSESObject


@property(nonatomic) DSESBulkEnvelopeStatus* bulkEnvelopeStatus;
/* The envelope ID of the envelope status that failed to post. [optional]
 */
@property(nonatomic) NSString* envelopeId;

@property(nonatomic) DSESErrorDetails* errorDetails;
/* Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. [optional]
 */
@property(nonatomic) NSString* status;
/* The DateTime that the envelope changed status (i.e. was created or sent.) [optional]
 */
@property(nonatomic) NSString* statusDateTime;
/*  [optional]
 */
@property(nonatomic) NSString* uri;

@end
