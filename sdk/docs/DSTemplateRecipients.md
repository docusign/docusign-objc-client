# DSTemplateRecipients

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agents** | [**NSArray&lt;DSAgent&gt;***](DSAgent.md) | A complex type defining the management and access rights of a recipient assigned assigned as an agent on the document. | [optional] 
**carbonCopies** | [**NSArray&lt;DSCarbonCopy&gt;***](DSCarbonCopy.md) | A complex type containing information about recipients who should receive a copy of the envelope, but does not need to sign it. | [optional] 
**certifiedDeliveries** | [**NSArray&lt;DSCertifiedDelivery&gt;***](DSCertifiedDelivery.md) | A complex type containing information on a recipient the must receive the completed documents for the envelope to be completed, but the recipient does not need to sign, initial, date, or add information to any of the documents. | [optional] 
**currentRoutingOrder** | **NSString*** |  | [optional] 
**editors** | [**NSArray&lt;DSEditor&gt;***](DSEditor.md) |  | [optional] 
**errorDetails** | [**DSErrorDetails***](DSErrorDetails.md) |  | [optional] 
**inPersonSigners** | [**NSArray&lt;DSInPersonSigner&gt;***](DSInPersonSigner.md) | Specifies a signer that is in the same physical location as a DocuSign user who will act as a Signing Host for the transaction. The recipient added is the Signing Host and new separate Signer Name field appears after Sign in person is selected. | [optional] 
**intermediaries** | [**NSArray&lt;DSIntermediary&gt;***](DSIntermediary.md) | Identifies a recipient that can, but is not required to, add name and email information for recipients at the same or subsequent level in the routing order (until subsequent Agents, Editors or Intermediaries recipient types are added). | [optional] 
**recipientCount** | **NSString*** | The list of recipient event statuses that will trigger Connect to send updates to the url. It can be a two-part list with:  * recipientEventStatusCode - The recipient status, this can be Sent, Delivered, Completed, Declined, AuthenticationFailed, and AutoResponded. * includeDocuments - When set to **true**, the envelope time zone information is included in the message. | [optional] 
**signers** | [**NSArray&lt;DSSigner&gt;***](DSSigner.md) | A complex type containing information about the Signer recipient. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


