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


#import <DSESAccountAddress.h>
#import <DSESAppStoreReceipt.h>
#import <DSESCreditCardInformation.h>
#import <DSESDirectDebitProcessorInformation.h>
#import <DSESPaymentProcessorInformation.h>
#import <DSESPlanInformation.h>
#import <DSESReferralInformation.h>
@protocol DSESAccountAddress;
@class DSESAccountAddress;
@protocol DSESAppStoreReceipt;
@class DSESAppStoreReceipt;
@protocol DSESCreditCardInformation;
@class DSESCreditCardInformation;
@protocol DSESDirectDebitProcessorInformation;
@class DSESDirectDebitProcessorInformation;
@protocol DSESPaymentProcessorInformation;
@class DSESPaymentProcessorInformation;
@protocol DSESPlanInformation;
@class DSESPlanInformation;
@protocol DSESReferralInformation;
@class DSESReferralInformation;



@protocol DSESBillingPlanInformation
@end

@interface DSESBillingPlanInformation : DSESObject


@property(nonatomic) DSESAppStoreReceipt* appStoreReceipt;

@property(nonatomic) DSESAccountAddress* billingAddress;

@property(nonatomic) DSESCreditCardInformation* creditCardInformation;

@property(nonatomic) DSESDirectDebitProcessorInformation* directDebitProcessorInformation;
/*  [optional]
 */
@property(nonatomic) NSString* downgradeReason;
/*  [optional]
 */
@property(nonatomic) NSString* enableSupport;
/* The number of seats (users) included. [optional]
 */
@property(nonatomic) NSString* includedSeats;
/* Reserved: TBD [optional]
 */
@property(nonatomic) NSString* incrementalSeats;
/*  [optional]
 */
@property(nonatomic) NSString* paymentMethod;

@property(nonatomic) DSESPaymentProcessorInformation* paymentProcessorInformation;

@property(nonatomic) DSESPlanInformation* planInformation;

@property(nonatomic) DSESReferralInformation* referralInformation;
/*  [optional]
 */
@property(nonatomic) NSString* renewalStatus;
/*  [optional]
 */
@property(nonatomic) NSString* saleDiscountAmount;
/*  [optional]
 */
@property(nonatomic) NSString* saleDiscountFixedAmount;
/*  [optional]
 */
@property(nonatomic) NSString* saleDiscountPercent;
/*  [optional]
 */
@property(nonatomic) NSString* saleDiscountPeriods;
/*  [optional]
 */
@property(nonatomic) NSString* saleDiscountSeatPriceOverride;

@end