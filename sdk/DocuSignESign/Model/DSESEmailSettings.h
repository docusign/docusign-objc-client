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


#import <DSESBccEmailAddress.h>
@protocol DSESBccEmailAddress;
@class DSESBccEmailAddress;



@protocol DSESEmailSettings
@end

@interface DSESEmailSettings : DSESObject

/* A list of email addresses that receive a copy of all email communications for an envelope. You can use this for archiving purposes. [optional]
 */
@property(nonatomic) NSArray<DSESBccEmailAddress>* bccEmailAddresses;
/*  [optional]
 */
@property(nonatomic) NSString* replyEmailAddressOverride;
/*  [optional]
 */
@property(nonatomic) NSString* replyEmailNameOverride;

@end