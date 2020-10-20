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
#import <DSESWorkspaceUser.h>
@protocol DSESErrorDetails;
@class DSESErrorDetails;
@protocol DSESWorkspaceUser;
@class DSESWorkspaceUser;



@protocol DSESWorkspaceUserAuthorization
@end

@interface DSESWorkspaceUserAuthorization : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* canDelete;
/*  [optional]
 */
@property(nonatomic) NSString* canMove;
/*  [optional]
 */
@property(nonatomic) NSString* canTransact;
/*  [optional]
 */
@property(nonatomic) NSString* canView;
/* The UTC DateTime when the workspace user authorization was created. [optional]
 */
@property(nonatomic) NSString* created;
/*  [optional]
 */
@property(nonatomic) NSString* createdById;

@property(nonatomic) DSESErrorDetails* errorDetails;
/*  [optional]
 */
@property(nonatomic) NSString* modified;
/*  [optional]
 */
@property(nonatomic) NSString* modifiedById;
/*  [optional]
 */
@property(nonatomic) NSString* workspaceUserId;

@property(nonatomic) DSESWorkspaceUser* workspaceUserInformation;

@end