# DSRadio

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
**errorDetails** | [**DSErrorDetails***](DSErrorDetails.md) |  | [optional] 
**locked** | **NSString*** | When set to **true**, the signer cannot change the data of the custom tab. | [optional] 
**pageNumber** | **NSString*** | Specifies the page number on which the tab is located. | [optional] 
**required** | **NSString*** | When set to **true**, the signer is required to fill out this tab | [optional] 
**selected** | **NSString*** | When set to **true**, the radio button is selected. | [optional] 
**tabId** | **NSString*** | The unique identifier for the tab. The tabid can be retrieved with the [ML:GET call].      | [optional] 
**tabOrder** | **NSString*** |  | [optional] 
**value** | **NSString*** | Specifies the value of the tab.  | [optional] 
**xPosition** | **NSString*** | This indicates the horizontal offset of the object on the page. DocuSign uses 72 DPI when determining position. | [optional] 
**yPosition** | **NSString*** | This indicates the vertical offset of the object on the page. DocuSign uses 72 DPI when determining position. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


