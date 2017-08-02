# DSFirstName

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**anchorCaseSensitive** | **NSString*** | When set to **true**, the anchor string does not consider case when matching strings in the document. The default value is **true**. | [optional] 
**anchorHorizontalAlignment** | **NSString*** | Specifies the alignment of anchor tabs with anchor strings. Possible values are **left** or **right**. The default value is **left**. | [optional] 
**anchorIgnoreIfNotPresent** | **NSString*** | When set to **true**, this tab is ignored if anchorString is not found in the document. | [optional] 
**anchorMatchWholeWord** | **NSString*** | When set to **true**, the anchor string in this tab matches whole words only (strings embedded in other strings are ignored.) The default value is **true**. | [optional] 
**anchorString** | **NSString*** | Anchor text information for a radio button. | [optional] 
**anchorUnits** | **NSString*** | Specifies units of the X and Y offset. Units could be pixels, millimeters, centimeters, or inches. | [optional] 
**anchorXOffset** | **NSString*** | Specifies the X axis location of the tab, in achorUnits, relative to the anchorString. | [optional] 
**anchorYOffset** | **NSString*** | Specifies the Y axis location of the tab, in achorUnits, relative to the anchorString. | [optional] 
**bold** | **NSString*** | When set to **true**, the information in the tab is bold. | [optional] 
**conditionalParentLabel** | **NSString*** | For conditional fields this is the TabLabel of the parent tab that controls this tab&#39;s visibility. | [optional] 
**conditionalParentValue** | **NSString*** | For conditional fields, this is the value of the parent tab that controls the tab&#39;s visibility.  If the parent tab is a Checkbox, Radio button, Optional Signature, or Optional Initial use \&quot;on\&quot; as the value to show that the parent tab is active.  | [optional] 
**customTabId** | **NSString*** | The DocuSign generated custom tab ID for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties. | [optional] 
**documentId** | **NSString*** | Specifies the document ID number that the tab is placed on. This must refer to an existing Document&#39;s ID attribute. | [optional] 
**errorDetails** | [**DSErrorDetails***](DSErrorDetails.md) |  | [optional] 
**font** | **NSString*** | The font to be used for the tab value. Supported Fonts: Arial, Arial, ArialNarrow, Calibri, CourierNew, Garamond, Georgia, Helvetica,   LucidaConsole, Tahoma, TimesNewRoman, Trebuchet, Verdana, MSGothic, MSMincho, Default. | [optional] 
**fontColor** | **NSString*** | The font color used for the information in the tab.  Possible values are: Black, BrightBlue, BrightRed, DarkGreen, DarkRed, Gold, Green, NavyBlue, Purple, or White. | [optional] 
**fontSize** | **NSString*** | The font size used for the information in the tab.  Possible values are: Size7, Size8, Size9, Size10, Size11, Size12, Size14, Size16, Size18, Size20, Size22, Size24, Size26, Size28, Size36, Size48, or Size72. | [optional] 
**italic** | **NSString*** | When set to **true**, the information in the tab is italic. | [optional] 
**mergeField** | [**DSMergeField***](DSMergeField.md) |  | [optional] 
**name** | **NSString*** |  | [optional] 
**pageNumber** | **NSString*** | Specifies the page number on which the tab is located. | [optional] 
**recipientId** | **NSString*** | Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document. | [optional] 
**status** | **NSString*** | Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. | [optional] 
**tabId** | **NSString*** | The unique identifier for the tab. The tabid can be retrieved with the [ML:GET call].      | [optional] 
**tabLabel** | **NSString*** | The label string associated with the tab. | [optional] 
**tabOrder** | **NSString*** |  | [optional] 
**templateLocked** | **NSString*** | When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  | [optional] 
**templateRequired** | **NSString*** | When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. | [optional] 
**underline** | **NSString*** | When set to **true**, the information in the tab is underlined. | [optional] 
**xPosition** | **NSString*** | This indicates the horizontal offset of the object on the page. DocuSign uses 72 DPI when determining position. | [optional] 
**yPosition** | **NSString*** | This indicates the vertical offset of the object on the page. DocuSign uses 72 DPI when determining position. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


