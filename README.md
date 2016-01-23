# DocuSign Objective-C Client

You can sign up for a free [developer sandbox](https://www.docusign.com/developer-center).

Requirements
============

Xcode 6.2 and later.  

Installation
============

### Cocoapods Install

Create a podfile, run pod install, then use the `.xcworkspace` project file moving forward. To use the clients in this manner, do the following:

   1. At the command line run the following RubyGems command to install cocoapods (note: this might require sudo):
   `$ gem install cocoapods`

   2. Create a file in your root project directory called `Podfile` with the following content.  Make sure to replace the two references to PROJECT with your project name:
   
```
	source 'https://github.com/CocoaPods/Specs.git'
	source 'https://github.com/Artsy/Specs.git'

	platform :ios, '8.0'
	inhibit_all_warnings!

	target 'PROJECT’ do
		xcodeproj 'PROJECT’

		pod 'DocuSign.eSign', '~> 1.0.1'
	end

	post_install do |installer|
		installer.pods_project.targets.each do |target|
			puts "#{target.name}"
		end
	end
```	

   3. Run the following command in the same directory as your Podfile:
`$ pod install`

**Once you are done installing, close Xcode and open the newly created `.xcworkspace` project file. Make sure you use this work space going forward!**

### Manual Install

Copy the source files directly into your existing project’s source directories and add corresponding import statements.

### Dependencies 

AFNetworking ~> 2.3
JSONModel ~> 1.1
ISO8601 ~> 0.3

Usage
=====

To initialize the client and make the Login API Call:

```objc
#import <DocuSign.eSign/DSApiClient.h>
#import <DocuSign.eSign/DSAuthenticationApi.h>
#import <DocuSign.eSign/DSEnvelopesApi.h>

int main(int argc, char * argv[]) {
        NSString *IntegratorKey = @"[INTEGRATOR_KEY]";
        NSString *username = @"[EMAIL]";
        NSString *password = @"[PASSWORD]";
        
        // create authentication JSON string and header
        NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
        NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
        
        // instantiate api client, configure environment URL and assign auth data
        DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
        sharedConfig.host = @"https://demo.docusign.net/restapi";  // for production change to www
        DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
        [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        __block NSString *accountId = nil;
        
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
        }]; // end login completion block
}
```

See [CoreRecipes.m](https://github.com/docusign/docusign-objc-client/blob/master/test/Recipes/CoreRecipes.m) for more examples.

Testing
=======

Unit tests are available here.  

Support
=======

Feel free to log issues against this client through GitHub.  We also have an active developer community on Stack Overflow, search the **[DocuSignAPI](http://stackoverflow.com/questions/tagged/docusignapi)** tag.

Notes
=======

This version of the client library does not implement all of the DocuSign REST API methods. The current client omits methods in the Accounts, Billing, Cloud Storage, Connect, Groups (Branding), and Templates (Bulk Recipients) categories. The client's methods support the core set of use cases that most integrations will encounter. For a complete list of omitted endpoints, see [Omitted Endpoints](./omitted_endpoints.md).
