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


#import <DSESPropertyMetadata.h>
@protocol DSESPropertyMetadata;
@class DSESPropertyMetadata;



@protocol DSESRecipientEmailNotification
@end

@interface DSESRecipientEmailNotification : DSESObject

/* Specifies the email body of the message sent to the recipient.   Maximum length: 10000 characters.  [optional]
 */
@property(nonatomic) NSString* emailBody;

@property(nonatomic) DSESPropertyMetadata* emailBodyMetadata;
/* Specifies the subject of the email that is sent to all recipients.  See [ML:Template Email Subject Merge Fields] for information about adding merge field information to the email subject. [optional]
 */
@property(nonatomic) NSString* emailSubject;

@property(nonatomic) DSESPropertyMetadata* emailSubjectMetadata;
/* A simple type enumeration of the language used. The supported languages, with the language value shown in parenthesis, are: Arabic (ar), Armenian (hy), Bahasa Indonesia (id), Bahasa Melayu (ms) Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro),Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk), and Vietnamese (vi). [optional]
 */
@property(nonatomic) NSString* supportedLanguage;

@property(nonatomic) DSESPropertyMetadata* supportedLanguageMetadata;

@end
