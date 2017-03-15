# DSConnectCustomConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowEnvelopePublish** | **NSString*** | When set to **true**, data is sent to the urlToPublishTo web address. This option can be set to false to stop sending data while maintaining the Connect configuration information. | [optional] 
**allUsers** | **NSString*** | When set to **true**, the tracked envelope and recipient events for all users, including users that are added a later time, are sent through Connect. | [optional] 
**configurationType** | **NSString*** | If merge field&#39;s are being used, specifies the type of the merge field. The only  supported value is **salesforce**. | [optional] 
**connectId** | **NSString*** |  Specifies the DocuSign generated ID for the Connect configuration.   | [optional] 
**enableLog** | **NSString*** | This turns Connect logging on or off. When set to **true**, logging is turned on. | [optional] 
**envelopeEvents** | **NSString*** | A comma separated list of �Envelope� related events that are tracked through Connect. The possible event values are: Sent, Delivered, Completed, Declined, and Voided. | [optional] 
**includeCertificateOfCompletion** | **NSString*** | When set to **true**, the Connect Service includes the Certificate of Completion with completed envelopes.  | [optional] 
**includeCertSoapHeader** | **NSString*** |  | [optional] 
**includeDocumentFields** | **NSString*** | When set to **true**, the Document Fields associated with envelope documents are included in the data. Document Fields are optional custom name-value pairs added to documents using the API.  | [optional] 
**includeDocuments** | **NSString*** | When set to **true**, Connect will send the PDF document along with the update XML. | [optional] 
**includeEnvelopeVoidReason** | **NSString*** | When set to **true**, Connect will include the voidedReason for voided envelopes. | [optional] 
**includeSenderAccountasCustomField** | **NSString*** | When set to **true**, Connect will include the sender account as Custom Field in the data. | [optional] 
**includeTimeZoneInformation** | **NSString*** | When set to **true**, Connect will include the envelope time zone information. | [optional] 
**name** | **NSString*** | The name of the Connect configuration. The name helps identify the configuration in the list. | [optional] 
**recipientEvents** | **NSString*** | A comma separated list of �Recipient� related events that are tracked through Connect. The possible event values are: Sent, Delivered, Completed, Declined, AuthenticationFailed, and AutoResponded. | [optional] 
**requiresAcknowledgement** | **NSString*** | When set to **true**, and a publication message fails to be acknowledged, the message goes back into the queue and the system will retry delivery after a successful acknowledgement is received. If the delivery fails a second time, the message is not returned to the queue for sending until Connect receives a successful acknowledgement and it has been at least 24 hours since the previous retry. There is a maximum of ten retries Alternately, you can use Republish Connect Information to manually republish the envelope information. | [optional] 
**signMessageWithX509Certificate** | **NSString*** | When set to **true**, Connect messages are signed with an X509 certificate. This provides support for 2-way SSL. | [optional] 
**soapNamespace** | **NSString*** | The namespace of the SOAP interface.  The namespace value must be set if useSoapInterface is set to true. | [optional] 
**urlToPublishTo** | **NSString*** | This is the web address and name of your listener or Retrieving Service endpoint. You need to include HTTPS:// in the web address. | [optional] 
**userIds** | **NSString*** | A comma separated list of userIds. This sets the users associated with the tracked envelope and recipient events. When one of the event occurs for a set user, the information is sent through Connect.   ###### Note: If allUsers is set to �false� then you must provide a list of user id�s. | [optional] 
**useSoapInterface** | **NSString*** | When set to **true**, indicates that the &#x60;urlToPublishTo&#x60; property contains a SOAP endpoint. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


