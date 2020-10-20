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
	pod 'DocuSignESign', '~> 4.0.0'
```	

   3. Run the following command in the same directory as your Podfile:
`$ pod install`

**Once you are done installing, close Xcode and open the newly created `.xcworkspace` project file. Make sure you use this work space going forward!**

### Manual Install

Copy the source files directly into your existing project’s source directories and add corresponding import statements.

### Dependencies 

 - AFNetworking ~> 4
 - JSONModel ~> 1.4
 - ISO8601 ~> 0.6
 - JWT ~> 3.0.0-beta.10

# Authentication

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