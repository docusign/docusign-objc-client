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


#import <DSESMoney.h>
#import <DSESPaymentLineItem.h>
#import <DSESPropertyMetadata.h>
@protocol DSESMoney;
@class DSESMoney;
@protocol DSESPaymentLineItem;
@class DSESPaymentLineItem;
@protocol DSESPropertyMetadata;
@class DSESPropertyMetadata;



@protocol DSESPaymentDetails
@end

@interface DSESPaymentDetails : DSESObject

/*  [optional]
 */
@property(nonatomic) NSArray<NSString*>* allowedPaymentMethods;
/*  [optional]
 */
@property(nonatomic) NSString* chargeId;
/*  [optional]
 */
@property(nonatomic) NSString* currencyCode;

@property(nonatomic) DSESPropertyMetadata* currencyCodeMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* customerId;
/*  [optional]
 */
@property(nonatomic) NSString* customMetadata;
/*  [optional]
 */
@property(nonatomic) NSNumber* customMetadataRequired;
/*  [optional]
 */
@property(nonatomic) NSString* gatewayAccountId;

@property(nonatomic) DSESPropertyMetadata* gatewayAccountIdMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* gatewayDisplayName;
/*  [optional]
 */
@property(nonatomic) NSString* gatewayName;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESPaymentLineItem>* lineItems;
/*  [optional]
 */
@property(nonatomic) NSString* paymentOption;
/*  [optional]
 */
@property(nonatomic) NSString* paymentSourceId;
/* Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. [optional]
 */
@property(nonatomic) NSString* status;

@property(nonatomic) DSESMoney* total;

@end
