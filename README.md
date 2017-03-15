# DocuSign Objective-C Client 

You can sign up for a free [developer sandbox](https://www.docusign.com/developer-center).

Requirements
============

Xcode 6.2 or later.  

Installation
============

### CocoaPods Install

Create a podfile, run pod install, then use the `.xcworkspace` project file moving forward. To use the clients in this manner, do the following:

   1. At the command line run the following RubyGems command to install cocoapods (note: this might require sudo):
   `$ gem install cocoapods`

   2. Create a file in your root project directory called `Podfile` with the following content.  Replace the two references to **PROJECT** below with your unique project name:
   
```
	pod 'DocuSignESign', '~> 3.0.0’
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

Usage
=====

To initialize the client and make the Login API Call:

```objc
#import <DocuSignESign/DSApiClient.h>
#import <DocuSignESign/DSAuthenticationApi.h>
#import <DocuSignESign/DSEnvelopesApi.h>

int main(int argc, char * argv[]) {
    NSString *IntegratorKey = @"<#INTEGRATOR_KEY#>";
    NSString *username = @"<#EMAIL#>";
    NSString *password = @"<#PASSWORD#>";
    NSString *host = @"https://demo.docusign.net/restapi";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    // instantiate api client, configure environment URL and assign auth data
    DSApiClient* apiClient = [[DSApiClient alloc] initWithBaseURL:[[NSURL alloc] initWithString:host]];
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc] initWithApiClient:apiClient];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    __block NSString *accountId = nil;
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Sample Signature Request from Template"];

    // Login to get the account for the user (if you have the accountId then skip this part)
    [authApi loginWithCompletionBlock:^(DSLoginInformation *output, NSError *error) {
        if (error) {
            NSLog(@"got error %@", error);
        }
        if (!output) {
            NSLog(@"response can't be nil");
        }
        DSLoginAccount *loginAccount = [output.loginAccounts objectAtIndex: 0];
        accountId = loginAccount.accountId;
	
	// Update ApiCLient with the new base url from login call
        NSString *newHost = [[loginAccount.baseUrl componentsSeparatedByString:@"/v2"] objectAtIndex:0];
        DSApiClient* apiClient = [[DSApiClient alloc] initWithBaseURL:[[NSURL alloc] initWithString:newHost]];
        
        // instantiate a new envelope
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:apiClient];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        // create envelope with single document, single signer and one signature tab
        DSEnvelopeDefinition* envelopeDefinition = [[DSEnvelopeDefinition alloc] init];
        envelopeDefinition.emailSubject = @"[DocuSign ObjC SDK] - Sample Signature Request from Template";
        
        // to use a template we must reference the correct template id
            envelopeDefinition.templateId = @"<#TEMPLATE_ID#>";
        
        // assign recipient to template role by setting name, email, and role name.  Note that the
        // template role name must match the placeholder role name saved in your account template.
        DSTemplateRole* templateRole = [[DSTemplateRole alloc] init];
            templateRole.email = @"<#RECIPIENT_EMAIL#>";
            templateRole.name = @"<#RECIPIENT_NAME#>";
            templateRole.roleName = @"<#ROLE_NAME#>";
        
        // add the role to the envelope and assign valid templateId from your account
        envelopeDefinition.templateRoles = [NSArray<DSTemplateRole> arrayWithObjects:templateRole, nil];;
        
        // set envelope status to "sent" to immediately send signature request, otherwise it's saved as a draft
        envelopeDefinition.status = @"sent";
        
        DSEnvelopesApi_CreateEnvelopeOptions* createEnvelopeOptions = [[DSEnvelopesApi_CreateEnvelopeOptions alloc] init];
        createEnvelopeOptions.cdseMode = @"false";
        createEnvelopeOptions.mergeRolesOnDraft = @"false";
        
        [envelopesApi createEnvelopeWithAccountId:accountId envelopeDefinition:envelopeDefinition options:createEnvelopeOptions completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
            if (output != nil && output.envelopeId != nil) {
                XCTAssertNotNil(output.envelopeId);
            } else if(error !=nil) {
                XCTFail(@"%@", error);
            } else {
                XCTFail(@"Unknow error occured. Please try again later.");
            }
            
        }]; // end createEnvelopeWithAccountId
        
        [expectation fulfill];
    }]; // end login completion block
    
    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}
```

See [SdkTestsTests.m](https://github.com/docusign/docusign-objc-client/blob/master/test/SdkTests/SdkTestsTests/SdkTestsTests.m) for more examples.

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
