# DSCloudStorageProvider

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authenticationUrl** | **NSString*** | The authentication URL used for the cloud storage provider. This information is only included in the response if the user has not passed authentication for the cloud storage provider. If the redirectUrl query string is provided, the returnUrl is appended to the authenticationUrl.  | [optional] 
**errorDetails** | [**DSErrorDetails***](DSErrorDetails.md) |  | [optional] 
**redirectUrl** | **NSString*** | The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains. | [optional] 
**service** | **NSString*** | The service name for the cloud storage provider. | [optional] 
**serviceId** | **NSString*** | The DocuSign generated ID for the cloud storage provider | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


