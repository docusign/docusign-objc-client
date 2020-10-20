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
#import <DSESUserInfo.h>
@protocol DSESErrorDetails;
@class DSESErrorDetails;
@protocol DSESUserInfo;
@class DSESUserInfo;



@protocol DSESSharedItem
@end

@interface DSESSharedItem : DSESObject


@property(nonatomic) DSESErrorDetails* errorDetails;
/* When set to **true**, this custom tab is shared. [optional]
 */
@property(nonatomic) NSString* shared;

@property(nonatomic) DSESUserInfo* user;

@end