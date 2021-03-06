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


#import <DSESConditionalRecipientRuleCondition.h>
#import <DSESRecipientGroup.h>
@protocol DSESConditionalRecipientRuleCondition;
@class DSESConditionalRecipientRuleCondition;
@protocol DSESRecipientGroup;
@class DSESRecipientGroup;



@protocol DSESConditionalRecipientRule
@end

@interface DSESConditionalRecipientRule : DSESObject

/*  [optional]
 */
@property(nonatomic) NSArray<DSESConditionalRecipientRuleCondition>* conditions;
/*  [optional]
 */
@property(nonatomic) NSString* order;

@property(nonatomic) DSESRecipientGroup* recipientGroup;
/* Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document. [optional]
 */
@property(nonatomic) NSString* recipientId;

@end
