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


#import <DSESPropertyMetadata.h>
#import <DSESRecipientSignatureProviderOptions.h>
@protocol DSESPropertyMetadata;
@class DSESPropertyMetadata;
@protocol DSESRecipientSignatureProviderOptions;
@class DSESRecipientSignatureProviderOptions;



@protocol DSESRecipientSignatureProvider
@end

@interface DSESRecipientSignatureProvider : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* sealDocumentsWithTabsOnly;
/*  [optional]
 */
@property(nonatomic) NSString* sealName;
/*  [optional]
 */
@property(nonatomic) NSString* signatureProviderName;

@property(nonatomic) DSESPropertyMetadata* signatureProviderNameMetadata;

@property(nonatomic) DSESRecipientSignatureProviderOptions* signatureProviderOptions;

@end
