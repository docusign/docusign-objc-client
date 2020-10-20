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



@protocol DSESBillingInvoicesResponse
@end

@interface DSESBillingInvoicesResponse : DSESObject

/* Reserved: TBD [optional]
 */
@property(nonatomic) NSArray<DSESBillingInvoice>* billingInvoices;
/* The URI to the next chunk of records based on the search request. If the endPosition is the entire results of the search, this is null.  [optional]
 */
@property(nonatomic) NSString* nextUri;
/* The postal code for the billing address. [optional]
 */
@property(nonatomic) NSString* previousUri;

@end