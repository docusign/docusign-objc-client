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





@protocol DSESSsn4InformationInput
@end

@interface DSESSsn4InformationInput : DSESObject

/* Specifies the display level for the recipient.  Valid values are:   * ReadOnly * Editable * DoNotDisplay [optional]
 */
@property(nonatomic) NSString* displayLevelCode;
/* When set to **true**, the information needs to be returned in the response. [optional]
 */
@property(nonatomic) NSString* receiveInResponse;
/* The last four digits of the recipient's Social Security Number (SSN). [optional]
 */
@property(nonatomic) NSString* ssn4;

@end
