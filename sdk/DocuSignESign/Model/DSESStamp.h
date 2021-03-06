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


#import <DSESDateStampProperties.h>
#import <DSESErrorDetails.h>
@protocol DSESDateStampProperties;
@class DSESDateStampProperties;
@protocol DSESErrorDetails;
@class DSESErrorDetails;



@protocol DSESStamp
@end

@interface DSESStamp : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* adoptedDateTime;
/* Indicates the date and time the item was created. [optional]
 */
@property(nonatomic) NSString* createdDateTime;
/*  [optional]
 */
@property(nonatomic) NSString* customField;

@property(nonatomic) DSESDateStampProperties* dateStampProperties;
/*  [optional]
 */
@property(nonatomic) NSString* disallowUserResizeStamp;

@property(nonatomic) DSESErrorDetails* errorDetails;
/*  [optional]
 */
@property(nonatomic) NSString* externalID;
/*  [optional]
 */
@property(nonatomic) NSString* imageBase64;
/*  [optional]
 */
@property(nonatomic) NSString* imageType;
/* The date and time the item was last modified. [optional]
 */
@property(nonatomic) NSString* lastModifiedDateTime;
/*  [optional]
 */
@property(nonatomic) NSString* phoneticName;
/* Specifies the user signature name. [optional]
 */
@property(nonatomic) NSString* signatureName;
/*  [optional]
 */
@property(nonatomic) NSString* stampFormat;
/*  [optional]
 */
@property(nonatomic) NSString* stampImageUri;
/*  [optional]
 */
@property(nonatomic) NSString* stampSizeMM;
/* Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. [optional]
 */
@property(nonatomic) NSString* status;

@end
