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


#import <DSESErrorDetails.h>
@protocol DSESErrorDetails;
@class DSESErrorDetails;



@protocol DSESDocumentVisibility
@end

@interface DSESDocumentVisibility : DSESObject

/* Specifies the document ID number that the tab is placed on. This must refer to an existing Document's ID attribute. [optional]
 */
@property(nonatomic) NSString* documentId;

@property(nonatomic) DSESErrorDetails* errorDetails;
/* Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document. [optional]
 */
@property(nonatomic) NSString* recipientId;
/*  [optional]
 */
@property(nonatomic) NSString* rights;
/*  [optional]
 */
@property(nonatomic) NSString* visible;

@end
