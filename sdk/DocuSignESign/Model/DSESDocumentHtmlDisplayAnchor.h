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


#import <DSESDocumentHtmlDisplaySettings.h>
@protocol DSESDocumentHtmlDisplaySettings;
@class DSESDocumentHtmlDisplaySettings;



@protocol DSESDocumentHtmlDisplayAnchor
@end

@interface DSESDocumentHtmlDisplayAnchor : DSESObject

/*  [optional]
 */
@property(nonatomic) NSNumber* caseSensitive;

@property(nonatomic) DSESDocumentHtmlDisplaySettings* displaySettings;
/*  [optional]
 */
@property(nonatomic) NSString* endAnchor;
/*  [optional]
 */
@property(nonatomic) NSNumber* removeEndAnchor;
/*  [optional]
 */
@property(nonatomic) NSNumber* removeStartAnchor;
/*  [optional]
 */
@property(nonatomic) NSString* startAnchor;

@end
