#import <Foundation/Foundation.h>
#import "DSObject.h"
#import "DocuSignESign/DSApiClient.h"

@protocol DSTestConfig
@end

@interface DSTestConfig : DSObject

/* username. [Required for Legacy Auth]
 */
@property(nonatomic) NSString* username;

/* password. [Required for Legacy Auth]
 */
@property(nonatomic) NSString* password;

/* headerKey. [Required for Legacy Auth]
 */
@property(nonatomic) NSString* headerKey;

/* headerValue. [Required for Legacy Auth]
 */
@property(nonatomic) NSString* headerValue;

/* headerKey. [Required for JWT Auth]
 */
@property(nonatomic) NSString* userId;

/* headerValue. [Required for JWT Auth]
 */
@property(nonatomic) NSString* oauthBasePath;

/* headerValue. [Required for JWT Auth]
 */
@property(nonatomic) NSString* privateKeyFilename;

/* headerValue. [Required for JWT Auth]
 */
@property(nonatomic) NSInteger jwtTokenExpiresInSeconds;

/* integratorKey. [Required]
 */
@property(nonatomic) NSString* integratorKey;

/* accountId. [Optional]
 */
@property(nonatomic) NSString* accountId;

/* envelopeId. [Optional]
 */
@property(nonatomic) NSString* envelopeId;

/* templateId. [Optional]
 */
@property(nonatomic) NSString* templateId;

/* host. [Optional]
 */
@property(nonatomic) NSString* host;

/* returnUrl. [Optional]
 */
@property(nonatomic) NSString* returnUrl;

/* recipientEmail. [Optional]
 */
@property(nonatomic) NSString* recipientEmail;

/* recipientName. [Optional]
 */
@property(nonatomic) NSString* recipientName;

/* templateRoleName. [Optional]
 */
@property(nonatomic) NSString* templateRoleName;

/* clientUserId. [Optional]
 */
@property(nonatomic) NSString* clientUserId;

/* apiClient. [Optional]
 */
@property(nonatomic) DSApiClient* apiClient;

- (void)initialize;

@end
