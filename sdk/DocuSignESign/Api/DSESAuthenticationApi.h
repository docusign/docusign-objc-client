#import <Foundation/Foundation.h>
#import <DSESErrorDetails.h>
#import <DSESLoginInformation.h>
#import <DSESOauthAccess.h>
#import <DSESSocialAccountInformation.h>
#import <DSESUserPasswordInformation.h>
#import <DSESUserSocialIdResult.h>
#import <DSESApi.h>

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



@interface DSESAuthenticationApi_LoginOptions : DSESObject 
    /*
    * apiPassword When set to **true**, shows the account API password in the response.
    */
    @property NSString* apiPassword;

    /*
    * embedAccountIdGuid 
    */
    @property NSString* embedAccountIdGuid;

    /*
    * includeAccountIdGuid When set to **true**, shows the account ID GUID in the response.
    */
    @property NSString* includeAccountIdGuid;

    /*
    * loginSettings Determines whether login settings are returned in the response.  Valid Values:  * all -  All the login settings are returned.  * none - no login settings are returned.
    */
    @property NSString* loginSettings;
@end


@interface DSESAuthenticationApi: NSObject <DSESApi>

extern NSString* kDSESAuthenticationApiErrorDomain;
extern NSInteger kDSESAuthenticationApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(DSESApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Deletes user's social account.
/// Deletes a social account from a use's account.
///
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
///
/// @param socialAccountInformation  
///
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
///
/// @return void
-(NSURLSessionTask*) deleteSocialLoginWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    socialAccountInformation:(DSESSocialAccountInformation*) socialAccountInformation
    completionHandler: (void (^)(NSError* error)) handler;

/// Creates an authorization token.
/// Creates an OAuth2 authorization server token endpoint.
///
///
///
///
///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
///
/// @return DSESOauthAccess*
-(NSURLSessionTask*) getOAuthTokenWithCompletionHandler: (void (^)(DSESOauthAccess* output, NSError* error)) handler;

/// Gets a list of a user's social accounts.
/// Retrieves a list of social accounts linked to a user's account.
///
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
///
///
///
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
///
/// @return DSESUserSocialIdResult*
-(NSURLSessionTask*) listSocialLoginsWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    completionHandler: (void (^)(DSESUserSocialIdResult* output, NSError* error)) handler;

/// Gets login information for a specified user.
/// Retrieves login information for a specified user. Each account that is associated with the login credentials is listed. You can use the returned information to determine whether a user is authenticated and select an account to use in future operations.    The `baseUrl` property, returned in the response, is used in all future API calls as the base of the request URL. The `baseUrl` property contains the DocuSign server, the API version, and the `accountId` property that is used for the login. This request uses your DocuSign credentials to retrieve the account information.
///
///
///
/// @param DSESAuthenticationApi_LoginOptions Options for modifying the request.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
///
/// @return DSESLoginInformation*
-(NSURLSessionTask*) loginWithApiPassword:
    (DSESAuthenticationApi_LoginOptions*) options
    completionHandler: (void (^)(DSESLoginInformation* output, NSError* error)) handler;

/// Revokes an authorization token.
/// Revokes an OAuth2 authorization server token. After the revocation is complete, a caller must re-authenticate to restore access.
///
///
///
///
///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
///
/// @return void
-(NSURLSessionTask*) revokeOAuthTokenWithCompletionHandler: (void (^)(NSError* error)) handler;

/// Updates the password for a specified user.
/// Updates the password for a specified user.
///
/// @param loginPart Currently, only the value **password** is supported.
///
/// @param userPasswordInformation  
///
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
///
/// @return void
-(NSURLSessionTask*) updatePasswordWithLoginPart:
    (NSString*) loginPart 
    userPasswordInformation:(DSESUserPasswordInformation*) userPasswordInformation
    completionHandler: (void (^)(NSError* error)) handler;

/// Adds social account for a user.
/// Adds a new social account to a user's account.
///
/// @param accountId The external account number (int) or account ID Guid.
/// @param userId The user ID of the user being accessed. Generally this is the user ID of the authenticated user, but if the authenticated user is an Admin on the account, this may be another user the Admin user is accessing.
///
/// @param socialAccountInformation  
///
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
///
/// @return void
-(NSURLSessionTask*) updateSocialLoginWithAccountId:
    (NSString*) accountId 
    userId:(NSString*) userId 
    socialAccountInformation:(DSESSocialAccountInformation*) socialAccountInformation
    completionHandler: (void (^)(NSError* error)) handler;


@end
