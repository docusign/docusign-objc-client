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


#import <DSESBillingInvoice.h>
@protocol DSESBillingInvoice;
@class DSESBillingInvoice;



@protocol DSESBillingPlanPreview
@end

@interface DSESBillingPlanPreview : DSESObject

/* Specifies the ISO currency code for the account. [optional]
 */
@property(nonatomic) NSString* currencyCode;

@property(nonatomic) DSESBillingInvoice* invoice;
/*  [optional]
 */
@property(nonatomic) NSString* isProrated;
/*  [optional]
 */
@property(nonatomic) NSString* subtotalAmount;
/*  [optional]
 */
@property(nonatomic) NSString* taxAmount;
/*  [optional]
 */
@property(nonatomic) NSString* totalAmount;

@end