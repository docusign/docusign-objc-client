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



@protocol DSESGroup
@end

@interface DSESGroup : DSESObject


@property(nonatomic) DSESErrorDetails* errorDetails;
/* The DocuSign group ID for the group. [optional]
 */
@property(nonatomic) NSString* groupId;
/* The name of the group. [optional]
 */
@property(nonatomic) NSString* groupName;
/* The group type. [optional]
 */
@property(nonatomic) NSString* groupType;
/* The ID of the permission profile associated with the group. [optional]
 */
@property(nonatomic) NSString* permissionProfileId;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESUserInfo>* users;
/*  [optional]
 */
@property(nonatomic) NSString* usersCount;

@end