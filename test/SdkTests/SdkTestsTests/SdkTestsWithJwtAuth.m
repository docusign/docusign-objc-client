//
//  SdkTestsTests.m
//  SdkTestsTests
//
//  Created by Naveen Gopala on 2/16/16.
//  Copyright © 2016 DocuSign. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <DocuSignESign/DSESAuthenticationApi.h>
#import <DocuSignESign/DSESEnvelopesApi.h>
#import <DocuSignESign/DSESApiClient.h>
#import "DSESTestConfig.h"

@interface SdkTestsWithJwtAuth : XCTestCase

@property(nonatomic) DSESTestConfig* testConfig;

@end

@implementation SdkTestsWithJwtAuth

- (void)setUp {
    [super setUp];
    
    self.testConfig = [[DSESTestConfig alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)login {
    [self.testConfig.apiClient configure_jwt_authorization_flow:self.testConfig.integratorKey
                                                         userId:self.testConfig.userId
                                                  oauthBasePath:self.testConfig.oauthBasePath
                                              privateKeyFileURL:self.testConfig.privateKeyFileURL
                                                      expiresIn:self.testConfig.jwtTokenExpiresInSeconds
     ];
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test User Login"];
    
    DSESAuthenticationApi *authApi = [[DSESAuthenticationApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    // Example of using options
    DSESAuthenticationApi_LoginOptions* loginOptions = [[DSESAuthenticationApi_LoginOptions alloc] init];
    loginOptions.loginSettings = @"none";
    loginOptions.apiPassword = @"true";
    loginOptions.includeAccountIdGuid = @"true";
    
    [authApi loginWithApiPassword:loginOptions completionHandler:^(DSESLoginInformation *output, NSError *error) {
        if (output != nil && output.loginAccounts != nil && output.loginAccounts.count > 0) {
            DSESLoginAccount* loginAccount = [output.loginAccounts objectAtIndex: 0];
            self.testConfig.accountId = loginAccount.accountId;
            XCTAssertNotNil(loginAccount.accountId);
        } else if(error !=nil) {
            XCTFail(@"%@", error);
        } else {
            XCTFail(@"Unknow error occured. Please try again later.");
        }
        
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}

- (void)requestSignatureOnDocument:(NSString*)status embeddedSigning:(BOOL) embeddedSigning {
    [self login];
    
    XCTAssertNotNil(self.testConfig.accountId);
    
    // Create envelope with single document, single signer and one signature tab.
    DSESEnvelopeDefinition *envDef = [[DSESEnvelopeDefinition alloc] init];
    envDef.emailSubject = @"Please Sign Objc Envelope On Dcoument";
    envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
    
    DSESDocument *doc = [[DSESDocument alloc] init];
    doc.name = @"Test.pdf";
    doc.documentId = @"1";
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"Test" ofType:@"pdf"];
    NSData *myData = [NSData dataWithContentsOfFile:path];
    doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
    envDef.documents = [NSArray<DSESDocument> arrayWithObjects:doc, nil];
    
    // create a signature tab
    DSESSignHere *signHere = [[DSESSignHere alloc] init];
    signHere.documentId = @"1";
    signHere.pageNumber = @"1";
    signHere.recipientId = @"1";
    signHere.xPosition = @"100";
    signHere.yPosition = @"100";
    
    // Add the tab to the signer.
    DSESTabs* tabs = [[DSESTabs alloc] init];
    tabs.signHereTabs = [NSArray<DSESSignHere> arrayWithObjects:signHere, nil];
    
    // Add a recipient to sign the document
    DSESSigner *signer = [[DSESSigner alloc] init];
    signer.email = self.testConfig.recipientEmail;
    signer.name = self.testConfig.recipientName;
    signer.recipientId = @"1";
    
    // If embedded view platform will not send an email, assumes it to be an embedded sign request
    if(embeddedSigning) {
        signer.clientUserId = self.testConfig.clientUserId; // Assigning a client-side id to the sign in an embedded experience.
    }
    signer.tabs = tabs;
    
    NSArray<DSESSigner> *signers = [[NSArray<DSESSigner> alloc] initWithObjects:signer, nil];
    
    DSESRecipients* recipients = [[DSESRecipients alloc] init];
    recipients.signers = signers;
    
    envDef.recipients = recipients;
    
    // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
    envDef.status = status;
    
    XCTestExpectation* expectation = [self expectationWithDescription:@"Test Request Signature On Document"];
    
    // Create and send the envelope
    DSESEnvelopesApi *envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    DSESEnvelopesApi_CreateEnvelopeOptions* createEnvelopeOptions = [[DSESEnvelopesApi_CreateEnvelopeOptions alloc] init];
    createEnvelopeOptions.cdseMode = @"true";
    createEnvelopeOptions.mergeRolesOnDraft = @"false";
    
    [envelopesApi createEnvelopeWithAccountId:self.testConfig.accountId envelopeDefinition:envDef options:createEnvelopeOptions completionHandler:^(DSESEnvelopeSummary *output, NSError *error) {
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
    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
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
    DSESEnvelopesApi *envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    // Create envelope with single document, single signer and one signature tab.
    DSESEnvelopeDefinition* envelopeDefinition = [[DSESEnvelopeDefinition alloc] init];
    envelopeDefinition.emailSubject = @"Please Sign Objc Envelope On Template";
    envelopeDefinition.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
    
    // assign recipient to template role by setting name, email, and role name.  Note that the
    // template role name must match the placeholder role name saved in your account template.
    DSESTemplateRole* templateRole = [[DSESTemplateRole alloc] init];
    templateRole.email = self.testConfig.recipientEmail;
    templateRole.name = self.testConfig.recipientName;
    templateRole.roleName = self.testConfig.templateRoleName;
    // add the role to the envelope and assign valid templateId from your account
    
    envelopeDefinition.templateRoles = [NSArray<DSESTemplateRole> arrayWithObjects:templateRole, nil];;
    envelopeDefinition.templateId = self.testConfig.templateId;
    envelopeDefinition.status = @"sent";
    
    DSESEnvelopesApi_CreateEnvelopeOptions* createEnvelopeOptions = [[DSESEnvelopesApi_CreateEnvelopeOptions alloc] init];
    createEnvelopeOptions.cdseMode = @"true";
    createEnvelopeOptions.mergeRolesOnDraft = @"false";
    
    [envelopesApi createEnvelopeWithAccountId:self.testConfig.accountId envelopeDefinition:envelopeDefinition options:createEnvelopeOptions completionHandler:^(DSESEnvelopeSummary *output, NSError *error) {
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
    
    DSESEnvelopesApi *envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    DSESEnvelopesApi_GetEnvelopeOptions* options = [[DSESEnvelopesApi_GetEnvelopeOptions alloc] init];
    options.include = nil;
    
    [envelopesApi getEnvelopeWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId options:options completionHandler:^(DSESEnvelope *output, NSError *error) {
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
    
    DSESEnvelopesApi* envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    DSESEnvelopesApi_ListRecipientsOptions* options = [[DSESEnvelopesApi_ListRecipientsOptions alloc] init];
    options.includeAnchorTabLocations = @"true";
    options.includeExtended = @"true";
    options.includeMetadata = @"true";
    options.includeTabs = @"true";
    
    [envelopesApi listRecipientsWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId options:options completionHandler:^(DSESRecipients *output, NSError *error) {
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
    
    DSESEnvelopesApi* envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    DSESEnvelopesApi_ListStatusChangesOptions* options = [[DSESEnvelopesApi_ListStatusChangesOptions alloc] init];
    options.count = @"10";
    
    NSDate *now = [NSDate date];
    NSTimeInterval secondsInWeek = 7 * 24 * 60 * 60;
    
    NSDate *lastWeek = [NSDate dateWithTimeInterval:-secondsInWeek sinceDate:now];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSLocale *enUSPOSIXLocale = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
    [dateFormatter setLocale:enUSPOSIXLocale];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    [dateFormatter setCalendar:[NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian]];

    options.fromDate = [dateFormatter stringFromDate:lastWeek];
    
    [envelopesApi listStatusChangesWithAccountId:self.testConfig.accountId options:options completionHandler:^(DSESEnvelopesInformation *output, NSError *error) {
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
    
    DSESEnvelopesApi *envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    DSESEnvelopesApi_GetDocumentOptions* options = [[DSESEnvelopesApi_GetDocumentOptions alloc] init];
    //    options.certificate = @"";
    //    options.encoding = @"";
    //    options.encrypt = @"";
    //    options.language = @"";
    //    options.recipientId = @"";
    //    options.showChanges = @"";
    //    options.watermark = @"";
    
    [envelopesApi getDocumentWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId  documentId:@"combined" options:options completionHandler:^(NSURL *output, NSError *error) {
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
    
    DSESEnvelopesApi *envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    DSESReturnUrlRequest* returnUrlRequest = [[DSESReturnUrlRequest alloc] init];
    returnUrlRequest.returnUrl = self.testConfig.returnUrl;
    [envelopesApi createSenderViewWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId returnUrlRequest:returnUrlRequest completionHandler:^(DSESViewUrl *output, NSError *error) {
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
    
    DSESRecipientViewRequest *viewRequest = [[DSESRecipientViewRequest alloc] init];
    viewRequest.returnUrl = self.testConfig.returnUrl;
    viewRequest.clientUserId = self.testConfig.clientUserId;
    viewRequest.userName = self.testConfig.recipientName;
    viewRequest.email = self.testConfig.recipientEmail;
    viewRequest.authenticationMethod = @"email";
    
    DSESEnvelopesApi *envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    [envelopesApi createRecipientViewWithAccountId:self.testConfig.accountId envelopeId:self.testConfig.envelopeId recipientViewRequest:viewRequest completionHandler:^(DSESViewUrl *output, NSError *error) {
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
    
    DSESEnvelopesApi *envelopesApi = [[DSESEnvelopesApi alloc] initWithApiClient:self.testConfig.apiClient];
    
    DSESConsoleViewRequest* viewRequest = [[DSESConsoleViewRequest alloc] init];
    viewRequest.envelopeId = self.testConfig.envelopeId;
    viewRequest.returnUrl = self.testConfig.returnUrl;
    
    [envelopesApi createConsoleViewWithAccountId:self.testConfig.accountId consoleViewRequest:viewRequest completionHandler:^(DSESViewUrl *output, NSError *error) {
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
