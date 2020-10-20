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


#import <DSESPathExtendedElement.h>
#import <DSESPropertyMetadata.h>
@protocol DSESPathExtendedElement;
@class DSESPathExtendedElement;
@protocol DSESPropertyMetadata;
@class DSESPropertyMetadata;



@protocol DSESMergeField
@end

@interface DSESMergeField : DSESObject

/* When set to **true**, the sender can modify the value of the custom tab during the sending process. [optional]
 */
@property(nonatomic) NSString* allowSenderToEdit;

@property(nonatomic) DSESPropertyMetadata* allowSenderToEditMetadata;
/* If merge field's are being used, specifies the type of the merge field. The only  supported value is **salesforce**. [optional]
 */
@property(nonatomic) NSString* configurationType;

@property(nonatomic) DSESPropertyMetadata* configurationTypeMetadata;
/* Sets the object associated with the custom tab. Currently this is the Salesforce Object. [optional]
 */
@property(nonatomic) NSString* path;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESPathExtendedElement>* pathExtended;

@property(nonatomic) DSESPropertyMetadata* pathExtendedMetadata;

@property(nonatomic) DSESPropertyMetadata* pathMetadata;
/* Specifies the row number in a Salesforce table that the merge field value corresponds to. [optional]
 */
@property(nonatomic) NSString* row;

@property(nonatomic) DSESPropertyMetadata* rowMetadata;
/* When wet to true, the information entered in the tab automatically updates the related Salesforce data when an envelope is completed. [optional]
 */
@property(nonatomic) NSString* writeBack;

@property(nonatomic) DSESPropertyMetadata* writeBackMetadata;

@end