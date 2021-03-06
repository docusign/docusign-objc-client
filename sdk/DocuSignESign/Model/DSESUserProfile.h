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


#import <DSESAddressInformation.h>
#import <DSESAuthenticationMethod.h>
#import <DSESUsageHistory.h>
#import <DSESUserInformation.h>
@protocol DSESAddressInformation;
@class DSESAddressInformation;
@protocol DSESAuthenticationMethod;
@class DSESAuthenticationMethod;
@protocol DSESUsageHistory;
@class DSESUsageHistory;
@protocol DSESUserInformation;
@class DSESUserInformation;



@protocol DSESUserProfile
@end

@interface DSESUserProfile : DSESObject


@property(nonatomic) DSESAddressInformation* address;
/* These properties cannot be modified in the PUT.   Indicates the authentication methods used by the user. [optional]
 */
@property(nonatomic) NSArray<DSESAuthenticationMethod>* authenticationMethods;
/* The name of the user's Company. [optional]
 */
@property(nonatomic) NSString* companyName;
/*  When set to **true**, the user's company and title information are shown on the ID card.  [optional]
 */
@property(nonatomic) NSString* displayOrganizationInfo;
/* When set to **true**, the user's Address and Phone number are shown on the ID card. [optional]
 */
@property(nonatomic) NSString* displayPersonalInfo;
/* When set to **true**, the user's ID card can be viewed from signed documents and envelope history. [optional]
 */
@property(nonatomic) NSString* displayProfile;
/* When set to **true**, the user's usage information is shown on the ID card. [optional]
 */
@property(nonatomic) NSString* displayUsageHistory;
/*  [optional]
 */
@property(nonatomic) NSString* profileImageUri;
/*  [optional]
 */
@property(nonatomic) NSString* title;

@property(nonatomic) DSESUsageHistory* usageHistory;

@property(nonatomic) DSESUserInformation* userDetails;
/*  [optional]
 */
@property(nonatomic) NSString* userProfileLastModifiedDate;

@end
