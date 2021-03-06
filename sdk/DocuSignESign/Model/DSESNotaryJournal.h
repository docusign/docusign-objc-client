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


#import <DSESJurisdiction.h>
#import <DSESNotaryJournalMetaData.h>
@protocol DSESJurisdiction;
@class DSESJurisdiction;
@protocol DSESNotaryJournalMetaData;
@class DSESNotaryJournalMetaData;



@protocol DSESNotaryJournal
@end

@interface DSESNotaryJournal : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* createdDate;
/*  [optional]
 */
@property(nonatomic) NSString* documentName;

@property(nonatomic) DSESJurisdiction* jurisdiction;
/*  [optional]
 */
@property(nonatomic) NSString* notaryJournalId;

@property(nonatomic) DSESNotaryJournalMetaData* notaryJournalMetaData;
/*  [optional]
 */
@property(nonatomic) NSString* signerName;

@end
