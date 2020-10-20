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


#import <DSESRecipientRouting.h>
@protocol DSESRecipientRouting;
@class DSESRecipientRouting;



@protocol DSESWorkflowStep
@end

@interface DSESWorkflowStep : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* action;
/*  [optional]
 */
@property(nonatomic) NSString* completedDate;
/*  [optional]
 */
@property(nonatomic) NSString* itemId;

@property(nonatomic) DSESRecipientRouting* recipientRouting;
/* Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. [optional]
 */
@property(nonatomic) NSString* status;
/*  [optional]
 */
@property(nonatomic) NSString* triggeredDate;
/*  [optional]
 */
@property(nonatomic) NSString* triggerOnItem;
/*  [optional]
 */
@property(nonatomic) NSString* workflowStepId;

@end
