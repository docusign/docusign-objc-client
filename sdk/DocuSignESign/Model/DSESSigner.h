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


#import <DSESAuthenticationStatus.h>
#import <DSESDocumentVisibility.h>
#import <DSESErrorDetails.h>
#import <DSESFeatureAvailableMetadata.h>
#import <DSESIdCheckInformationInput.h>
#import <DSESOfflineAttributes.h>
#import <DSESPropertyMetadata.h>
#import <DSESRecipientAdditionalNotification.h>
#import <DSESRecipientAttachment.h>
#import <DSESRecipientEmailNotification.h>
#import <DSESRecipientIdentityVerification.h>
#import <DSESRecipientPhoneAuthentication.h>
#import <DSESRecipientProofFile.h>
#import <DSESRecipientSMSAuthentication.h>
#import <DSESRecipientSignatureInformation.h>
#import <DSESRecipientSignatureProvider.h>
#import <DSESSocialAuthentication.h>
#import <DSESTabs.h>
#import <DSESUserInfo.h>
@protocol DSESAuthenticationStatus;
@class DSESAuthenticationStatus;
@protocol DSESDocumentVisibility;
@class DSESDocumentVisibility;
@protocol DSESErrorDetails;
@class DSESErrorDetails;
@protocol DSESFeatureAvailableMetadata;
@class DSESFeatureAvailableMetadata;
@protocol DSESIdCheckInformationInput;
@class DSESIdCheckInformationInput;
@protocol DSESOfflineAttributes;
@class DSESOfflineAttributes;
@protocol DSESPropertyMetadata;
@class DSESPropertyMetadata;
@protocol DSESRecipientAdditionalNotification;
@class DSESRecipientAdditionalNotification;
@protocol DSESRecipientAttachment;
@class DSESRecipientAttachment;
@protocol DSESRecipientEmailNotification;
@class DSESRecipientEmailNotification;
@protocol DSESRecipientIdentityVerification;
@class DSESRecipientIdentityVerification;
@protocol DSESRecipientPhoneAuthentication;
@class DSESRecipientPhoneAuthentication;
@protocol DSESRecipientProofFile;
@class DSESRecipientProofFile;
@protocol DSESRecipientSMSAuthentication;
@class DSESRecipientSMSAuthentication;
@protocol DSESRecipientSignatureInformation;
@class DSESRecipientSignatureInformation;
@protocol DSESRecipientSignatureProvider;
@class DSESRecipientSignatureProvider;
@protocol DSESSocialAuthentication;
@class DSESSocialAuthentication;
@protocol DSESTabs;
@class DSESTabs;
@protocol DSESUserInfo;
@class DSESUserInfo;



@protocol DSESSigner
@end

@interface DSESSigner : DSESObject

/* If a value is provided, the recipient must enter the value as the access code to view and sign the envelope.   Maximum Length: 50 characters and it must conform to the account's access code format setting.  If blank, but the signer `accessCode` property is set in the envelope, then that value is used.  If blank and the signer `accessCode` property is not set, then the access code is not required. [optional]
 */
@property(nonatomic) NSString* accessCode;

@property(nonatomic) DSESPropertyMetadata* accessCodeMetadata;
/* This Optional attribute indicates that the access code will be added to the email sent to the recipient; this nullifies the Security measure of Access Code on the recipient. [optional]
 */
@property(nonatomic) NSString* addAccessCodeToEmail;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESRecipientAdditionalNotification>* additionalNotifications;

@property(nonatomic) DSESPropertyMetadata* additionalNotificationsMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* agentCanEditEmail;
/*  [optional]
 */
@property(nonatomic) NSString* agentCanEditName;
/*  [optional]
 */
@property(nonatomic) NSString* allowSystemOverrideForLockedRecipient;
/*  [optional]
 */
@property(nonatomic) NSString* autoNavigation;
/* Contains a URI for an endpoint that allows you to easily retrieve bulk recipient information. [optional]
 */
@property(nonatomic) NSString* bulkRecipientsUri;
/* When set to **true**, specifies that the signer can perform the signing ceremony offline. [optional]
 */
@property(nonatomic) NSString* canSignOffline;
/* Specifies whether the recipient is embedded or remote.   If the `clientUserId` property is not null then the recipient is embedded. Note that if the `ClientUserId` property is set and either `SignerMustHaveAccount` or `SignerMustLoginToSign` property of the account settings is set to  **true**, an error is generated on sending.ng.   Maximum length: 100 characters.  [optional]
 */
@property(nonatomic) NSString* clientUserId;
/*  [optional]
 */
@property(nonatomic) NSString* completedCount;
/*  [optional]
 */
@property(nonatomic) NSString* creationReason;
/* An optional array of strings that allows the sender to provide custom data about the recipient. This information is returned in the envelope status but otherwise not used by DocuSign. Each customField string can be a maximum of 100 characters. [optional]
 */
@property(nonatomic) NSArray<NSString*>* customFields;
/* The date and time the recipient declined the document. [optional]
 */
@property(nonatomic) NSString* declinedDateTime;
/* The reason the recipient declined the document. [optional]
 */
@property(nonatomic) NSString* declinedReason;
/*  [optional]
 */
@property(nonatomic) NSString* defaultRecipient;
/* Reserved: For DocuSign use only. [optional]
 */
@property(nonatomic) NSString* deliveredDateTime;
/* Reserved: For DocuSign use only. [optional]
 */
@property(nonatomic) NSString* deliveryMethod;

@property(nonatomic) DSESPropertyMetadata* deliveryMethodMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* designatorId;
/*  [optional]
 */
@property(nonatomic) NSString* designatorIdGuid;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESDocumentVisibility>* documentVisibility;
/* Email id of the recipient. Notification of the document to sign is sent to this email id.   Maximum length: 100 characters.  [optional]
 */
@property(nonatomic) NSString* email;

@property(nonatomic) DSESPropertyMetadata* emailMetadata;

@property(nonatomic) DSESRecipientEmailNotification* emailNotification;
/* Specifies a sender provided valid URL string for redirecting an embedded recipient. When using this option, the embedded recipient still receives an email from DocuSign, just as a remote recipient would. When the document link in the email is clicked the recipient is redirected, through DocuSign, to the supplied URL to complete their actions. When routing to the URL, the sender's system (the server responding to the URL) must request a recipient token to launch a signing session.   If set to `SIGN_AT_DOCUSIGN`, the recipient is directed to an embedded signing or viewing process directly at DocuSign. The signing or viewing action is initiated by the DocuSign system and the transaction activity and Certificate of Completion records will reflect this. In all other ways the process is identical to an embedded signing or viewing operation that is launched by any partner.  It is important to remember that in a typical embedded workflow the authentication of an embedded recipient is the responsibility of the sending application, DocuSign expects that senders will follow their own process for establishing the recipient's identity. In this workflow the recipient goes through the sending application before the embedded signing or viewing process in initiated. However, when the sending application sets `EmbeddedRecipientStartURL=SIGN_AT_DOCUSIGN`, the recipient goes directly to the embedded signing or viewing process bypassing the sending application and any authentication steps the sending application would use. In this case, DocuSign recommends that you use one of the normal DocuSign authentication features (Access Code, Phone Authentication, SMS Authentication, etc.) to verify the identity of the recipient.  If the `clientUserId` property is NOT set, and the `embeddedRecipientStartURL` is set, DocuSign will ignore the redirect URL and launch the standard signing process for the email recipient. Information can be appended to the embedded recipient start URL using merge fields. The available merge fields items are: envelopeId, recipientId, recipientName, recipientEmail, and customFields. The `customFields` property must be set fort the recipient or envelope. The merge fields are enclosed in double brackets.   *Example*:   `http://senderHost/[[mergeField1]]/ beginSigningSession? [[mergeField2]]&[[mergeField3]]`  [optional]
 */
@property(nonatomic) NSString* embeddedRecipientStartURL;

@property(nonatomic) DSESErrorDetails* errorDetails;
/* Specifies the documents that are not visible to this recipient. Document Visibility must be enabled for the account and the `enforceSignerVisibility` property must be set to **true** for the envelope to use this.  When enforce signer visibility is enabled, documents with tabs can only be viewed by signers that have a tab on that document. Recipients that have an administrative role (Agent, Editor, or Intermediaries) or informational role (Certified Deliveries or Carbon Copies) can always see all the documents in an envelope, unless they are specifically excluded using this setting when an envelope is sent. Documents that do not have tabs are always visible to all recipients, unless they are specifically excluded using this setting when an envelope is sent. [optional]
 */
@property(nonatomic) NSArray<NSString*>* excludedDocuments;
/* Reserved: [optional]
 */
@property(nonatomic) NSString* faxNumber;

@property(nonatomic) DSESPropertyMetadata* faxNumberMetadata;
/* The user's first name.  Maximum Length: 50 characters. [optional]
 */
@property(nonatomic) NSString* firstName;

@property(nonatomic) DSESPropertyMetadata* firstNameMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* fullName;

@property(nonatomic) DSESPropertyMetadata* fullNameMetadata;
/* Specifies authentication check by name. The names used here must be the same as the authentication type names used by the account (these name can also be found in the web console sending interface in the Identify list for a recipient,) This overrides any default authentication setting.  *Example*: Your account has ID Check and SMS Authentication available and in the web console Identify list these appear as 'ID Check $' and 'SMS Auth $'. To use ID check in an envelope, the idCheckConfigurationName should be 'ID Check '. If you wanted to use SMS, it would be 'SMS Auth $' and you would need to add you would need to add phone number information to the `smsAuthentication` node. [optional]
 */
@property(nonatomic) NSString* idCheckConfigurationName;

@property(nonatomic) DSESPropertyMetadata* idCheckConfigurationNameMetadata;

@property(nonatomic) DSESIdCheckInformationInput* idCheckInformationInput;

@property(nonatomic) DSESRecipientIdentityVerification* identityVerification;
/* When set to **true** and the envelope recipient creates a DocuSign account after signing, the Manage Account Email Notification settings are used as the default settings for the recipient's account.  [optional]
 */
@property(nonatomic) NSString* inheritEmailNotificationConfiguration;
/* When set to **true**, this signer is a bulk recipient and the recipient information is contained in a bulk recipient file.   Note that when this is true the email and name for the recipient becomes bulk@recipient.com and \"Bulk Recipient\". These fields can not be changed for the bulk recipient.   [optional]
 */
@property(nonatomic) NSString* isBulkRecipient;

@property(nonatomic) DSESPropertyMetadata* isBulkRecipientMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* lastName;

@property(nonatomic) DSESPropertyMetadata* lastNameMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* lockedRecipientPhoneAuthEditable;
/*  [optional]
 */
@property(nonatomic) NSString* lockedRecipientSmsEditable;
/*  [optional]
 */
@property(nonatomic) NSString* name;

@property(nonatomic) DSESPropertyMetadata* nameMetadata;
/*  [optional]
 */
@property(nonatomic) NSString* notaryId;
/* Specifies a note that is unique to this recipient. This note is sent to the recipient via the signing email. The note displays in the signing UI near the upper left corner of the document on the signing screen.  Maximum Length: 1000 characters. [optional]
 */
@property(nonatomic) NSString* note;

@property(nonatomic) DSESPropertyMetadata* noteMetadata;

@property(nonatomic) DSESOfflineAttributes* offlineAttributes;

@property(nonatomic) DSESRecipientPhoneAuthentication* phoneAuthentication;

@property(nonatomic) DSESRecipientProofFile* proofFile;
/* Reserved: [optional]
 */
@property(nonatomic) NSArray<DSESRecipientAttachment>* recipientAttachments;

@property(nonatomic) DSESAuthenticationStatus* recipientAuthenticationStatus;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESFeatureAvailableMetadata>* recipientFeatureMetadata;
/* Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document. [optional]
 */
@property(nonatomic) NSString* recipientId;
/*  [optional]
 */
@property(nonatomic) NSString* recipientIdGuid;
/*  [optional]
 */
@property(nonatomic) NSArray<DSESRecipientSignatureProvider>* recipientSignatureProviders;
/*  [optional]
 */
@property(nonatomic) NSString* recipientSuppliesTabs;
/*  [optional]
 */
@property(nonatomic) NSString* recipientType;

@property(nonatomic) DSESPropertyMetadata* recipientTypeMetadata;
/* When set to **true**, the recipient is required to use the specified ID check method (including Phone and SMS authentication) to validate their identity.  [optional]
 */
@property(nonatomic) NSString* requireIdLookup;

@property(nonatomic) DSESPropertyMetadata* requireIdLookupMetadata;
/* Sets the type of signer certificate required for signing. If left blank, no certificate is required. Only one type of certificate can be set for a signer. The possible values are:  * docusign_express - Requires a DocuSign Express certificate. * safe - Requires a SAFE-BioPharma certificate. * open_trust - Requires an OpenTrust certificate.   **Important**: There are certain rules and restrictions that must be followed when requiring OpenTrust digital signatures. See [ML:OpenTrust Rules and Restrictions] for more information.    [optional]
 */
@property(nonatomic) NSString* requireSignerCertificate;
/* When set to **true**, the signer must print, sign, and upload or fax the signed documents to DocuSign. [optional]
 */
@property(nonatomic) NSString* requireSignOnPaper;
/*  [optional]
 */
@property(nonatomic) NSString* requireUploadSignature;
/* Optional element. Specifies the role name associated with the recipient.<br/><br/>This is required when working with template recipients. [optional]
 */
@property(nonatomic) NSString* roleName;
/* Specifies the routing order of the recipient in the envelope.  [optional]
 */
@property(nonatomic) NSString* routingOrder;

@property(nonatomic) DSESPropertyMetadata* routingOrderMetadata;
/* The date and time the envelope was sent. [optional]
 */
@property(nonatomic) NSString* sentDateTime;

@property(nonatomic) DSESRecipientSignatureInformation* signatureInfo;
/* Reserved: For DocuSign use only.  [optional]
 */
@property(nonatomic) NSString* signedDateTime;
/* When set to **true**, specifies that the signer must sign in all locations. [optional]
 */
@property(nonatomic) NSString* signInEachLocation;

@property(nonatomic) DSESPropertyMetadata* signInEachLocationMetadata;
/* When set to **true** and the feature is enabled in the sender's account, the signing recipient is required to draw signatures and initials at each signature/initial tab ( instead of adopting a signature/initial style or only drawing a signature/initial once). [optional]
 */
@property(nonatomic) NSString* signingGroupId;

@property(nonatomic) DSESPropertyMetadata* signingGroupIdMetadata;
/* The display name for the signing group.   Maximum Length: 100 characters.  [optional]
 */
@property(nonatomic) NSString* signingGroupName;
/* A complex type that contains information about users in the signing group. [optional]
 */
@property(nonatomic) NSArray<DSESUserInfo>* signingGroupUsers;

@property(nonatomic) DSESRecipientSMSAuthentication* smsAuthentication;
/*  Lists the social ID type that can be used for recipient authentication. [optional]
 */
@property(nonatomic) NSArray<DSESSocialAuthentication>* socialAuthentications;
/* Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later. [optional]
 */
@property(nonatomic) NSString* status;
/*  [optional]
 */
@property(nonatomic) NSString* statusCode;
/*  [optional]
 */
@property(nonatomic) NSString* suppressEmails;

@property(nonatomic) DSESTabs* tabs;
/* When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  [optional]
 */
@property(nonatomic) NSString* templateLocked;
/* When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. [optional]
 */
@property(nonatomic) NSString* templateRequired;
/*  [optional]
 */
@property(nonatomic) NSString* totalTabCount;
/*  [optional]
 */
@property(nonatomic) NSString* userId;

@end
