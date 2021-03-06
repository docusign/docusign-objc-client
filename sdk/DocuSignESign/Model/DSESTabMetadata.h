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


#import <DSESMergeField.h>
#import <DSESPropertyMetadata.h>
@protocol DSESMergeField;
@class DSESMergeField;
@protocol DSESPropertyMetadata;
@class DSESPropertyMetadata;



@protocol DSESTabMetadata
@end

@interface DSESTabMetadata : DSESObject

/* An optional string that is used to auto-match tabs to strings located in the documents of an envelope. [optional]
 */
@property(nonatomic) NSString* anchor;
/* When set to **true**, the anchor string does not consider case when matching strings in the document. The default value is **true**. [optional]
 */
@property(nonatomic) NSString* anchorCaseSensitive;
/* Specifies the alignment of anchor tabs with anchor strings. Possible values are **left** or **right**. The default value is **left**. [optional]
 */
@property(nonatomic) NSString* anchorHorizontalAlignment;
/* When set to **true**, this tab is ignored if anchorString is not found in the document. [optional]
 */
@property(nonatomic) NSString* anchorIgnoreIfNotPresent;
/* When set to **true**, the anchor string in this tab matches whole words only (strings embedded in other strings are ignored.) The default value is **true**. [optional]
 */
@property(nonatomic) NSString* anchorMatchWholeWord;
/* Specifies units of the X and Y offset. Units could be pixels, millimeters, centimeters, or inches. [optional]
 */
@property(nonatomic) NSString* anchorUnits;
/* Specifies the X axis location of the tab, in anchorUnits, relative to the anchorString. [optional]
 */
@property(nonatomic) NSString* anchorXOffset;
/* Specifies the Y axis location of the tab, in anchorUnits, relative to the anchorString. [optional]
 */
@property(nonatomic) NSString* anchorYOffset;
/* When set to **true**, the information in the tab is bold. [optional]
 */
@property(nonatomic) NSString* bold;
/*  [optional]
 */
@property(nonatomic) NSString* collaborative;
/* When set to **true**, the field appears normally while the recipient is adding or modifying the information in the field, but the data is not visible (the characters are hidden by asterisks) to any other signer or the sender.  When an envelope is completed the information is available to the sender through the Form Data link in the DocuSign Console.  This setting applies only to text boxes and does not affect list boxes, radio buttons, or check boxes. [optional]
 */
@property(nonatomic) NSString* concealValueOnDocument;
/* The user name of the DocuSign user who created this object. [optional]
 */
@property(nonatomic) NSString* createdByDisplayName;
/* The userId of the DocuSign user who created this object. [optional]
 */
@property(nonatomic) NSString* createdByUserId;
/* The DocuSign generated custom tab ID for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties. [optional]
 */
@property(nonatomic) NSString* customTabId;
/* When set to **true**, disables the auto sizing of single line text boxes in the signing screen when the signer enters data. If disabled users will only be able enter as much data as the text box can hold. By default this is false. This property only affects single line text boxes. [optional]
 */
@property(nonatomic) NSString* disableAutoSize;
/* When set to **true**, the custom tab is editable. Otherwise the custom tab cannot be modified. [optional]
 */
@property(nonatomic) NSString* editable;
/* The font to be used for the tab value. Supported Fonts: Arial, Arial, ArialNarrow, Calibri, CourierNew, Garamond, Georgia, Helvetica,   LucidaConsole, Tahoma, TimesNewRoman, Trebuchet, Verdana, MSGothic, MSMincho, Default. [optional]
 */
@property(nonatomic) NSString* font;
/* The font color used for the information in the tab.  Possible values are: Black, BrightBlue, BrightRed, DarkGreen, DarkRed, Gold, Green, NavyBlue, Purple, or White. [optional]
 */
@property(nonatomic) NSString* fontColor;
/* The font size used for the information in the tab.  Possible values are: Size7, Size8, Size9, Size10, Size11, Size12, Size14, Size16, Size18, Size20, Size22, Size24, Size26, Size28, Size36, Size48, or Size72. [optional]
 */
@property(nonatomic) NSString* fontSize;
/* Height of the tab in pixels. [optional]
 */
@property(nonatomic) NSString* height;
/* When set to **true**, the tab is included in e-mails related to the envelope on which it exists. This applies to only specific tabs. [optional]
 */
@property(nonatomic) NSString* includedInEmail;
/* The original value of the tab. [optional]
 */
@property(nonatomic) NSString* initialValue;
/* When set to **true**, the information in the tab is italic. [optional]
 */
@property(nonatomic) NSString* italic;
/* If the tab is a list, this represents the values that are possible for the tab. [optional]
 */
@property(nonatomic) NSArray<NSString*>* items;
/* The UTC DateTime this object was last modified. This is in ISO8601 format. [optional]
 */
@property(nonatomic) NSString* lastModified;
/* The User Name of the DocuSign user who last modified this object. [optional]
 */
@property(nonatomic) NSString* lastModifiedByDisplayName;
/* The userId of the DocuSign user who last modified this object. [optional]
 */
@property(nonatomic) NSString* lastModifiedByUserId;
/* When set to **true**, the signer cannot change the data of the custom tab. [optional]
 */
@property(nonatomic) NSString* locked;
/* The maximum number of entry characters supported by the custom tab. [optional]
 */
@property(nonatomic) NSString* maximumLength;

@property(nonatomic) DSESMergeField* mergeField;
/*  [optional]
 */
@property(nonatomic) NSString* name;
/*  [optional]
 */
@property(nonatomic) NSString* paymentItemCode;
/*  [optional]
 */
@property(nonatomic) NSString* paymentItemDescription;
/*  [optional]
 */
@property(nonatomic) NSString* paymentItemName;
/* When set to **true** and shared is true, information must be entered in this field to complete the envelope.  [optional]
 */
@property(nonatomic) NSString* requireAll;
/* When set to **true**, the signer is required to fill out this tab [optional]
 */
@property(nonatomic) NSString* required;
/* Optional element for field markup. When set to **true**, the signer is required to initial when they modify a shared field. [optional]
 */
@property(nonatomic) NSString* requireInitialOnSharedChange;
/*  [optional]
 */
@property(nonatomic) NSString* scaleValue;
/*  [optional]
 */
@property(nonatomic) NSString* selected;
/* When set to **true**, this custom tab is shared. [optional]
 */
@property(nonatomic) NSString* shared;
/*  [optional]
 */
@property(nonatomic) NSString* stampType;

@property(nonatomic) DSESPropertyMetadata* stampTypeMetadata;
/* The label string associated with the tab. [optional]
 */
@property(nonatomic) NSString* tabLabel;
/* The type of this tab. Values are: Approve, CheckBox, Company, Date, DateSigned, Decline, Email, EmailAddress, EnvelopeId, FirstName, Formula, FullName, InitialHere, InitialHereOptional, LastName, List, Note, Number, Radio, SignerAttachment, SignHere, SignHereOptional, Ssn, Text, Title, Zip5, or Zip5Dash4. [optional]
 */
@property(nonatomic) NSString* type;
/* When set to **true**, the information in the tab is underlined. [optional]
 */
@property(nonatomic) NSString* underline;
/* The message displayed if the custom tab fails input validation (either custom of embedded). [optional]
 */
@property(nonatomic) NSString* validationMessage;
/* A regular expression used to validate input for the tab. [optional]
 */
@property(nonatomic) NSString* validationPattern;
/* Width of the tab in pixels. [optional]
 */
@property(nonatomic) NSString* width;

@end
