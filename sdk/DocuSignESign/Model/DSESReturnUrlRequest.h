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





@protocol DSESReturnUrlRequest
@end

@interface DSESReturnUrlRequest : DSESObject

/* Identifies the return point after sending the envelope. DocuSign returns to the URL and includes an event parameter that can be used to redirect the recipient to another location. The possible event parameters returned are:   * send (user sends the envelope) * save (user saves the envelope) * cancel (user cancels the sending transaction. No envelopeId is returned in this case.) * error (there is an error when performing the send) * sessionEnd (the sending session ends before the user completes another action). [optional]
 */
@property(nonatomic) NSString* returnUrl;

@end
