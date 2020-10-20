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
#import <DSESMemberGroupSharedItem.h>
#import <DSESUserInfo.h>
#import <DSESUserSharedItem.h>
@protocol DSESErrorDetails;
@class DSESErrorDetails;
@protocol DSESMemberGroupSharedItem;
@class DSESMemberGroupSharedItem;
@protocol DSESUserInfo;
@class DSESUserInfo;
@protocol DSESUserSharedItem;
@class DSESUserSharedItem;



@protocol DSESFolderSharedItem
@end

@interface DSESFolderSharedItem : DSESObject


@property(nonatomic) DSESErrorDetails* errorDetails;
/*  [optional]
 */
@property(nonatomic) NSString* folderId;
/*  [optional]
 */
@property(nonatomic) NSString* name;

@property(nonatomic) DSESUserInfo* owner;
/*  [optional]
 */
@property(nonatomic) NSString* parentFolderId;
/*  [optional]
 */
@property(nonatomic) NSString* parentFolderUri;
/* When set to **true**, this custom tab is shared. [optional]
 */
@property(nonatomic) NSString* shared;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESMemberGroupSharedItem>* sharedGroups;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESUserSharedItem>* sharedUsers;
/*  [optional]
 */
@property(nonatomic) NSString* uri;

@property(nonatomic) DSESUserInfo* user;

@end