# The Official DocuSign Objective-C Client 

You can sign up for a free [developer sandbox](https://www.docusign.com/developer-center).

Requirements
============

Xcode 7 or later.  

Installation
============

### CocoaPods Install

Create a podfile, run pod install, then use the `.xcworkspace` project file moving forward. To use the clients in this manner, do the following:

   1. At the command line run the following RubyGems command to install cocoapods (note: this might require sudo):
   `$ gem install cocoapods`

   2. Create a file in your root project directory called `Podfile` with the following content.  Replace the two references to **PROJECT** below with your unique project name:
   
```
	pod 'DocuSignESign', '~> 3.0.1'
```	

   3. Run the following command in the same directory as your Podfile:
`$ pod install`

**Once you are done installing, close Xcode and open the newly created `.xcworkspace` project file. Make sure you use this work space going forward!**

### Manual Install

Copy the source files directly into your existing project’s source directories and add corresponding import statements.

### Dependencies 

 - AFNetworking ~> 2.3
 - JSONModel ~> 1.1
 - ISO8601 ~> 0.3
 - JWT ~> 3.0.0-beta

Usage
=====

To initialize the client and make the Login API Call:

```objc
#import <DocuSignESign/DSApiClient.h>
#import <DocuSignESign/DSAuthenticationApi.h>
#import <DocuSignESign/DSEnvelopesApi.h>

int main(int argc, char * argv[]) {
    NSString *integratorKey = @"<#INTEGRATOR_KEY#>";
    NSString *userId = @"<#USER_ID#>";
    NSString *oauthBasePath = @"<#OAUTH_BASE_PATH#>";
    NSString *privateKeyFileURL = @"<#PRIVATEKEY_FILE_PATH#>";
    NSInteger jwtTokenExpiresInSeconds = 3600;
    NSString *host = @"https://demo.docusign.net/restapi";
    
    // instantiate api client, configure environment URL and assign auth data
    DSApiClient* apiClient = [[DSApiClient alloc] initWithBaseURL:[[NSURL alloc] initWithString:host]];
    [apiClient configure_jwt_authorization_flow:integratorKey
                                         userId:userId
                                  oauthBasePath:oauthBasePath
                              privateKeyFileURL:privateKeyFileURL
                                      expiresIn:jwtTokenExpiresInSeconds
     ];
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Get user account id"];
    
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc] initWithApiClient:apiClient];
    
    // Example of using options
    DSAuthenticationApi_LoginOptions* loginOptions = [[DSAuthenticationApi_LoginOptions alloc] init];
    loginOptions.loginSettings = @"none";
    loginOptions.apiPassword = @"true";
    loginOptions.includeAccountIdGuid = @"true";
    
    __block NSString *newHost = @"";
    __block NSString *accountId = @"";
    
    [authApi loginWithApiPassword:loginOptions completionHandler:^(DSLoginInformation *output, NSError *error) {
        if (output != nil && output.loginAccounts != nil && output.loginAccounts.count > 0) {
            DSLoginAccount* loginAccount = [output.loginAccounts objectAtIndex: 0];
            accountId = loginAccount.accountId;
            newHost = [[loginAccount.baseUrl componentsSeparatedByString:@"/v2"] objectAtIndex:0];

            XCTAssertNotNil(loginAccount.accountId);
        } else if(error !=nil) {
            XCTFail(@"%@", error);
        } else {
            XCTFail(@"Unknow error occured. Please try again later.");
        }
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:1.0 handler:nil];
    
    expectation = [self expectationWithDescription:@"Send envelope"];
    
    // Update ApiCLient with the new base url from login call
    apiClient = [[DSApiClient alloc] initWithBaseURL:[[NSURL alloc] initWithString:newHost]];
    [apiClient configure_jwt_authorization_flow:integratorKey
                                         userId:userId
                                  oauthBasePath:oauthBasePath
                              privateKeyFileURL:privateKeyFileURL
                                      expiresIn:jwtTokenExpiresInSeconds
     ];
    
    // Create envelope with single document, single signer and one signature tab.
    DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
    envDef.emailSubject = @"Please Sign Objc Envelope On Dcoument";
    envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
    
    DSDocument *doc = [[DSDocument alloc] init];
    doc.name = @"Test.pdf";
    doc.documentId = @"1";
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"Test" ofType:@"pdf"];
    NSData *myData = [NSData dataWithContentsOfFile:path];
    doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
    envDef.documents = [NSArray<DSDocument> arrayWithObjects:doc, nil];
    
    // create a signature tab
    DSSignHere *signHere = [[DSSignHere alloc] init];
    signHere.documentId = @"1";
    signHere.pageNumber = @"1";
    signHere.recipientId = @"1";
    signHere.xPosition = @"100";
    signHere.yPosition = @"100";
    
    // Add the tab to the signer.
    DSTabs* tabs = [[DSTabs alloc] init];
    tabs.signHereTabs = [NSArray<DSSignHere> arrayWithObjects:signHere, nil];
    
    // Add a recipient to sign the document
    DSSigner *signer = [[DSSigner alloc] init];
    signer.email = @"<#RECIPIENT_EMAIL#>";
    signer.name = @"<#RECIPIENT_NAME#>";
    signer.recipientId = @"1";
    
    signer.tabs = tabs;
    
    NSArray<DSSigner> *signers = [[NSArray<DSSigner> alloc] initWithObjects:signer, nil];
    
    DSRecipients* recipients = [[DSRecipients alloc] init];
    recipients.signers = signers;
    
    envDef.recipients = recipients;
    
    // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
    envDef.status = @"sent";
    
    // Create and send the envelope
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:apiClient];
    
    DSEnvelopesApi_CreateEnvelopeOptions* createEnvelopeOptions = [[DSEnvelopesApi_CreateEnvelopeOptions alloc] init];
    createEnvelopeOptions.cdseMode = @"true";
    createEnvelopeOptions.mergeRolesOnDraft = @"false";
    
    [envelopesApi createEnvelopeWithAccountId:accountId envelopeDefinition:envDef options:createEnvelopeOptions completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
        
        if (output != nil && output.envelopeId != nil) {
            XCTAssertNotNil(output.envelopeId);
        } else if(error !=nil) {
            XCTFail(@"%@", error);
        } else {
            XCTFail(@"Unknow error occured. Please try again later.");
        }
        
        [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}
```

See [SdkTestsWithJwtAuth.m](https://github.com/docusign/docusign-objc-client/blob/master/test/SdkTests/SdkTestsTests/SdkTestsWithJwtAuth.m) for more examples.

# Authentication

## Service Integrations that use Legacy Header Authentication

([Legacy Header Authentication](https://docs.docusign.com/esign/guide/authentication/legacy_auth.html) uses the X-DocuSign-Authentication header.)

1. Use the [Authentication: login method](https://docs.docusign.com/esign/restapi/Authentication/Authentication/login/) to retrieve the account number **and the baseUrl** for the account.
The url for the login method is www.docusign.net for production and demo.docusign.net for the developer sandbox.
The `baseUrl` field is part of the `loginAccount` object. See the [docs and the loginAccount object](https://docs.docusign.com/esign/restapi/Authentication/Authentication/login/#/definitions/loginAccount)
2. The baseUrl for the selected account, in production, will start with na1, na2, na3, eu1, or something else. Use the baseUrl that is returned to create the *basePath* (see the next step.) Use the basePath for all of your subsequent API calls.
3. As returned by login method, the baseUrl includes the API version and account id. Split the string to obtain the *basePath*, just the server name and api name. Eg, you will receive `https://na1.docusign.net/restapi/v2/accounts/123123123`. You want just `https://na1.docusign.net/restapi` 
4. Instantiate the SDK using the basePath. Eg `ApiClient apiClient = new ApiClient(basePath);`
5. Set the authentication header as shown in the examples by using `Configuration.Default.AddDefaultHeader`

## User Applications that use OAuth Authentication
1. After obtaining a Bearer token, call the [OAuth: Userinfo method](https://docs.docusign.com/esign/guide/authentication/userinfo.html). Obtain the selected account's `base_uri` (server name) field.
The url for the Userinfo method is account-d.docusign.com for the demo/developer environment, and account.docusign.com for the production environment.
1. Combine the base_uri with "/restapi" to create the basePath. The base_uri will start with na1, na2, na3, eu1, or something else. Use the basePath for your subsequent API calls.
4. Instantiate the SDK using the basePath. Eg `ApiClient apiClient = new ApiClient(basePath);`
5. Create the `authentication_value` by combining the `token_type` and `access_token` fields you receive from either an [Authorization Code Grant](https://docs.docusign.com/esign/guide/authentication/oa2_auth_code.html) or [Implicit Grant](https://docs.docusign.com/esign/guide/authentication/oa2_implicit.html) OAuth flow. 
5. Set the authentication header by using `Configuration.Default.AddDefaultHeader('Authorization', authentication_value)`

Testing
=======

Unit tests are available here.  

Support
=======

Feel free to log issues against this client through GitHub.  We also have an active developer community on Stack Overflow, search the [DocuSignAPI](http://stackoverflow.com/questions/tagged/docusignapi) tag.

License
=======

The DocuSign Objc Client is licensed under the following [License](LICENSE).
