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


#import <DSESNameValue.h>
@protocol DSESNameValue;
@class DSESNameValue;



@protocol DSESDocumentFieldsInformation
@end

@interface DSESDocumentFieldsInformation : DSESObject

/* The array of name/value custom data strings to be added to a document. Custom document field information is returned in the status, but otherwise is not used by DocuSign. The array contains the elements:   * name - A string that can be a maximum of 50 characters.  * value - A string that can be a maximum of 200 characters.  *IMPORTANT*: If you are using xml, the name/value pair is contained in a nameValue element.   [optional]
 */
@property(nonatomic) NSArray<DSESNameValue>* documentFields;

@end
