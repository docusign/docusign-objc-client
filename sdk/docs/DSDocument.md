# DSDocument

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**applyAnchorTabs** | **NSString*** | Reserved: TBD | [optional] 
**display** | **NSString*** |  | [optional] 
**documentBase64** | **NSString*** | The document’s bytes. This field can be used to include a base64 version of the document bytes within an envelope definition instead of sending the document using a multi-part HTTP request. The maximum document size is smaller if this field is used due to the overhead of the base64 encoding. | [optional] 
**documentFields** | [**NSArray&lt;DSNameValue&gt;***](DSNameValue.md) |  | [optional] 
**documentGroup** | **NSString*** |  | [optional] 
**documentId** | **NSString*** | Specifies the document ID number that the tab is placed on. This must refer to an existing Document&#39;s ID attribute. | [optional] 
**encryptedWithKeyManager** | **NSString*** | When set to **true**, the document is been already encrypted by the sender for use with the DocuSign Key Manager Security Appliance.   | [optional] 
**fileExtension** | **NSString*** | The file extension type of the document. If the document is not a PDF it is converted to a PDF.   | [optional] 
**includeInDownload** | **NSString*** |  | [optional] 
**matchBoxes** | [**NSArray&lt;DSMatchBox&gt;***](DSMatchBox.md) | Matchboxes define areas in a document for document matching when you are creating envelopes. They are only used when you upload and edit a template.   A matchbox consists of 5 elements:  * pageNumber - The document page number  on which the matchbox will appear.  * xPosition - The x position of the matchbox on a page.  * yPosition - The y position of the matchbox on a page. * width - The width of the matchbox.  * height - The height of the matchbox.   | [optional] 
**name** | **NSString*** |  | [optional] 
**order** | **NSString*** |  | [optional] 
**pages** | **NSString*** |  | [optional] 
**password** | **NSString*** |  | [optional] 
**remoteUrl** | **NSString*** | The file id from the cloud storage service where the document is located. This information is returned using [ML:GET /folders] or [ML:/folders/{folderid}].  | [optional] 
**signerMustAcknowledge** | **NSString*** |  | [optional] 
**templateLocked** | **NSString*** | When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  | [optional] 
**templateRequired** | **NSString*** | When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. | [optional] 
**transformPdfFields** | **NSString*** | When set to **true**, PDF form field data is transformed into document tab values when the PDF form field name matches the DocuSign custom tab tabLabel. The resulting PDF form data is also returned in the PDF meta data when requesting the document PDF. See the [ML:Transform PDF Fields] section for more information about how fields are transformed into DocuSign tabs.  | [optional] 
**uri** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


