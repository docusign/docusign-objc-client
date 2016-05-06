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
	pod 'DocuSignESign', '~> 2.0.0'
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

Testing
=======

Unit tests are available here.  

Support
=======

Feel free to log issues against this client through GitHub.  We also have an active developer community on Stack Overflow, search the [DocuSignAPI](http://stackoverflow.com/questions/tagged/docusignapi) tag.

License
=======

The DocuSign Objc Client is licensed under the following [License](LICENSE).

Notes
=======

This version of the client library does not implement all of the DocuSign REST API methods. The current client omits methods in the Accounts, Billing, Cloud Storage, Connect, Groups (Branding), and Templates (Bulk Recipients) categories. The client's methods support the core set of use cases that most integrations will encounter. For a complete list of omitted endpoints, see [Omitted Endpoints](./omitted_endpoints.md).
