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


#import <DSESErrorDetails.h>
#import <DSESMergeField.h>
#import <DSESPropertyMetadata.h>
#import <DSESSmartContractInformation.h>
@protocol DSESErrorDetails;
@class DSESErrorDetails;
@protocol DSESMergeField;
@class DSESMergeField;
@protocol DSESPropertyMetadata;
@class DSESPropertyMetadata;
@protocol DSESSmartContractInformation;
@class DSESSmartContractInformation;



@protocol DSESCheckbox
@end

@interface DSESCheckbox : DSESObject

/*  [optional]
 */
@property(nonatomic) NSString* anchorAllowWhiteSpaceInCharacters;

@property(nonatomic) DSESPropertyMetadata* anchorAllowWhiteSpaceInCharactersMetadata;
/* When set to **true**, the anchor string does not consider case when matching strings in the document. The default value is **true**. [optional]
 */
@property(nonatomic) NSString* anchorCaseSensitive;

@property(nonatomic) DSESPropertyMetadata* anchorCaseSensitiveMetadata;
/* Specifies the alignment of anchor tabs with anchor strings. Possible values are **left** or **right**. The default value is **left**. [optional]
 */
@property(nonatomic) NSString* anchorHorizontalAlignment;

@property(nonatomic) DSESPropertyMetadata* anchorHorizontalAlignmentMetadata;
/* When set to **true**, this tab is ignored if anchorString is not found in the document. [optional]
 */
@property(nonatomic) NSString* anchorIgnoreIfNotPresent;

@property(nonatomic) DSESPropertyMetadata* anchorIgnoreIfNotPresentMetadata;
/* When set to **true**, the anchor string in this tab matches whole words only (strings embedded in other strings are ignored.) The default value is **true**. [optional]
 */
@property(nonatomic) NSString* anchorMatchWholeWord;

@property(nonatomic) DSESPropertyMetadata* anchorMatchWholeWordMetadata;
/* Anchor text information for a radio button. [optional]
 */
@property(nonatomic) NSString* anchorString;

@property(nonatomic) DSESPropertyMetadata* anchorStringMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* anchorTabProcessorVersion;

@property(nonatomic) DSESPropertyMetadata* anchorTabProcessorVersionMetadata;
/* Specifies units of the X and Y offset. Units could be pixels, millimeters, centimeters, or inches. [optional]
 */
@property(nonatomic) NSString* anchorUnits;

@property(nonatomic) DSESPropertyMetadata* anchorUnitsMetadata;
/* Specifies the X axis location of the tab, in anchorUnits, relative to the anchorString. [optional]
 */
@property(nonatomic) NSString* anchorXOffset;

@property(nonatomic) DSESPropertyMetadata* anchorXOffsetMetadata;
/* Specifies the Y axis location of the tab, in anchorUnits, relative to the anchorString. [optional]
 */
@property(nonatomic) NSString* anchorYOffset;

@property(nonatomic) DSESPropertyMetadata* anchorYOffsetMetadata;
/* When set to **true**, the information in the tab is bold. [optional]
 */
@property(nonatomic) NSString* bold;

@property(nonatomic) DSESPropertyMetadata* boldMetadata;
/* For conditional fields this is the TabLabel of the parent tab that controls this tab's visibility. [optional]
 */
@property(nonatomic) NSString* conditionalParentLabel;

@property(nonatomic) DSESPropertyMetadata* conditionalParentLabelMetadata;
/* For conditional fields, this is the value of the parent tab that controls the tab's visibility.  If the parent tab is a Checkbox, Radio button, Optional Signature, or Optional Initial use \"on\" as the value to show that the parent tab is active.  [optional]
 */
@property(nonatomic) NSString* conditionalParentValue;

@property(nonatomic) DSESPropertyMetadata* conditionalParentValueMetadata;
/* The DocuSign generated custom tab ID for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties. [optional]
 */
@property(nonatomic) NSString* customTabId;

@property(nonatomic) DSESPropertyMetadata* customTabIdMetadata;
/* Specifies the document ID number that the tab is placed on. This must refer to an existing Document's ID attribute. [optional]
 */
@property(nonatomic) NSString* documentId;

@property(nonatomic) DSESPropertyMetadata* documentIdMetadata;

@property(nonatomic) DSESErrorDetails* errorDetails;
/* The font to be used for the tab value. Supported Fonts: Arial, Arial, ArialNarrow, Calibri, CourierNew, Garamond, Georgia, Helvetica,   LucidaConsole, Tahoma, TimesNewRoman, Trebuchet, Verdana, MSGothic, MSMincho, Default. [optional]
 */
@property(nonatomic) NSString* font;
/* The font color used for the information in the tab.  Possible values are: Black, BrightBlue, BrightRed, DarkGreen, DarkRed, Gold, Green, NavyBlue, Purple, or White. [optional]
 */
@property(nonatomic) NSString* fontColor;

@property(nonatomic) DSESPropertyMetadata* fontColorMetadata;

@property(nonatomic) DSESPropertyMetadata* fontMetadata;
/* The font size used for the information in the tab.  Possible values are: Size7, Size8, Size9, Size10, Size11, Size12, Size14, Size16, Size18, Size20, Size22, Size24, Size26, Size28, Size36, Size48, or Size72. [optional]
 */
@property(nonatomic) NSString* fontSize;

@property(nonatomic) DSESPropertyMetadata* fontSizeMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* formOrder;

@property(nonatomic) DSESPropertyMetadata* formOrderMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* formPageLabel;

@property(nonatomic) DSESPropertyMetadata* formPageLabelMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* formPageNumber;

@property(nonatomic) DSESPropertyMetadata* formPageNumberMetadata;
/* Height of the tab in pixels. [optional]
 */
@property(nonatomic) NSString* height;

@property(nonatomic) DSESPropertyMetadata* heightMetadata;
/* When set to **true**, the information in the tab is italic. [optional]
 */
@property(nonatomic) NSString* italic;

@property(nonatomic) DSESPropertyMetadata* italicMetadata;
/* When set to **true**, the signer cannot change the data of the custom tab. [optional]
 */
@property(nonatomic) NSString* locked;

@property(nonatomic) DSESPropertyMetadata* lockedMetadata;

@property(nonatomic) DSESMergeField* mergeField;
/*  [optional]
 */
@property(nonatomic) NSString* mergeFieldXml;
/* Specifies the tool tip text for the tab. [optional]
 */
@property(nonatomic) NSString* name;

@property(nonatomic) DSESPropertyMetadata* nameMetadata;
/* Specifies the page number on which the tab is located. [optional]
 */
@property(nonatomic) NSString* pageNumber;

@property(nonatomic) DSESPropertyMetadata* pageNumberMetadata;
/* Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document. [optional]
 */
@property(nonatomic) NSString* recipientId;
/*  [optional]
 */
@property(nonatomic) NSString* recipientIdGuid;

@property(nonatomic) DSESPropertyMetadata* recipientIdGuidMetadata;

@property(nonatomic) DSESPropertyMetadata* recipientIdMetadata;
/* When set to **true**, the signer is required to fill out this tab [optional]
 */
@property(nonatomic) NSString* required;

@property(nonatomic) DSESPropertyMetadata* requiredMetadata;
/* Optional element for field markup. When set to **true**, the signer is required to initial when they modify a shared field. [optional]
 */
@property(nonatomic) NSString* requireInitialOnSharedChange;

@property(nonatomic) DSESPropertyMetadata* requireInitialOnSharedChangeMetadata;
/* When set to **true**, the checkbox is selected. [optional]
 */
@property(nonatomic) NSString* selected;

@property(nonatomic) DSESPropertyMetadata* selectedMetadata;
/* When set to **true**, this custom tab is shared. [optional]
 */
@property(nonatomic) NSString* shared;

@property(nonatomic) DSESPropertyMetadata* sharedMetadata;

@property(nonatomic) DSESSmartContractInformation* smartContractInformation;
/* Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. [optional]
 */
@property(nonatomic) NSString* status;

@property(nonatomic) DSESPropertyMetadata* statusMetadata;
/*  [optional]
 */
@property(nonatomic) NSArray<NSString*>* tabGroupLabels;

@property(nonatomic) DSESPropertyMetadata* tabGroupLabelsMetadata;
/* The unique identifier for the tab. The tabid can be retrieved with the [ML:GET call].      [optional]
 */
@property(nonatomic) NSString* tabId;

@property(nonatomic) DSESPropertyMetadata* tabIdMetadata;
/* The label string associated with the tab. [optional]
 */
@property(nonatomic) NSString* tabLabel;

@property(nonatomic) DSESPropertyMetadata* tabLabelMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* tabOrder;

@property(nonatomic) DSESPropertyMetadata* tabOrderMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* tabType;

@property(nonatomic) DSESPropertyMetadata* tabTypeMetadata;
/* When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  [optional]
 */
@property(nonatomic) NSString* templateLocked;

@property(nonatomic) DSESPropertyMetadata* templateLockedMetadata;
/* When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. [optional]
 */
@property(nonatomic) NSString* templateRequired;

@property(nonatomic) DSESPropertyMetadata* templateRequiredMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* tooltip;

@property(nonatomic) DSESPropertyMetadata* toolTipMetadata;
/* When set to **true**, the information in the tab is underlined. [optional]
 */
@property(nonatomic) NSString* underline;

@property(nonatomic) DSESPropertyMetadata* underlineMetadata;
/* Width of the tab in pixels. [optional]
 */
@property(nonatomic) NSString* width;

@property(nonatomic) DSESPropertyMetadata* widthMetadata;
/* This indicates the horizontal offset of the object on the page. DocuSign uses 72 DPI when determining position. [optional]
 */
@property(nonatomic) NSString* xPosition;

@property(nonatomic) DSESPropertyMetadata* xPositionMetadata;
/* This indicates the vertical offset of the object on the page. DocuSign uses 72 DPI when determining position. [optional]
 */
@property(nonatomic) NSString* yPosition;

@property(nonatomic) DSESPropertyMetadata* yPositionMetadata;

@end
