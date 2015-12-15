//
//  SDKTestsTests.m
//  SDKTestsTests
//
//  Created by Mike Roseleip on 11/3/15.
//  Copyright © 2015 Mike Roseleip. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <DocuSignESignClient/DSAuthenticationApi.h>
#import <DocuSignESignClient/DSEnvelopesApi.h>
#import <DocuSignESignClient/DSApiClient.h>



NSString *EmailLogin = @"dev.user@docusign.com";
NSString *Password = @"docusign";
NSString *IntegratorKey = @"ROSEY_KEY";
//NSString *BaseUrl = @"http://dsv010331a/restapi";
//NSString *BaseUrl = @"http://DSV010331A/restapi";
NSString *BaseUrl = @"http://192.168.9.173/restapi";

NSString *SignTest1File = @".../../docs/SignTest1.pdf";


NSString *const DS_AUTH = @"<DocuSignCredentials><IntegratorKey>ROSEY_KEY</IntegratorKey><Username>dev.user@docusign.com</Username><Password>docusign</Password></DocuSignCredentials>";
NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";



@interface SDKTestsTests : XCTestCase

@end

@implementation SDKTestsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testGetLogin {
    XCTestExpectation *expectation = [self expectationWithDescription:@"test user login"];
    
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // Example of using options
    DSAuthenticationApi_LoginOptions *loginOptions = [[DSAuthenticationApi_LoginOptions alloc] init];
    loginOptions.loginSettings = @"none";
    loginOptions.apiPassword = @"true";
    loginOptions.includeAccountIdGuid = @"true";
    
    [authApi loginWithCompletionBlock:loginOptions completionHandler:^(DSLoginInformation *output, NSError *error) {
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!output) {
            XCTFail(@"response can't be nil");
        }
        
        XCTAssertTrue(output.loginAccounts.count>0);
        
        DSLoginAccount *loginAccount = [output.loginAccounts objectAtIndex: 0];
        NSLog(@"Account Name: %@", loginAccount.name);
        
        
        NSLog(@"Api Passord: %@", output.apiPassword);
        NSLog(@"Login Accounts: %@", output.loginAccounts);
        
        [expectation fulfill];
        
    }];

    
    
    
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}


- (void) testRequestASignature {
    
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"test Request A Signature - login"];
    
    
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];

    
    __block NSString *accountId = nil;
    
    // Login to get the account for the user (if you have the accountId then skip this part)

    [authApi loginWithCompletionBlock:^(DSLoginInformation *loginInfo, NSError *error) {
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!loginInfo) {
            XCTFail(@"response can't be nil");
        }
        
        XCTAssertTrue(loginInfo.loginAccounts.count>0);
        
        DSLoginAccount *loginAccount = [loginInfo.loginAccounts objectAtIndex: 0];
        NSLog(@"Account Name: %@", loginAccount.name);
        
        
        NSLog(@"Api Passord: %@", loginInfo.apiPassword);
        NSLog(@"Login Accounts: %@", loginInfo.loginAccounts);
        
        accountId = loginAccount.accountId;
        [expectation fulfill];
        
    }];
    
    [self waitForExpectationsWithTimeout:20.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
    NSLog(@"AccountId is %@", accountId);
    


    // Create envelope with single document, single signer and one signature tab.
    DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
    envDef.emailSubject = @"Please Sign my Objc Envelope";
    envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
    
    DSDocument *doc = [[DSDocument alloc] init];
    doc.name = @"TestFile.pdf";
    doc.documentId = @"1";
    
    
    // TODO - improve this - shouldn't need full bundle structure
    //NSArray<NSBundle*> *allBundles = [NSBundle allBundles];
    NSBundle* myBundleByPath = [NSBundle bundleWithPath:@"/Users/mike.roseleip/Library/Developer/Xcode/DerivedData/SDKTests-awvdfohdfiiyteeocefjoubgvnpo/Build/Products/Debug-iphonesimulator/SDKTestsTests.xctest"];
    
    NSArray<NSString*> *paths = [myBundleByPath pathsForResourcesOfType:@"pdf" inDirectory:@"Resources.bundle/Docs"];
    NSString *path = [paths objectAtIndex:0];
    
    NSData *myData = [NSData dataWithContentsOfFile:path];
    doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
    envDef.documents = [NSArray<DSDocument> arrayWithObjects:doc, nil];

    
    // Add a recipient to sign the document
    DSSigner *signer = [[DSSigner alloc] init];
    signer.email = EmailLogin;
    signer.name = @"Pat Developer";
    signer.recipientId = @"1";
    

    // create a signature tab
    DSSignHere *signHere = [[DSSignHere alloc] init];
    signHere.documentId = @"1";
    signHere.pageNumber = @"1";
    signHere.recipientId = @"1";
    signHere.xPosition = @"100";
    signHere.yPosition = @"100";
    
    // Add the tab to the signer.
    signer.tabs = [[DSTabs alloc] init];
    signer.tabs.signHereTabs = [NSArray<DSSignHere> arrayWithObjects:signHere, nil];
    

    
    DSRecipients *recipient = [[DSRecipients alloc] init];

    NSMutableArray<DSSigner> *signers = [[NSMutableArray<DSSigner> alloc]init];
    recipient.signers = signers;
    [signers addObject: signer];
    envDef.recipients = recipient;
    
    
    // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
    envDef.status = @"sent";
    
    NSLog(@"Envelope being sent %@", envDef);
    
    
    expectation = [self expectationWithDescription:@"test Request A Signature - sendEnvelope"];
    
    // Create and send the envelope
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
    [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!output) {
            XCTFail(@"response can't be nil");
        }
        XCTAssertNotNil(output.envelopeId);
        NSLog(@"Envelope Created. ID: %@", output.envelopeId);
        
        [expectation fulfill];
        
        
    }];
    
    
    
    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];

    
}

- (void) testEmbeddedSigning {
    
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"test Request A Signature - login"];
    
    
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    
    __block NSString *accountId = nil;
    // Login to get the account for the user (if you have the accountId then skip this part
    [authApi loginWithCompletionBlock:^(DSLoginInformation *loginInfo, NSError *error) {

        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!loginInfo) {
            XCTFail(@"response can't be nil");
        }
        
        XCTAssertTrue(loginInfo.loginAccounts.count>0);
        
        DSLoginAccount *loginAccount = [loginInfo.loginAccounts objectAtIndex: 0];
        NSLog(@"Account Name: %@", loginAccount.name);
        
        
        NSLog(@"Api Passord: %@", loginInfo.apiPassword);
        NSLog(@"Login Accounts: %@", loginInfo.loginAccounts);
        
        accountId = loginAccount.accountId;
        [expectation fulfill];
        
    }];
    
    [self waitForExpectationsWithTimeout:20.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
    NSLog(@"AccountId is %@", accountId);
    
    
    
    // Create envelope with single document, single signer and one signature tab.
    DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
    envDef.emailSubject = @"Please Sign my Objc Envelope (Embedded Signer)";
    envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
    
    DSDocument *doc = [[DSDocument alloc] init];
    doc.name = @"TestFile.pdf";
    doc.documentId = @"1";
    
    
    // TODO - improve this - shouldn't need full bundle structure
    //NSArray<NSBundle*> *allBundles = [NSBundle allBundles];
    NSBundle* myBundleByPath = [NSBundle bundleWithPath:@"/Users/mike.roseleip/Library/Developer/Xcode/DerivedData/SDKTests-awvdfohdfiiyteeocefjoubgvnpo/Build/Products/Debug-iphonesimulator/SDKTestsTests.xctest"];
    
    NSArray<NSString*> *paths = [myBundleByPath pathsForResourcesOfType:@"pdf" inDirectory:@"Resources.bundle/Docs"];
    NSString *path = [paths objectAtIndex:0];
    
    NSData *myData = [NSData dataWithContentsOfFile:path];
    doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
    envDef.documents = [NSArray<DSDocument> arrayWithObjects:doc, nil];
    
    
    // Add a recipient to sign the document
    DSSigner *signer = [[DSSigner alloc] init];
    signer.email = EmailLogin;
    
    NSString *SignerName = @"Pat TheEmbeddedSigner";
    signer.name = SignerName;
    signer.recipientId = @"1";
    
    // Assigning a client-side id to the sign in an embedded experience.
    NSString *clientUserId = @"2939";
    signer.clientUserId = clientUserId;
    
    
    // create a signature tab
    DSSignHere *signHere = [[DSSignHere alloc] init];
    signHere.documentId = @"1";
    signHere.pageNumber = @"1";
    signHere.recipientId = @"1";
    signHere.xPosition = @"100";
    signHere.yPosition = @"100";
    
    // Add the tab to the signer.
    signer.tabs = [[DSTabs alloc] init];
    signer.tabs.signHereTabs = [NSArray<DSSignHere> arrayWithObjects:signHere, nil];
    
    
    
    DSRecipients *recipient = [[DSRecipients alloc] init];
    
    NSMutableArray<DSSigner> *signers = [[NSMutableArray<DSSigner> alloc]init];
    recipient.signers = signers;
    [signers addObject: signer];
    envDef.recipients = recipient;
    
    
    // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
    envDef.status = @"sent";
    
    NSLog(@"Envelope being sent %@", envDef);
    
    
    expectation = [self expectationWithDescription:@"test Request A Signature - sendEnvelope"];
    
    // Create and send the envelope
    
    __block NSString * envelopeId = nil;
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
    [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
         if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!output) {
            XCTFail(@"response can't be nil");
        }
        XCTAssertNotNil(output.envelopeId);
        envelopeId = output.envelopeId;
        NSLog(@"Envelope Created. ID: %@", output.envelopeId);
        
        [expectation fulfill];
    }];
    
    
    
    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
    expectation = [self expectationWithDescription:@"test embedded signer"];
    
    DSRecipientViewRequest *viewRequest = [[DSRecipientViewRequest alloc] init];
    viewRequest.returnUrl = @"http://www.docusign.com/developer-center";
    viewRequest.clientUserId = clientUserId;
    viewRequest.userName = SignerName;
    viewRequest.email = EmailLogin;
    viewRequest.authenticationMethod = @"email";
    
    
    
    [envelopesApi createRecipientViewWithCompletionBlock:accountId envelopeId:envelopeId recipientViewRequest:viewRequest completionHandler:^(DSViewUrl *output, NSError *error) {
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!output) {
            XCTFail(@"response can't be nil");
        }
        XCTAssertNotNil(output.url);
        
        NSLog(@"URL to Sign: %@", output.url);
        
        [expectation fulfill];
        
    }];
    
    
    
    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];

}


- (void) testDocumentDownload {
    
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"testDocumentDownLoad-Login"];
    
    
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    
    __block NSString *accountId = nil;
    // Login to get the account for the user (if you have the accountId then skip this part
    [authApi loginWithCompletionBlock:^(DSLoginInformation *loginInfo, NSError *error) {
        
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!loginInfo) {
            XCTFail(@"response can't be nil");
        }
        
        XCTAssertTrue(loginInfo.loginAccounts.count>0);
        
        DSLoginAccount *loginAccount = [loginInfo.loginAccounts objectAtIndex: 0];
        NSLog(@"Account Name: %@", loginAccount.name);
        
        
        NSLog(@"Api Passord: %@", loginInfo.apiPassword);
        NSLog(@"Login Accounts: %@", loginInfo.loginAccounts);
        
        accountId = loginAccount.accountId;
        [expectation fulfill];
        
    }];
    
    [self waitForExpectationsWithTimeout:20.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
    NSLog(@"AccountId is %@", accountId);
    
    
    
    // Create envelope with single document, single signer and one signature tab.
    DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
    envDef.emailSubject = @"Please Sign my Objc Envelope (Document Download)";
    envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
    
    DSDocument *doc = [[DSDocument alloc] init];
    doc.name = @"TestFile.pdf";
    doc.documentId = @"1";
    
    
    // TODO - improve this - shouldn't need full bundle structure
    //NSArray<NSBundle*> *allBundles = [NSBundle allBundles];
    NSBundle* myBundleByPath = [NSBundle bundleWithPath:@"/Users/mike.roseleip/Library/Developer/Xcode/DerivedData/SDKTests-awvdfohdfiiyteeocefjoubgvnpo/Build/Products/Debug-iphonesimulator/SDKTestsTests.xctest"];
    
    NSArray<NSString*> *paths = [myBundleByPath pathsForResourcesOfType:@"pdf" inDirectory:@"Resources.bundle/Docs"];
    NSString *path = [paths objectAtIndex:0];
    
    NSData *myData = [NSData dataWithContentsOfFile:path];
    doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
    envDef.documents = [NSArray<DSDocument> arrayWithObjects:doc, nil];
    
    
    // Add a recipient to sign the document
    DSSigner *signer = [[DSSigner alloc] init];
    signer.email = EmailLogin;
    
    NSString *SignerName = @"Pat Signer";
    signer.name = SignerName;
    signer.recipientId = @"1";
    
    // Assigning a client-side id to the sign in an embedded experience.
    NSString *clientUserId = @"2939";
    signer.clientUserId = clientUserId;
    
    
    // create a signature tab
    DSSignHere *signHere = [[DSSignHere alloc] init];
    signHere.documentId = @"1";
    signHere.pageNumber = @"1";
    signHere.recipientId = @"1";
    signHere.xPosition = @"100";
    signHere.yPosition = @"100";
    
    // Add the tab to the signer.
    signer.tabs = [[DSTabs alloc] init];
    signer.tabs.signHereTabs = [NSArray<DSSignHere> arrayWithObjects:signHere, nil];
    
    
    
    DSRecipients *recipient = [[DSRecipients alloc] init];
    
    NSMutableArray<DSSigner> *signers = [[NSMutableArray<DSSigner> alloc]init];
    recipient.signers = signers;
    [signers addObject: signer];
    envDef.recipients = recipient;
    
    
    // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
    envDef.status = @"sent";
    
    NSLog(@"Envelope being sent %@", envDef);
    
    
    expectation = [self expectationWithDescription:@"test Request A Signature - DocumentDownload"];
    
    // Create and send the envelope
    
    __block NSString * envelopeId = nil;
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
    [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!output) {
            XCTFail(@"response can't be nil");
        }
        XCTAssertNotNil(output.envelopeId);
        envelopeId = output.envelopeId;
        NSLog(@"Envelope Created. ID: %@", output.envelopeId);
        
        [expectation fulfill];
    }];
    
    
    
    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
    expectation = [self expectationWithDescription:@"test embedded signer"];
    
    
    // Download the document associated with the envelope
    [envelopesApi getDocumentWithCompletionBlock:accountId envelopeId:envelopeId documentId:@"combined" completionHandler:^(NSURL *output, NSError *error) {
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!output) {
            XCTFail(@"response can't be nil");
        }
        
        

        unsigned long long fileSize = [[[NSFileManager defaultManager] attributesOfItemAtPath:output.path error:nil] fileSize];
        
        XCTAssert(fileSize > 0);
  
        NSLog(@"Document Downloaded Path Created. Path: %@", output);
        

        [expectation fulfill];
    }];
    
    
    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
}


- (void) testlistDocuments {
    
    
    XCTestExpectation *expectation = [self expectationWithDescription:@"testDocumentDownLoad-Login"];
    
    
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    
    __block NSString *accountId = nil;
    // Login to get the account for the user (if you have the accountId then skip this part
    [authApi loginWithCompletionBlock:^(DSLoginInformation *loginInfo, NSError *error) {
        
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!loginInfo) {
            XCTFail(@"response can't be nil");
        }
        
        XCTAssertTrue(loginInfo.loginAccounts.count>0);
        
        DSLoginAccount *loginAccount = [loginInfo.loginAccounts objectAtIndex: 0];
        NSLog(@"Account Name: %@", loginAccount.name);
        
        
        NSLog(@"Api Passord: %@", loginInfo.apiPassword);
        NSLog(@"Login Accounts: %@", loginInfo.loginAccounts);
        
        accountId = loginAccount.accountId;
        [expectation fulfill];
        
    }];
    
    [self waitForExpectationsWithTimeout:20.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
    NSLog(@"AccountId is %@", accountId);
    
    
    
    // Create envelope with single document, single signer and one signature tab.
    DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
    envDef.emailSubject = @"Please Sign my Objc Envelope (Document Download)";
    envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
    
    DSDocument *doc = [[DSDocument alloc] init];
    doc.name = @"TestFile.pdf";
    doc.documentId = @"1";
    
    
    // TODO - improve this - shouldn't need full bundle structure
    //NSArray<NSBundle*> *allBundles = [NSBundle allBundles];
    NSBundle* myBundleByPath = [NSBundle bundleWithPath:@"/Users/mike.roseleip/Library/Developer/Xcode/DerivedData/SDKTests-awvdfohdfiiyteeocefjoubgvnpo/Build/Products/Debug-iphonesimulator/SDKTestsTests.xctest"];
    
    NSArray<NSString*> *paths = [myBundleByPath pathsForResourcesOfType:@"pdf" inDirectory:@"Resources.bundle/Docs"];
    NSString *path = [paths objectAtIndex:0];
    
    NSData *myData = [NSData dataWithContentsOfFile:path];
    doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
    envDef.documents = [NSArray<DSDocument> arrayWithObjects:doc, nil];
    
    
    // Add a recipient to sign the document
    DSSigner *signer = [[DSSigner alloc] init];
    signer.email = EmailLogin;
    
    NSString *SignerName = @"Pat Signer";
    signer.name = SignerName;
    signer.recipientId = @"1";
    
    // Assigning a client-side id to the sign in an embedded experience.
    NSString *clientUserId = @"2939";
    signer.clientUserId = clientUserId;
    
    
    // create a signature tab
    DSSignHere *signHere = [[DSSignHere alloc] init];
    signHere.documentId = @"1";
    signHere.pageNumber = @"1";
    signHere.recipientId = @"1";
    signHere.xPosition = @"100";
    signHere.yPosition = @"100";
    
    // Add the tab to the signer.
    signer.tabs = [[DSTabs alloc] init];
    signer.tabs.signHereTabs = [NSArray<DSSignHere> arrayWithObjects:signHere, nil];
    
    
    
    DSRecipients *recipient = [[DSRecipients alloc] init];
    
    NSMutableArray<DSSigner> *signers = [[NSMutableArray<DSSigner> alloc]init];
    recipient.signers = signers;
    [signers addObject: signer];
    envDef.recipients = recipient;
    
    
    // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
    envDef.status = @"sent";
    
    NSLog(@"Envelope being sent %@", envDef);
    
    
    expectation = [self expectationWithDescription:@"test Request A Signature - DocumentDownload"];
    
    // Create and send the envelope
    
    __block NSString * envelopeId = nil;
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
    [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!output) {
            XCTFail(@"response can't be nil");
        }
        XCTAssertNotNil(output.envelopeId);
        envelopeId = output.envelopeId;
        NSLog(@"Envelope Created. ID: %@", output.envelopeId);
        
        [expectation fulfill];
    }];
    
    
    
    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
    expectation = [self expectationWithDescription:@"test listDocuments"];
    
    DSEnvelopesApi_ListStatusChangesOptions *listStatusOptions = [[DSEnvelopesApi_ListStatusChangesOptions alloc] init];
    
    NSDate *now = [NSDate date];
    NSTimeInterval secondsInWeek = 7 * 24 * 60 * 60;
    NSDate *lastWeek = [NSDate dateWithTimeInterval:-secondsInWeek sinceDate:now];
    listStatusOptions.fromDate = lastWeek.ISO8601String;
    
    [envelopesApi listStatusChangesWithCompletionBlock:accountId options:listStatusOptions completionHandler:^(DSEnvelopesInformation *output, NSError *error) {
        if (error) {
            XCTFail(@"got error %@", error);
        }
        if (!output) {
            XCTFail(@"response can't be nil");
        }
        
        XCTAssertNotNil(output.resultSetSize);
        XCTAssertNotNil(output.envelopes);
        XCTAssert(output.envelopes.count > 0);
        
        NSLog(@"Envelope Status: %@", output.envelopes);
        
        
        
        [expectation fulfill];
    }];
    
    
    
    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError * _Nullable error) {
        XCTAssertNil(error, "Error");
    }];
    
}
@end
