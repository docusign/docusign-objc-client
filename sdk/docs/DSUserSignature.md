# DSUserSignature

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**adoptedDateTime** | **NSString*** | The date and time the user adopted their signature. | [optional] 
**createdDateTime** | **NSString*** | Indicates the date and time the item was created. | [optional] 
**dateStampProperties** | [**DSDateStampProperties***](DSDateStampProperties.md) |  | [optional] 
**errorDetails** | [**DSErrorDetails***](DSErrorDetails.md) |  | [optional] 
**externalID** | **NSString*** |  | [optional] 
**imageType** | **NSString*** |  | [optional] 
**initials150ImageId** | **NSString*** |  | [optional] 
**initialsImageUri** | **NSString*** | Contains the URI for an endpoint that you can use to retrieve the initials image. | [optional] 
**isDefault** | **NSString*** |  | [optional] 
**phoneticName** | **NSString*** |  | [optional] 
**signature150ImageId** | **NSString*** |  | [optional] 
**signatureFont** | **NSString*** | The font type for the signature, if the signature is not drawn. The supported font types are:  \&quot;7_DocuSign\&quot;, \&quot;1_DocuSign\&quot;, \&quot;6_DocuSign\&quot;, \&quot;8_DocuSign\&quot;, \&quot;3_DocuSign\&quot;, \&quot;Mistral\&quot;, \&quot;4_DocuSign\&quot;, \&quot;2_DocuSign\&quot;, \&quot;5_DocuSign\&quot;, \&quot;Rage Italic\&quot;  | [optional] 
**signatureId** | **NSString*** | Specifies the signature ID associated with the signature name. You can use the signature ID in the URI in place of the signature name, and the value stored in the &#x60;signatureName&#x60; property in the body is used. This allows the use of special characters (such as \&quot;&amp;\&quot;, \&quot;&lt;\&quot;, \&quot;&gt;\&quot;) in a the signature name. Note that with each update to signatures, the returned signature ID might change, so the caller will need to trigger off the signature name to get the new signature ID. | [optional] 
**signatureImageUri** | **NSString*** | Contains the URI for an endpoint that you can use to retrieve the signature image. | [optional] 
**signatureInitials** | **NSString*** |  The initials associated with the signature. | [optional] 
**signatureName** | **NSString*** | Specifies the user signature name. | [optional] 
**signatureType** | **NSString*** |  | [optional] 
**stampFormat** | **NSString*** |  | [optional] 
**stampImageUri** | **NSString*** |  | [optional] 
**stampSizeMM** | **NSString*** |  | [optional] 
**stampType** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


