#import <Foundation/Foundation.h>
#import "DSObject.h"

/**
* DocuSign REST API
* The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.
*
* OpenAPI spec version: v2
* Contact: devcenter@docusign.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/




@protocol DSPowerFormRecipient
@end

@interface DSPowerFormRecipient : DSObject

/* If a value is provided, the recipient must enter the value as the access code to view and sign the envelope.   Maximum Length: 50 characters and it must conform to the account’s access code format setting.  If blank, but the signer `accessCode` property is set in the envelope, then that value is used.  If blank and the signer `accessCode` property is not set, then the access code is not required. [optional]
 */
@property(nonatomic) NSString* accessCode;
/*  [optional]
 */
@property(nonatomic) NSString* accessCodeLocked;
/*  [optional]
 */
@property(nonatomic) NSString* accessCodeRequired;
/*  [optional]
 */
@property(nonatomic) NSString* email;
/*  [optional]
 */
@property(nonatomic) NSString* emailLocked;
/* Specifies authentication check by name. The names used here must be the same as the authentication type names used by the account (these name can also be found in the web console sending interface in the Identify list for a recipient,) This overrides any default authentication setting.  *Example*: Your account has ID Check and SMS Authentication available and in the web console Identify list these appear as 'ID Check $' and 'SMS Auth $'. To use ID check in an envelope, the idCheckConfigurationName should be 'ID Check '. If you wanted to use SMS, it would be 'SMS Auth $' and you would need to add you would need to add phone number information to the `smsAuthentication` node. [optional]
 */
@property(nonatomic) NSString* idCheckConfigurationName;
/*  [optional]
 */
@property(nonatomic) NSString* idCheckRequired;
/*  [optional]
 */
@property(nonatomic) NSString* name;
/*  [optional]
 */
@property(nonatomic) NSString* recipientType;
/* Optional element. Specifies the role name associated with the recipient.<br/><br/>This is required when working with template recipients. [optional]
 */
@property(nonatomic) NSString* roleName;
/* Specifies the routing order of the recipient in the envelope.  [optional]
 */
@property(nonatomic) NSString* routingOrder;
/*  [optional]
 */
@property(nonatomic) NSString* templateRequiresIdLookup;
/*  [optional]
 */
@property(nonatomic) NSString* userNameLocked;

@end
