#import <Foundation/Foundation.h>
#import "../../../sdk/DocuSignESign/DSObject.h"
#import "../../../sdk/DocuSignESign/DSApiClient.h"

@protocol DSTestConfig
@end

@interface DSTestConfig : DSObject

/* username. [Required]
 */
@property(nonatomic) NSString* username;

/* password. [Required]
 */
@property(nonatomic) NSString* password;

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

/* headerKey. [Required]
 */
@property(nonatomic) NSString* headerKey;

/* headerValue. [Required]
 */
@property(nonatomic) NSString* headerValue;

/* clientUserId. [Optional]
 */
@property(nonatomic) NSString* clientUserId;

/* apiClient. [Optional]
 */
@property(nonatomic) DSApiClient* apiClient;

- (void)initialize;

@end
