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


#import <DSESUserInfo.h>
@protocol DSESUserInfo;
@class DSESUserInfo;



@protocol DSESBrandResources
@end

@interface DSESBrandResources : DSESObject


@property(nonatomic) DSESUserInfo* createdByUserInfo;
/*  [optional]
 */
@property(nonatomic) NSString* createdDate;
/*  [optional]
 */
@property(nonatomic) NSArray<NSString*>* dataNotSavedNotInMaster;

@property(nonatomic) DSESUserInfo* modifiedByUserInfo;
/*  [optional]
 */
@property(nonatomic) NSString* modifiedDate;
/*  [optional]
 */
@property(nonatomic) NSArray<NSString*>* modifiedTemplates;
/*  [optional]
 */
@property(nonatomic) NSString* resourcesContentType;
/*  [optional]
 */
@property(nonatomic) NSString* resourcesContentUri;

@end
