#import "DSAccountsApi.h"
#import "DSQueryParamCollection.h"
#import "DSAccountInformation.h"
#import "DSAccountSettingsInformation.h"
#import "DSAccountSharedAccess.h"
#import "DSAccountSignatureProviders.h"
#import "DSBillingChargeResponse.h"
#import "DSBrand.h"
#import "DSBrandResources.h"
#import "DSBrandResourcesList.h"
#import "DSBrandsRequest.h"
#import "DSBrandsResponse.h"
#import "DSCaptiveRecipientInformation.h"
#import "DSConsumerDisclosure.h"
#import "DSCustomFields.h"
#import "DSENoteConfiguration.h"
#import "DSErrorDetails.h"
#import "DSFileTypeList.h"
#import "DSNewAccountDefinition.h"
#import "DSNewAccountSummary.h"
#import "DSPermissionProfile.h"
#import "DSPermissionProfileInformation.h"
#import "DSPostTransactionsRequest.h"
#import "DSPostTransactionsResponse.h"
#import "DSProvisioningInformation.h"
#import "DSRecipientNamesResponse.h"
#import "DSTabAccountSettings.h"


@implementation DSAccountsApi_CreateOptions
@end
@implementation DSAccountsApi_CreatePermissionProfileOptions
@end
@implementation DSAccountsApi_GetAccountInformationOptions
@end
@implementation DSAccountsApi_GetBillingChargesOptions
@end
@implementation DSAccountsApi_GetBrandOptions
@end
@implementation DSAccountsApi_GetBrandResourcesByContentTypeOptions
@end
@implementation DSAccountsApi_GetConsumerDisclosureDefaultOptions
@end
@implementation DSAccountsApi_GetPermissionProfileOptions
@end
@implementation DSAccountsApi_ListBrandsOptions
@end
@implementation DSAccountsApi_ListPermissionsOptions
@end
@implementation DSAccountsApi_ListRecipientNamesByEmailOptions
@end
@implementation DSAccountsApi_ListSharedAccessOptions
@end
@implementation DSAccountsApi_UpdatePermissionProfileOptions
@end
@implementation DSAccountsApi_UpdateSharedAccessOptions
@end

@interface DSAccountsApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation DSAccountsApi

NSString* kDSAccountsApiErrorDomain = @"DSAccountsApiErrorDomain";
NSInteger kDSAccountsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        DSConfiguration *config = [DSConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[DSApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(DSApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static DSAccountsApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [DSApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Creates new accounts.
/// Creates new DocuSign service accounts.  This is used to create multiple DocuSign accounts with one call. It uses the same information and formats as the normal a  [Accounts:create](accounts_create) call with the information included within a `newAccountRequests` element. A maximum of 100 new accounts can be created at one time.  Note that the structure of the XML request is slightly different than the JSON request, in that the new account information is included in a `newAccountDefinition` property inside the `newAccountRequests` element. Response  The response returns the new account ID, password and the default user information for each newly created account.  A 201 code is returned if the call succeeded.  While the call may have succeed, some of the individual account requests may have failed. In the case of failures to create the account,  an `errorDetails` node is added in the response to each specific request that failed.

/// @param varNewAccountDefinition  (optional)
/// @param DSAccountsApi_CreateOptions Options for modifying the behavior of the function.
///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSNewAccountSummary*
-(NSNumber*) createWithPreviewBillingPlan:

 varNewAccountDefinition:(DSNewAccountDefinition*) varNewAccountDefinition
 options:(DSAccountsApi_CreateOptions*) options
 completionHandler: (void (^)(DSNewAccountSummary* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.previewBillingPlan != nil) {
            queryParams[@"preview_billing_plan"] = options.previewBillingPlan;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = varNewAccountDefinition;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSNewAccountSummary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSNewAccountSummary*)data, error);
                                }
                           }
          ];
}

///
/// Creates one or more brand profile files for the account.
/// Creates one or more brand profile files for the account. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSig`) must be set to **true** for the account to use this call.  An error is returned if `brandId` property for a brand profile is already set for the account. To upload a new version of an existing brand profile, you must delete the profile and then upload the newer version.  When brand profile files are being uploaded, they must be combined into one zip file and the `Content-Type` must be `application/zip`.
/// @param accountId The external account number (int) or account ID Guid.
/// @param brand  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBrandsResponse*
-(NSNumber*) createBrandWithAccountId:
(NSString*) accountId 
 brand:(DSBrand*) brand

 completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = brand;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSBrandsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBrandsResponse*)data, error);
                                }
                           }
          ];
}

///
/// Starts a new eMortgage Transaction
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param postTransactionsRequest  (optional)

///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSPostTransactionsResponse*
-(NSNumber*) createEMortgageTransactionWithAccountId:
(NSString*) accountId 
 postTransactionsRequest:(DSPostTransactionsRequest*) postTransactionsRequest

 completionHandler: (void (^)(DSPostTransactionsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/eMortgage/transactions"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = postTransactionsRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSPostTransactionsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSPostTransactionsResponse*)data, error);
                                }
                           }
          ];
}

///
/// Creates a new permission profile in the specified account.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param permissionProfile  (optional)
/// @param DSAccountsApi_CreatePermissionProfileOptions Options for modifying the behavior of the function.
///  code:201 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSPermissionProfile*
-(NSNumber*) createPermissionProfileWithAccountId:
(NSString*) accountId 
 permissionProfile:(DSPermissionProfile*) permissionProfile
 options:(DSAccountsApi_CreatePermissionProfileOptions*) options
 completionHandler: (void (^)(DSPermissionProfile* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/permission_profiles"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = permissionProfile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSPermissionProfile*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSPermissionProfile*)data, error);
                                }
                           }
          ];
}

///
/// Deletes the specified account.
/// This closes the specified account. You must be an account admin to close your account. Once closed, an account must be reopened by DocuSign.
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) deleteWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Removes a brand.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) deleteBrandWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId 


 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Delete one branding logo.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand./// @param logoType One of **Primary**, **Secondary** or **Email**.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) deleteBrandLogoByTypeWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId  logoType:(NSString*) logoType 


 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'logoType' is set
    if (logoType == nil) {
        NSParameterAssert(logoType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"logoType"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}/logos/{logoType}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }
    if (logoType != nil) {
        pathParams[@"logoType"] = logoType;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Deletes one or more brand profiles.
/// Deletes one or more brand profiles from an account. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSend`) must be set to **true** to use this call.
/// @param accountId The external account number (int) or account ID Guid.
/// @param brandsRequest  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBrandsResponse*
-(NSNumber*) deleteBrandsWithAccountId:
(NSString*) accountId 
 brandsRequest:(DSBrandsRequest*) brandsRequest

 completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = brandsRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSBrandsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBrandsResponse*)data, error);
                                }
                           }
          ];
}

///
/// Deletes the signature for one or more captive recipient records.
/// Deletes the signature for one or more captive recipient records; it is primarily used for testing. This provides a way to reset the signature associated with a client user ID so that a new signature can be created the next time the client user ID is used.
/// @param accountId The external account number (int) or account ID Guid./// @param recipientPart 
/// @param captiveRecipientInformation  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSCaptiveRecipientInformation*
-(NSNumber*) deleteCaptiveRecipientWithAccountId:
(NSString*) accountId  recipientPart:(NSString*) recipientPart 
 captiveRecipientInformation:(DSCaptiveRecipientInformation*) captiveRecipientInformation

 completionHandler: (void (^)(DSCaptiveRecipientInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'recipientPart' is set
    if (recipientPart == nil) {
        NSParameterAssert(recipientPart);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"recipientPart"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/captive_recipients/{recipientPart}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (recipientPart != nil) {
        pathParams[@"recipientPart"] = recipientPart;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = captiveRecipientInformation;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSCaptiveRecipientInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSCaptiveRecipientInformation*)data, error);
                                }
                           }
          ];
}

///
/// Deletes configuration information for the eNote eOriginal integration.
/// 
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) deleteENoteConfigurationWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/settings/enote_configuration"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Deletes a permissions profile within the specified account.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param permissionProfileId 


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) deletePermissionProfileWithAccountId:
(NSString*) accountId  permissionProfileId:(NSString*) permissionProfileId 


 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'permissionProfileId' is set
    if (permissionProfileId == nil) {
        NSParameterAssert(permissionProfileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionProfileId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/permission_profiles/{permissionProfileId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (permissionProfileId != nil) {
        pathParams[@"permissionProfileId"] = permissionProfileId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Retrieves the account information for the specified account.
/// Retrieves the account information for the specified account.  **Response** The `canUpgrade` property contains is a Boolean that indicates whether the account can be upgraded through the API. 
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSAccountsApi_GetAccountInformationOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSAccountInformation*
-(NSNumber*) getAccountInformationWithAccountId:
(NSString*) accountId 

 options:(DSAccountsApi_GetAccountInformationOptions*) options
 completionHandler: (void (^)(DSAccountInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.includeAccountSettings != nil) {
            queryParams[@"include_account_settings"] = options.includeAccountSettings;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSAccountInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSAccountInformation*)data, error);
                                }
                           }
          ];
}

///
/// Returns tab settings list for specified account
/// 
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTabAccountSettings*
-(NSNumber*) getAccountTabSettingsWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(DSTabAccountSettings* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/settings/tabs"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSTabAccountSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTabAccountSettings*)data, error);
                                }
                           }
          ];
}

///
/// Gets list of recurring and usage charges for the account.
/// Retrieves the list of recurring and usage charges for the account. This can be used to determine the charge structure and usage of charge plan items.   Privileges required: account administrator 
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSAccountsApi_GetBillingChargesOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBillingChargeResponse*
-(NSNumber*) getBillingChargesWithAccountId:
(NSString*) accountId 

 options:(DSAccountsApi_GetBillingChargesOptions*) options
 completionHandler: (void (^)(DSBillingChargeResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/billing_charges"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.includeCharges != nil) {
            queryParams[@"include_charges"] = options.includeCharges;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSBillingChargeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBillingChargeResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get information for a specific brand.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand.

/// @param DSAccountsApi_GetBrandOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBrand*
-(NSNumber*) getBrandWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId 

 options:(DSAccountsApi_GetBrandOptions*) options
 completionHandler: (void (^)(DSBrand* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.includeExternalReferences != nil) {
            queryParams[@"include_external_references"] = options.includeExternalReferences;
        }
        if(options.includeLogos != nil) {
            queryParams[@"include_logos"] = options.includeLogos;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSBrand*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBrand*)data, error);
                                }
                           }
          ];
}

///
/// Obtains the specified image for a brand.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand./// @param logoType One of **Primary**, **Secondary** or **Email**.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) getBrandLogoByTypeWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId  logoType:(NSString*) logoType 


 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'logoType' is set
    if (logoType == nil) {
        NSParameterAssert(logoType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"logoType"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}/logos/{logoType}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }
    if (logoType != nil) {
        pathParams[@"logoType"] = logoType;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Returns the specified account's list of branding resources (metadata).
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBrandResourcesList*
-(NSNumber*) getBrandResourcesWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId 


 completionHandler: (void (^)(DSBrandResourcesList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}/resources"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSBrandResourcesList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBrandResourcesList*)data, error);
                                }
                           }
          ];
}

///
/// Returns the specified branding resource file.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand./// @param resourceContentType 

/// @param DSAccountsApi_GetBrandResourcesByContentTypeOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) getBrandResourcesByContentTypeWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId  resourceContentType:(NSString*) resourceContentType 

 options:(DSAccountsApi_GetBrandResourcesByContentTypeOptions*) options
 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'resourceContentType' is set
    if (resourceContentType == nil) {
        NSParameterAssert(resourceContentType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"resourceContentType"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}/resources/{resourceContentType}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }
    if (resourceContentType != nil) {
        pathParams[@"resourceContentType"] = resourceContentType;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.langcode != nil) {
            queryParams[@"langcode"] = options.langcode;
        }
        if(options.returnMaster != nil) {
            queryParams[@"return_master"] = options.returnMaster;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Gets the Electronic Record and Signature Disclosure.
/// Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, for the requested envelope recipient. This might be different than the current account disclosure depending on account settings, such as branding, and when the account disclosure was last updated. An optional query string can be included to return the language for the disclosure.  
/// @param accountId The external account number (int) or account ID Guid./// @param langCode The simple type enumeration the language used in the response. The supported languages, with the language value shown in parenthesis, are:Arabic (ar), Bulgarian (bg), Czech (cs), Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Croatian (hr), Danish (da), Dutch (nl), English US (en), English UK (en_GB), Estonian (et), Farsi (fa), Finnish (fi), French (fr), French Canada (fr_CA), German (de), Greek (el), Hebrew (he), Hindi (hi), Hungarian (hu), Bahasa Indonesia (id), Italian (it), Japanese (ja), Korean (ko), Latvian (lv), Lithuanian (lt), Bahasa Melayu (ms), Norwegian (no), Polish (pl), Portuguese (pt), Portuguese Brazil (pt_BR), Romanian (ro), Russian (ru), Serbian (sr), Slovak (sk), Slovenian (sl), Spanish (es),Spanish Latin America (es_MX), Swedish (sv), Thai (th), Turkish (tr), Ukrainian (uk) and Vietnamese (vi). Additionally, the value can be set to �browser� to automatically detect the browser language being used by the viewer and display the disclosure in that language.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSConsumerDisclosure*
-(NSNumber*) getConsumerDisclosureWithAccountId:
(NSString*) accountId  langCode:(NSString*) langCode 


 completionHandler: (void (^)(DSConsumerDisclosure* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'langCode' is set
    if (langCode == nil) {
        NSParameterAssert(langCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"langCode"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/consumer_disclosure/{langCode}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (langCode != nil) {
        pathParams[@"langCode"] = langCode;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSConsumerDisclosure*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSConsumerDisclosure*)data, error);
                                }
                           }
          ];
}

///
/// Gets the Electronic Record and Signature Disclosure for the account.
/// Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account. You can use an optional query string to set the language for the disclosure.
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSAccountsApi_GetConsumerDisclosureDefaultOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSConsumerDisclosure*
-(NSNumber*) getConsumerDisclosureDefaultWithAccountId:
(NSString*) accountId 

 options:(DSAccountsApi_GetConsumerDisclosureDefaultOptions*) options
 completionHandler: (void (^)(DSConsumerDisclosure* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/consumer_disclosure"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.langCode != nil) {
            queryParams[@"langCode"] = options.langCode;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSConsumerDisclosure*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSConsumerDisclosure*)data, error);
                                }
                           }
          ];
}

///
/// Returns the configuration information for the eNote eOriginal integration.
/// 
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSENoteConfiguration*
-(NSNumber*) getENoteConfigurationWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(DSENoteConfiguration* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/settings/enote_configuration"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSENoteConfiguration*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSENoteConfiguration*)data, error);
                                }
                           }
          ];
}

///
/// Returns a permissions profile in the specified account.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param permissionProfileId 

/// @param DSAccountsApi_GetPermissionProfileOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSPermissionProfile*
-(NSNumber*) getPermissionProfileWithAccountId:
(NSString*) accountId  permissionProfileId:(NSString*) permissionProfileId 

 options:(DSAccountsApi_GetPermissionProfileOptions*) options
 completionHandler: (void (^)(DSPermissionProfile* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'permissionProfileId' is set
    if (permissionProfileId == nil) {
        NSParameterAssert(permissionProfileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionProfileId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/permission_profiles/{permissionProfileId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (permissionProfileId != nil) {
        pathParams[@"permissionProfileId"] = permissionProfileId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSPermissionProfile*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSPermissionProfile*)data, error);
                                }
                           }
          ];
}

///
/// Retrieves the account provisioning information for the account.
/// Retrieves the account provisioning information for the account.



///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSProvisioningInformation*
-(NSNumber*) getProvisioningWithCompletionHandler: 



(void (^)(DSProvisioningInformation* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/provisioning"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSProvisioningInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSProvisioningInformation*)data, error);
                                }
                           }
          ];
}

///
/// Gets a list of brand profiles.
/// Retrieves the list of brand profiles associated with the account and the default brand profiles. The Account Branding feature (accountSettings properties `canSelfBrandSend` and `canSelfBrandSend`)  must be set to **true** for the account to use this call.
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSAccountsApi_ListBrandsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBrandsResponse*
-(NSNumber*) listBrandsWithAccountId:
(NSString*) accountId 

 options:(DSAccountsApi_ListBrandsOptions*) options
 completionHandler: (void (^)(DSBrandsResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.excludeDistributorBrand != nil) {
            queryParams[@"exclude_distributor_brand"] = options.excludeDistributorBrand;
        }
        if(options.includeLogos != nil) {
            queryParams[@"include_logos"] = options.includeLogos;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSBrandsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBrandsResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets a list of custom fields associated with the account.
/// Retrieves a list of envelope custom fields associated with the account. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.  There are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. The list custom field lets the sender select the value of the field from a list you provide.
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSCustomFields*
-(NSNumber*) listCustomFieldsWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(DSCustomFields* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/custom_fields"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSCustomFields*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSCustomFields*)data, error);
                                }
                           }
          ];
}

///
/// Gets a list of permission profiles.
/// Retrieves a list of Permission Profiles. Permission Profiles are a standard set of user permissions that you can apply to individual users or users in a Group. This makes it easier to manage user permissions for a large number of users, without having to change permissions on a user-by-user basis.  Currently, Permission Profiles can only be created and modified in the DocuSign console.
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSAccountsApi_ListPermissionsOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSPermissionProfileInformation*
-(NSNumber*) listPermissionsWithAccountId:
(NSString*) accountId 

 options:(DSAccountsApi_ListPermissionsOptions*) options
 completionHandler: (void (^)(DSPermissionProfileInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/permission_profiles"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSPermissionProfileInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSPermissionProfileInformation*)data, error);
                                }
                           }
          ];
}

///
/// Gets recipient names associated with an email address.
/// Retrieves a list of recipients in the specified account that are associated with a email address supplied in the query string.
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSAccountsApi_ListRecipientNamesByEmailOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSRecipientNamesResponse*
-(NSNumber*) listRecipientNamesByEmailWithAccountId:
(NSString*) accountId 

 options:(DSAccountsApi_ListRecipientNamesByEmailOptions*) options
 completionHandler: (void (^)(DSRecipientNamesResponse* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/recipient_names"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.email != nil) {
            queryParams[@"email"] = options.email;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSRecipientNamesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSRecipientNamesResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets account settings information.
/// Retrieves the account settings information for the specified account.
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSAccountSettingsInformation*
-(NSNumber*) listSettingsWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(DSAccountSettingsInformation* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/settings"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSAccountSettingsInformation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSAccountSettingsInformation*)data, error);
                                }
                           }
          ];
}

///
/// Reserved: Gets the shared item status for one or more users.
/// Reserved: Retrieves shared item status for one or more users and types of items.  Users with account administration privileges can retrieve shared access information for all account users. Users without account administrator privileges can only retrieve shared access information for themselves and the returned information is limited to the retrieving the status of all members of the account that are sharing their folders to the user. This is equivalent to setting the shared=shared_from.
/// @param accountId The external account number (int) or account ID Guid.

/// @param DSAccountsApi_ListSharedAccessOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSAccountSharedAccess*
-(NSNumber*) listSharedAccessWithAccountId:
(NSString*) accountId 

 options:(DSAccountsApi_ListSharedAccessOptions*) options
 completionHandler: (void (^)(DSAccountSharedAccess* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/shared_access"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.count != nil) {
            queryParams[@"count"] = options.count;
        }
        if(options.envelopesNotSharedUserStatus != nil) {
            queryParams[@"envelopes_not_shared_user_status"] = options.envelopesNotSharedUserStatus;
        }
        if(options.folderIds != nil) {
            queryParams[@"folder_ids"] = options.folderIds;
        }
        if(options.itemType != nil) {
            queryParams[@"item_type"] = options.itemType;
        }
        if(options.searchText != nil) {
            queryParams[@"search_text"] = options.searchText;
        }
        if(options.shared != nil) {
            queryParams[@"shared"] = options.shared;
        }
        if(options.startPosition != nil) {
            queryParams[@"start_position"] = options.startPosition;
        }
        if(options.userIds != nil) {
            queryParams[@"user_ids"] = options.userIds;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSAccountSharedAccess*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSAccountSharedAccess*)data, error);
                                }
                           }
          ];
}

///
/// Returns Account available signature providers for specified account.
/// 
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSAccountSignatureProviders*
-(NSNumber*) listSignatureProvidersWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(DSAccountSignatureProviders* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/signatureProviders"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSAccountSignatureProviders*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSAccountSignatureProviders*)data, error);
                                }
                           }
          ];
}

///
/// Gets a list of unsupported file types.
/// Retrieves a list of file types (mime-types and file-extensions) that are not supported for upload through the DocuSign system.
/// @param accountId The external account number (int) or account ID Guid.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSFileTypeList*
-(NSNumber*) listUnsupportedFileTypesWithAccountId:
(NSString*) accountId 


 completionHandler: (void (^)(DSFileTypeList* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/unsupported_file_types"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSFileTypeList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSFileTypeList*)data, error);
                                }
                           }
          ];
}

///
/// Modifies tab settings for specified account
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param tabAccountSettings  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSTabAccountSettings*
-(NSNumber*) updateAccountTabSettingsWithAccountId:
(NSString*) accountId 
 tabAccountSettings:(DSTabAccountSettings*) tabAccountSettings

 completionHandler: (void (^)(DSTabAccountSettings* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/settings/tabs"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = tabAccountSettings;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSTabAccountSettings*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSTabAccountSettings*)data, error);
                                }
                           }
          ];
}

///
/// Updates an existing brand.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand.
/// @param brand  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBrand*
-(NSNumber*) updateBrandWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId 
 brand:(DSBrand*) brand

 completionHandler: (void (^)(DSBrand* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = brand;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSBrand*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBrand*)data, error);
                                }
                           }
          ];
}

///
/// Put one branding logo.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand./// @param logoType One of **Primary**, **Secondary** or **Email**.


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) updateBrandLogoByTypeWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId  logoType:(NSString*) logoType 


 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'logoType' is set
    if (logoType == nil) {
        NSParameterAssert(logoType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"logoType"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}/logos/{logoType}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }
    if (logoType != nil) {
        pathParams[@"logoType"] = logoType;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Uploads a branding resource file.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param brandId The unique identifier of a brand./// @param resourceContentType 


///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSBrandResources*
-(NSNumber*) updateBrandResourcesByContentTypeWithAccountId:
(NSString*) accountId  brandId:(NSString*) brandId  resourceContentType:(NSString*) resourceContentType 


 completionHandler: (void (^)(DSBrandResources* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'brandId' is set
    if (brandId == nil) {
        NSParameterAssert(brandId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"brandId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'resourceContentType' is set
    if (resourceContentType == nil) {
        NSParameterAssert(resourceContentType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"resourceContentType"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/brands/{brandId}/resources/{resourceContentType}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (brandId != nil) {
        pathParams[@"brandId"] = brandId;
    }
    if (resourceContentType != nil) {
        pathParams[@"resourceContentType"] = resourceContentType;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSBrandResources*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSBrandResources*)data, error);
                                }
                           }
          ];
}

///
/// Updates configuration information for the eNote eOriginal integration.
/// 
/// @param accountId The external account number (int) or account ID Guid.
/// @param eNoteConfiguration  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSENoteConfiguration*
-(NSNumber*) updateENoteConfigurationWithAccountId:
(NSString*) accountId 
 eNoteConfiguration:(DSENoteConfiguration*) eNoteConfiguration

 completionHandler: (void (^)(DSENoteConfiguration* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/settings/enote_configuration"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = eNoteConfiguration;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSENoteConfiguration*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSENoteConfiguration*)data, error);
                                }
                           }
          ];
}

///
/// Updates a permission profile within the specified account.
/// 
/// @param accountId The external account number (int) or account ID Guid./// @param permissionProfileId 
/// @param permissionProfile  (optional)
/// @param DSAccountsApi_UpdatePermissionProfileOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSPermissionProfile*
-(NSNumber*) updatePermissionProfileWithAccountId:
(NSString*) accountId  permissionProfileId:(NSString*) permissionProfileId 
 permissionProfile:(DSPermissionProfile*) permissionProfile
 options:(DSAccountsApi_UpdatePermissionProfileOptions*) options
 completionHandler: (void (^)(DSPermissionProfile* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'permissionProfileId' is set
    if (permissionProfileId == nil) {
        NSParameterAssert(permissionProfileId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"permissionProfileId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/permission_profiles/{permissionProfileId}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (permissionProfileId != nil) {
        pathParams[@"permissionProfileId"] = permissionProfileId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.include != nil) {
            queryParams[@"include"] = options.include;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = permissionProfile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSPermissionProfile*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSPermissionProfile*)data, error);
                                }
                           }
          ];
}

///
/// Updates the account settings for an account.
/// Updates the account settings for the specified account.
/// @param accountId The external account number (int) or account ID Guid.
/// @param accountSettingsInformation  (optional)

///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
-(NSNumber*) updateSettingsWithAccountId:
(NSString*) accountId 
 accountSettingsInformation:(DSAccountSettingsInformation*) accountSettingsInformation

 completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/settings"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];


    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = accountSettingsInformation;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                           }
          ];
}

///
/// Reserved: Sets the shared access information for users.
/// Reserved: Sets the shared access information for one or more users.
/// @param accountId The external account number (int) or account ID Guid.
/// @param accountSharedAccess  (optional)
/// @param DSAccountsApi_UpdateSharedAccessOptions Options for modifying the behavior of the function.
///  code:200 message:"Successful response.",
///  code:400 message:"Error encountered."
/// @return DSAccountSharedAccess*
-(NSNumber*) updateSharedAccessWithAccountId:
(NSString*) accountId 
 accountSharedAccess:(DSAccountSharedAccess*) accountSharedAccess
 options:(DSAccountsApi_UpdateSharedAccessOptions*) options
 completionHandler: (void (^)(DSAccountSharedAccess* output, NSError* error)) handler {
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        NSParameterAssert(accountId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accountId"] };
            NSError* error = [NSError errorWithDomain:kDSAccountsApiErrorDomain code:kDSAccountsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/shared_access"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    if (options != nil) {
        if(options.itemType != nil) {
            queryParams[@"item_type"] = options.itemType;
        }
        if(options.userIds != nil) {
            queryParams[@"user_ids"] = options.userIds;
        }
    }

    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = accountSharedAccess;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"DSAccountSharedAccess*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((DSAccountSharedAccess*)data, error);
                                }
                           }
          ];
}


@end
