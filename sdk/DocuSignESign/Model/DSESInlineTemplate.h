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


#import <DSESCustomFields.h>
#import <DSESDocument.h>
#import <DSESEnvelope.h>
#import <DSESRecipients.h>
@protocol DSESCustomFields;
@class DSESCustomFields;
@protocol DSESDocument;
@class DSESDocument;
@protocol DSESEnvelope;
@class DSESEnvelope;
@protocol DSESRecipients;
@class DSESRecipients;



@protocol DSESInlineTemplate
@end

@interface DSESInlineTemplate : DSESObject


@property(nonatomic) DSESCustomFields* customFields;
/* Complex element contains the details on the documents in the envelope. [optional]
 */
@property(nonatomic) NSArray<DSESDocument>* documents;

@property(nonatomic) DSESEnvelope* envelope;

@property(nonatomic) DSESRecipients* recipients;
/* Specifies the order in which templates are overlaid. [optional]
 */
@property(nonatomic) NSString* sequence;

@end