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





@protocol DSESJurisdiction
@end

@interface DSESJurisdiction : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* allowSystemCreatedSeal;
/*  [optional]
 */
@property(nonatomic) NSString* allowUserUploadedSeal;
/*  [optional]
 */
@property(nonatomic) NSString* commissionIdInSeal;
/*  [optional]
 */
@property(nonatomic) NSString* county;
/*  [optional]
 */
@property(nonatomic) NSString* countyInSeal;
/*  [optional]
 */
@property(nonatomic) NSString* enabled;
/*  [optional]
 */
@property(nonatomic) NSString* jurisdictionId;
/*  [optional]
 */
@property(nonatomic) NSString* name;
/*  [optional]
 */
@property(nonatomic) NSString* notaryPublicInSeal;
/*  [optional]
 */
@property(nonatomic) NSString* stateNameInSeal;

@end