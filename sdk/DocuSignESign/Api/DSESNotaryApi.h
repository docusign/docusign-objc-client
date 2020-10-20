#import <Foundation/Foundation.h>
#import <DSESErrorDetails.h>
#import <DSESNotaryJournalList.h>
#import <DSESApi.h>

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



@interface DSESNotaryApi_ListNotaryJournalsOptions : DSESObject 
    /*
    * count 
    */
    @property NSString* count;

    /*
    * searchText 
    */
    @property NSString* searchText;

    /*
    * startPosition 
    */
    @property NSString* startPosition;
@end


@interface DSESNotaryApi: NSObject <DSESApi>

extern NSString* kDSESNotaryApiErrorDomain;
extern NSInteger kDSESNotaryApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(DSESApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get notary jurisdictions for a user
/// 
///
///
///
/// @param DSESNotaryApi_ListNotaryJournalsOptions Options for modifying the request.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
///
/// @return DSESNotaryJournalList*
-(NSURLSessionTask*) listNotaryJournalsWithCount:
    (DSESNotaryApi_ListNotaryJournalsOptions*) options
    completionHandler: (void (^)(DSESNotaryJournalList* output, NSError* error)) handler;


@end
