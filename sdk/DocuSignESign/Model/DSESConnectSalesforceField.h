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





@protocol DSESConnectSalesforceField
@end

@interface DSESConnectSalesforceField : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* dsAttribute;
/*  [optional]
 */
@property(nonatomic) NSString* dsLink;
/*  [optional]
 */
@property(nonatomic) NSString* dsNode;
/*  [optional]
 */
@property(nonatomic) NSString* _id;
/*  [optional]
 */
@property(nonatomic) NSString* sfField;
/*  [optional]
 */
@property(nonatomic) NSString* sfFieldName;
/*  [optional]
 */
@property(nonatomic) NSString* sfFolder;
/*  [optional]
 */
@property(nonatomic) NSString* sfLockedValue;

@end