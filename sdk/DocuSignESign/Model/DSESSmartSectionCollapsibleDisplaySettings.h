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





@protocol DSESSmartSectionCollapsibleDisplaySettings
@end

@interface DSESSmartSectionCollapsibleDisplaySettings : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* arrowClosed;
/*  [optional]
 */
@property(nonatomic) NSString* arrowColor;
/*  [optional]
 */
@property(nonatomic) NSString* arrowLocation;
/*  [optional]
 */
@property(nonatomic) NSString* arrowOpen;
/*  [optional]
 */
@property(nonatomic) NSString* arrowSize;
/*  [optional]
 */
@property(nonatomic) NSString* arrowStyle;
/*  [optional]
 */
@property(nonatomic) NSString* containerStyle;
/*  [optional]
 */
@property(nonatomic) NSString* labelStyle;
/*  [optional]
 */
@property(nonatomic) NSNumber* onlyArrowIsClickable;
/*  [optional]
 */
@property(nonatomic) NSString* outerLabelAndArrowStyle;

@end
