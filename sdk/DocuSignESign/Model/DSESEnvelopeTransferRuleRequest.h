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


#import <DSESFolder.h>
#import <DSESGroup.h>
#import <DSESUserInformation.h>
@protocol DSESFolder;
@class DSESFolder;
@protocol DSESGroup;
@class DSESGroup;
@protocol DSESUserInformation;
@class DSESUserInformation;



@protocol DSESEnvelopeTransferRuleRequest
@end

@interface DSESEnvelopeTransferRuleRequest : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* carbonCopyOriginalOwner;
/*  [optional]
 */
@property(nonatomic) NSString* enabled;
/*  [optional]
 */
@property(nonatomic) NSString* envelopeTransferRuleId;
/*  [optional]
 */
@property(nonatomic) NSString* eventType;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESGroup>* fromGroups;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESUserInformation>* fromUsers;
/*  [optional]
 */
@property(nonatomic) NSString* modifiedDate;

@property(nonatomic) DSESUserInformation* modifiedUser;

@property(nonatomic) DSESFolder* toFolder;

@property(nonatomic) DSESUserInformation* toUser;

@end
