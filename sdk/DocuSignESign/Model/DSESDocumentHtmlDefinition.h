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


#import <DSESDocumentHtmlDisplayAnchor.h>
@protocol DSESDocumentHtmlDisplayAnchor;
@class DSESDocumentHtmlDisplayAnchor;



@protocol DSESDocumentHtmlDefinition
@end

@interface DSESDocumentHtmlDefinition : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* displayAnchorPrefix;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESDocumentHtmlDisplayAnchor>* displayAnchors;
/*  [optional]
 */
@property(nonatomic) NSString* displayOrder;
/*  [optional]
 */
@property(nonatomic) NSString* displayPageNumber;
/*  [optional]
 */
@property(nonatomic) NSString* documentGuid;
/* Specifies the document ID number that the tab is placed on. This must refer to an existing Document's ID attribute. [optional]
 */
@property(nonatomic) NSString* documentId;
/*  [optional]
 */
@property(nonatomic) NSString* headerLabel;
/*  [optional]
 */
@property(nonatomic) NSString* maxScreenWidth;
/*  [optional]
 */
@property(nonatomic) NSString* removeEmptyTags;
/*  [optional]
 */
@property(nonatomic) NSString* showMobileOptimizedToggle;
/*  [optional]
 */
@property(nonatomic) NSString* source;

@end
