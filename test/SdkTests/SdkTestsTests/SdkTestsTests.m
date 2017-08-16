//
//  SdkTestsTests.m
//  SdkTestsTests
//
//  Created by Naveen Gopala on 2/16/16.
//  Copyright © 2016 DocuSign. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "../../../sdk/DocuSignESign/DSAuthenticationApi.h"
#import "../../../sdk/DocuSignESign/DSEnvelopesApi.h"
#import "../../../sdk/DocuSignESign/DSApiClient.h"
#import "DSTestConfig.h"

@interface SdkTestsTests : XCTestCase

@property(nonatomic) DSTestConfig* testConfig;

@end

@implementation SdkTestsTests

- (void)setUp {
    [super setUp];
    
    self.testConfig = [[DSTestConfig alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)login {
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test User Login"];
    
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc] initWithApiClient:self.testConfig.apiClient];
    [authApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    // Example of using options
    DSAuthenticationApi_LoginOptions* loginOptions = [[DSAuthenticationApi_LoginOptions alloc] init];
    loginOptions.loginSettings = @"none";
    loginOptions.apiPassword = @"true";
    loginOptions.includeAccountIdGuid = @"true";
    
    [authApi loginWithApiPassword:loginOptions completionHandler:^(DSLoginInformation *output, NSError *error) {
        if (output != nil && output.loginAccounts != nil && output.loginAccounts.count > 0) {
            DSLoginAccount* loginAccount = [output.loginAccounts objectAtIndex: 0];
            self.testConfig.accountId = loginAccount.accountId;
            XCTAssertNotNil(loginAccount.accountId);
        } else if(error !=nil) {
            XCTFail(@"%@", error);
        } else {
            XCTFail(@"Unknow error occured. Please try again later.");
        }
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:1.0 handler:nil];
}

- (void)requestSignatureOnDocument:(NSString*)status embeddedSigning:(BOOL) embeddedSigning {
    [self login];
    
    XCTAssertNotNil(self.testConfig.accountId);
    
    // Create envelope with single document, single signer and one signature tab.
    DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
    envDef.emailSubject = @"Please Sign Objc Envelope On Dcoument";
    envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
    
    DSDocument *doc = [[DSDocument alloc] init];
    doc.name = @"Test.pdf";
    doc.documentId = @"1";
    
    NSString* docName = @"Test";
    NSBundle* bundle = [NSBundle mainBundle];
    NSString* path = [bundle pathForResource:docName ofType:@"pdf"];
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
    signer.email = self.testConfig.recipientEmail;
    signer.name = self.testConfig.recipientName;
    signer.recipientId = @"1";
    
    // If embedded view platform will not send an email, assumes it to be an embedded sign request
    if(embeddedSigning) {
        signer.clientUserId = self.testConfig.clientUserId; // Assigning a client-side id to the sign in an embedded experience.
    }
    signer.tabs = tabs;
    
    NSArray<DSSigner> *signers = [[NSArray<DSSigner> alloc] initWithObjects:signer, nil];
    
    DSRecipients* recipients = [[DSRecipients alloc] init];
    recipients.signers = signers;
    
    envDef.recipients = recipients;
    
    // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
    envDef.status = status;
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test Request Signature On Document"];
    
    // Create and send the envelope
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    DSEnvelopesApi_CreateEnvelopeOptions* createEnvelopeOptions = [[DSEnvelopesApi_CreateEnvelopeOptions alloc] init];
    createEnvelopeOptions.cdseMode = @"true";
    createEnvelopeOptions.mergeRolesOnDraft = @"false";
    
    [envelopesApi createEnvelopeWithAccountId:self.testConfig.accountId envelopeDefinition:envDef options:createEnvelopeOptions completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
        if (output != nil && output.envelopeId != nil) {
            self.testConfig.envelopeId = output.envelopeId;
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

- (void)testLogin {
    [self login];
    
    XCTAssertNotNil(self.testConfig.accountId);
}

- (void)testRequestSignatureOnDocument {
    [self requestSignatureOnDocument:@"sent" embeddedSigning:false];
    
    XCTAssertNotNil(self.testConfig.envelopeId);
}

- (void)testRequestSignatureOnTemplate {
    [self login];

    XCTestExpectation* expectation = [self expectationWithDescription:@"Test Request Signature On template"];
    
    // Create and send the envelope
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    // Create envelope with single document, single signer and one signature tab.
    DSEnvelopeDefinition* envelopeDefinition = [[DSEnvelopeDefinition alloc] init];
    envelopeDefinition.emailSubject = @"Please Sign Objc Envelope On Template";
    envelopeDefinition.emailBlurb = @"Hello, Please sign my Objective-C Envelope";

    // assign recipient to template role by setting name, email, and role name.  Note that the
    // template role name must match the placeholder role name saved in your account template.
    DSTemplateRole* templateRole = [[DSTemplateRole alloc] init];
    templateRole.email = self.testConfig.recipientEmail;
    templateRole.name = self.testConfig.recipientName;
    templateRole.roleName = self.testConfig.templateRoleName;
    // add the role to the envelope and assign valid templateId from your account

    envelopeDefinition.templateRoles = [NSArray<DSTemplateRole> arrayWithObjects:templateRole, nil];;
    envelopeDefinition.templateId = self.testConfig.templateId;
    envelopeDefinition.status = @"sent";

    DSEnvelopesApi_CreateEnvelopeOptions* createEnvelopeOptions = [[DSEnvelopesApi_CreateEnvelopeOptions alloc] init];
    createEnvelopeOptions.cdseMode = @"true";
    createEnvelopeOptions.mergeRolesOnDraft = @"false";
    
    [envelopesApi createEnvelopeWithAccountId:self.testConfig.accountId envelopeDefinition:envelopeDefinition options:createEnvelopeOptions completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
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

-(void) testGetEnvelopeInformation {
    [self requestSignatureOnDocument:@"sent" embeddedSigning:YES];
    
    XCTAssertNotNil(self.testConfig.envelopeId);
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test Get Envelope Information"];

    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    DSEnvelopesApi_GetEnvelopeOptions* options = [[DSEnvelopesApi_GetEnvelopeOptions alloc] init];
    options.include = nil;
    
    [envelopesApi getEnvelopeWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId options:options completionHandler:^(DSEnvelope *output, NSError *error) {
        if (error) {
            XCTFail(@"%@", error);
        }
        
        XCTAssertNotNil(output);
        XCTAssertNotNil(output.envelopeId);
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}

-(void) testListRecipients {
    [self requestSignatureOnDocument:@"sent" embeddedSigning:YES];
    
    XCTAssertNotNil(self.testConfig.envelopeId);
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test List Recipients"];
    
    DSEnvelopesApi* envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    [envelopesApi listRecipientsWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId completionHandler:^(DSRecipients *output, NSError *error) {
        if (error) {
            XCTFail(@"%@", error);
        }

        XCTAssertNotNil(output);
        XCTAssertTrue(output.recipientCount > 0);
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}

-(void) testListStatusChanges {
    [self login];
    
    XCTAssertNotNil(self.testConfig.accountId);
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test List Status Changes"];
    
    DSEnvelopesApi* envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    DSEnvelopesApi_ListStatusChangesOptions* options = [[DSEnvelopesApi_ListStatusChangesOptions alloc] init];
    options.count = @"10";
    
    NSDate *now = [NSDate date];
    NSTimeInterval secondsInWeek = 7 * 24 * 60 * 60;
    
    NSDate *lastWeek = [NSDate dateWithTimeInterval:-secondsInWeek sinceDate:now];
    options.fromDate = lastWeek.ISO8601String;
    
    [envelopesApi listStatusChangesWithAccountId:self.testConfig.accountId options:options completionHandler:^(DSEnvelopesInformation *output, NSError *error) {
        if (error) {
            XCTFail(@"%@", error);
        }
        
        XCTAssertNotNil(output);
        XCTAssertNotNil(output.envelopes);
        XCTAssertTrue(output.envelopes.count > 0);
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}

- (void) testDocumentDownload {
    [self requestSignatureOnDocument:@"sent" embeddedSigning:false];
    
    XCTAssertNotNil(self.testConfig.envelopeId);
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test Document Download"];
    
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    [envelopesApi getDocumentWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId documentId:@"combined" completionHandler:^(NSURL *output, NSError *error) {
        if (error) {
            XCTFail(@"%@", error);
        }
        
        XCTAssertNotNil(output);
        XCTAssertNotNil(output.path);
        
        unsigned long long fileSize = [[[NSFileManager defaultManager] attributesOfItemAtPath:output.path error:nil] fileSize];
        
        XCTAssert(fileSize > 0);
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}

- (void) testEmbeddedSendingView {
    [self requestSignatureOnDocument:@"created" embeddedSigning:true];
    
    XCTAssertNotNil(self.testConfig.envelopeId);
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test Embedded Sending View"];
    
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    DSReturnUrlRequest* returnUrlRequest = [[DSReturnUrlRequest alloc] init];
    returnUrlRequest.returnUrl = self.testConfig.returnUrl;
    [envelopesApi createSenderViewWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId returnUrlRequest:returnUrlRequest completionHandler:^(DSViewUrl *output, NSError *error) {
        if (error) {
            XCTFail(@"%@", error);
        }
        
        XCTAssertNotNil(output);
        XCTAssertNotNil(output.url);
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}

- (void) testEmbeddedSigningView {
    [self requestSignatureOnDocument:@"sent" embeddedSigning:YES];
    
    XCTAssertNotNil(self.testConfig.envelopeId);
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test Embedded Recipient View"];
    
    DSRecipientViewRequest *viewRequest = [[DSRecipientViewRequest alloc] init];
    viewRequest.returnUrl = self.testConfig.returnUrl;
    viewRequest.clientUserId = self.testConfig.clientUserId;
    viewRequest.userName = self.testConfig.recipientName;
    viewRequest.email = self.testConfig.recipientEmail;
    viewRequest.authenticationMethod = @"email";
    
    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    [envelopesApi createRecipientViewWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId recipientViewRequest:viewRequest completionHandler:^(DSViewUrl *output, NSError *error) {
        if (error) {
            XCTFail(@"%@", error);
        }
        
        XCTAssertNotNil(output);
        XCTAssertNotNil(output.url);
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}

-(void) testCreateEmbeddedConsoleView {
    [self requestSignatureOnDocument:@"sent" embeddedSigning:YES];
    
    XCTAssertNotNil(self.testConfig.envelopeId);
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test Embedded Recipient View"];

    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    [envelopesApi addHeader:self.testConfig.headerValue forKey:self.testConfig.headerKey];
    
    DSConsoleViewRequest* viewRequest = [[DSConsoleViewRequest alloc] init];
    viewRequest.envelopeId = self.testConfig.envelopeId;
    viewRequest.returnUrl = self.testConfig.returnUrl;

    [envelopesApi createConsoleViewWithAccountId:self.testConfig.accountId consoleViewRequest:viewRequest completionHandler:^(DSViewUrl *output, NSError *error) {
        if (error) {
            XCTFail(@"%@", error);
        }
        
        XCTAssertNotNil(output);
        XCTAssertNotNil(output.url);
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:2.0 handler:nil];
}

@end
//- (void)setUp {
//    [super setUp];
//    // Put setup code here. This method is called before the invocation of each test method in the class.
//
//    DS_AUTH = [NSString stringWithFormat: @"<DocuSignCredentials><IntegratorKey>%@</IntegratorKey><Username>%@</Username><Password>%@</Password></DocuSignCredentials>", IntegratorKey, EmailLogin, Password];
//}
//
//- (void)tearDown {
//    // Put teardown code here. This method is called after the invocation of each test method in the class.
//    [super tearDown];
//}
//
//- (void) testGetLogin {
//    XCTestExpectation *expectation = [self expectationWithDescription:@"test user login"];
//
//    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
//    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
//
//    // Example of using options
//    DSAuthenticationApi_LoginOptions *loginOptions = [[DSAuthenticationApi_LoginOptions alloc] init];
//    loginOptions.loginSettings = @"none";
//    loginOptions.apiPassword = @"true";
//    loginOptions.includeAccountIdGuid = @"true";
//
//    [authApi loginWithCompletionBlock:^(DSLoginInformation *output, NSError *error) {
////     loginWithCompletionBlock:loginOptions completionHandler:^(DSLoginInformation *output, NSError *error) {
//        if (error) {
//            XCTFail(@"got error %@", error);
//        }
//        if (!output) {
//            XCTFail(@"response can't be nil");
//        }
//
//        XCTAssertTrue(output.loginAccounts.count>0);
//
//        DSLoginAccount *loginAccount = [output.loginAccounts objectAtIndex: 0];
//        NSLog(@"Account Name: %@", loginAccount.name);
//
//
//        NSLog(@"Api Passord: %@", output.apiPassword);
//        NSLog(@"Login Accounts: %@", output.loginAccounts);
//
//        [expectation fulfill];
//
//    }];
//
//    [self waitForExpectationsWithTimeout:10.0 handler:nil];
//}
//
//- (void) testRequestASignature {
//    XCTestExpectation *expectation = [self expectationWithDescription:@"test user login"];
//
//    // Create envelope with single document, single signer and one signature tab.
//    DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
//    envDef.emailSubject = @"Please Sign my Objc Envelope";
//    envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
//
//    DSDocument *doc = [[DSDocument alloc] init];
//    doc.name = @"TestFile.pdf";
//    doc.documentId = @"1";
//
//    NSString* docName = @"Test";
//    NSBundle* bundle = [NSBundle mainBundle];
//    NSString* path = [bundle pathForResource:docName ofType:@"pdf"];
//    NSData *myData = [NSData dataWithContentsOfFile:path];
//    doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
//    envDef.documents = [NSArray<DSDocument> arrayWithObjects:doc, nil];
//
//
//    // Add a recipient to sign the document
//    DSSigner *signer = [[DSSigner alloc] init];
//    signer.email = EmailLogin;
//    signer.name = @"Pat Developer";
//    signer.recipientId = @"1";
//
//
//    // create a signature tab
//    DSSignHere *signHere = [[DSSignHere alloc] init];
//    signHere.documentId = @"1";
//    signHere.pageNumber = @"1";
//    signHere.recipientId = @"1";
//    signHere.xPosition = @"100";
//    signHere.yPosition = @"100";
//
//    // Add the tab to the signer.
//    signer.tabs = [[DSTabs alloc] init];
//    signer.tabs.signHereTabs = [NSArray<DSSignHere> arrayWithObjects:signHere, nil];
//
//    DSRecipients *recipient = [[DSRecipients alloc] init];
//
//    NSMutableArray<DSSigner> *signers = [[NSMutableArray<DSSigner> alloc]init];
//    recipient.signers = signers;
//    [signers addObject: signer];
//    envDef.recipients = recipient;
//
//
//    // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
//    envDef.status = @"sent";
//
//    NSLog(@"Envelope being sent %@", envDef);
//
//
//    expectation = [self expectationWithDescription:@"test Request A Signature - sendEnvelope"];
//
//    DSApiClient* apiClient = [[DSApiClient alloc] initWithBaseURL:[NSURL URLWithString:BaseUrl]];
//
//    // Create and send the envelope
//    DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] initWithApiClient:apiClient];
//    [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
//
//    [envelopesApi createEnvelopeWithCompletionBlock:@"1385721" envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
////    [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
//        if (error) {
//            XCTFail(@"got error %@", error);
//        }
//        if (!output) {
//            XCTFail(@"response can't be nil");
//        }
//        XCTAssertNotNil(output.envelopeId);
//        NSLog(@"Envelope Created. ID: %@", output.envelopeId);
//
//        [expectation fulfill];
//    }];
//
//    [self waitForExpectationsWithTimeout:10.0 handler:^(NSError * _Nullable error) {
//        XCTAssertNil(error, "Error");
//    }];
//}
//
//
//- (void)testExample {
//    // This is an example of a functional test case.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//
//    NSString* path = [[NSBundle mainBundle] pathForResource:@"../Test" ofType:@"pdf"];
//    NSLog(@"#############%@", [NSBundle mainBundle]);
//    NSLog(@"#############%@", path);
//
//}
//
//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

