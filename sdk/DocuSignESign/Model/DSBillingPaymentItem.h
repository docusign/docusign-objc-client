#import <Foundation/Foundation.h>
#import "DSObject.h"

/**
* DocuSign REST API
* The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.
*
* OpenAPI spec version: v2
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/




@protocol DSBillingPaymentItem
@end

@interface DSBillingPaymentItem : DSObject

/* Reserved: TBD [optional]
 */
@property(nonatomic) NSString* amount;
/*  [optional]
 */
@property(nonatomic) NSString* _description;
/*  [optional]
 */
@property(nonatomic) NSString* paymentDate;
/*  [optional]
 */
@property(nonatomic) NSString* paymentId;
/* When set to **true**, a PDF version of the invoice is available.   To get the PDF, make the call again and change \"Accept:\" in the header to \"Accept: application/pdf\". [optional]
 */
@property(nonatomic) NSString* paymentNumber;

@end