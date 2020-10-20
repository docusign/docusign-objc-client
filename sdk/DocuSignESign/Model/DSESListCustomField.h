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



@protocol DSESListCustomField
@end

@interface DSESListCustomField : DSESObject

/* If merge field's are being used, specifies the type of the merge field. The only  supported value is **salesforce**. [optional]
 */
@property(nonatomic) NSString* configurationType;

@property(nonatomic) DSESErrorDetails* errorDetails;
/* An ID used to specify a custom field. [optional]
 */
@property(nonatomic) NSString* fieldId;
/*  [optional]
 */
@property(nonatomic) NSArray<NSString*>* listItems;
/* The name of the custom field. [optional]
 */
@property(nonatomic) NSString* name;
/* When set to **true**, the signer is required to fill out this tab [optional]
 */
@property(nonatomic) NSString* required;
/* A boolean indicating if the value should be displayed. [optional]
 */
@property(nonatomic) NSString* show;
/* The value of the custom field.  Maximum Length: 100 characters. [optional]
 */
@property(nonatomic) NSString* value;

@end