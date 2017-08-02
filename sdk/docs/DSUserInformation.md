# DSUserInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountManagementGranular** | [**DSUserAccountManagementGranularInformation***](DSUserAccountManagementGranularInformation.md) |  | [optional] 
**activationAccessCode** | **NSString*** | The activation code the new user must enter when activating their account. | [optional] 
**createdDateTime** | **NSString*** | Indicates the date and time the item was created. | [optional] 
**customSettings** | [**NSArray&lt;DSNameValue&gt;***](DSNameValue.md) | The name/value pair information for the user custom setting. | [optional] 
**email** | **NSString*** |  | [optional] 
**enableConnectForUser** | **NSString*** | Specifies whether the user is enabled for updates from DocuSign Connect. Valid values: true or false. | [optional] 
**errorDetails** | [**DSErrorDetails***](DSErrorDetails.md) |  | [optional] 
**firstName** | **NSString*** | The user’s first name.  Maximum Length: 50 characters. | [optional] 
**forgottenPasswordInfo** | [**DSForgottenPasswordInformation***](DSForgottenPasswordInformation.md) |  | [optional] 
**groupList** | [**NSArray&lt;DSGroup&gt;***](DSGroup.md) | A list of the group information for groups to add the user to. Group information can be found by calling [ML:GET group information]. The only required parameter is groupId.   The parameters are:  * groupId – The DocuSign group ID for the group. * groupName – The name of the group * permissionProfileId – The ID of the permission profile associated with the group. * groupType – The group type.  | [optional] 
**homeAddress** | [**DSAddressInformationV2***](DSAddressInformationV2.md) |  | [optional] 
**initialsImageUri** | **NSString*** | Contains the URI for an endpoint that you can use to retrieve the initials image. | [optional] 
**isAdmin** | **NSString*** | Determines if the feature set is actively set as part of the plan. | [optional] 
**lastLogin** | **NSString*** | Shows the date-time when the user last logged on to the system. | [optional] 
**lastName** | **NSString*** | The user’s last name.  Maximum Length: 50 characters. | [optional] 
**loginStatus** | **NSString*** | Shows the current status of the user’s password. Possible values are:   * password_reset * password_active * password_expired * password_locked * password_reset_failed   | [optional] 
**middleName** | **NSString*** | The user’s middle name.  Maximum Length: 50 characters. | [optional] 
**password** | **NSString*** |  | [optional] 
**passwordExpiration** | **NSString*** |  | [optional] 
**permissionProfileId** | **NSString*** |  | [optional] 
**permissionProfileName** | **NSString*** |  | [optional] 
**profileImageUri** | **NSString*** |  | [optional] 
**sendActivationOnInvalidLogin** | **NSString*** | When set to **true**, specifies that an additional activation email is sent to the user if they fail a log on before activating their account.  | [optional] 
**signatureImageUri** | **NSString*** | Contains the URI for an endpoint that you can use to retrieve the signature image. | [optional] 
**suffixName** | **NSString*** | The suffix for the user&#39;s name.   Maximum Length: 50 characters.  | [optional] 
**title** | **NSString*** | The title of the user. | [optional] 
**uri** | **NSString*** |  | [optional] 
**userId** | **NSString*** |  | [optional] 
**userName** | **NSString*** |  | [optional] 
**userProfileLastModifiedDate** | **NSString*** |  | [optional] 
**userSettings** | [**NSArray&lt;DSNameValue&gt;***](DSNameValue.md) |  The name/value pair information for user settings. These determine the actions that a user can take in the account. The &#x60;[ML:userSettings]&#x60; are listed and described below. | [optional] 
**userStatus** | **NSString*** |  | [optional] 
**userType** | **NSString*** |  | [optional] 
**workAddress** | [**DSAddressInformationV2***](DSAddressInformationV2.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


