//
//  CoreRecipes.m
//
//  A simple class for demonstrating common API use-cases (i.e. Recipes)

#import <Foundation/Foundation.h>

#import <DocuSignESignClient/DSAuthenticationApi.h>
#import <DocuSignESignClient/DSEnvelopesApi.h>
#import <DocuSignESignClient/DSApiClient.h>

#import "CoreRecipes.h"

@implementation CoreRecipes

// global hardcoded values for demonstration purposes only, should move these
NSString *IntegratorKey = @"<#IntegratorKey#>";
NSString *BaseUrl = @"https://demo.docusign.net/restapi";

//***************************************************************************************************************************************
// Recipe 01 - requestSignatureOnDocument()
//***************************************************************************************************************************************
- (void)requestSignatureOnDocument {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // Enter recipient (signer) information
    NSString *recipientName = @"<#Recipient Name#>";
    NSString *recipientEmail = @"<#Recipient Email#>";
    
    // Enter valid path to document we want signed (hardcoded for demo purposes!)
    NSString *path = @"<#/Path/To/Document.pdf#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
    
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: Create & Send Envelope (aka signature request)
        ///////////////////////////////////////////////////////////////////////////////
        
        // Create envelope with single document, single signer and one signature tab.
        DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
        envDef.emailSubject = @"[DocuSign Obj-C SDK] - Please sign this doc";
        envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
        
        DSDocument *doc = [[DSDocument alloc] init];
        doc.name = @"TestFile.pdf";  // does not have to be same as actual file name
        doc.documentId = @"1";
        
        NSData *myData = [NSData dataWithContentsOfFile:path];
        doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
        envDef.documents = [NSArray arrayWithObjects:doc, nil];
        
        // Add a recipient to sign the document
        DSSigner *signer = [[DSSigner alloc] init];
        signer.email = recipientEmail;
        signer.name = recipientName;
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
        signer.tabs.signHereTabs = [NSArray arrayWithObjects:signHere, nil];
        DSRecipients *recipient = [[DSRecipients alloc] init];
        
        NSMutableArray<DSSigner> *signers = [[NSMutableArray alloc]init];
        recipient.signers = signers;
        [signers addObject: signer];
        envDef.recipients = recipient;
        
        // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
        envDef.status = @"sent";
        
        NSLog(@"Envelope being sent %@", envDef);
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        // create and send the envelope
        [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
            if (error) {
                NSLog(@"got error %@", error);
            }
            if (!output) {
                NSLog(@"response can't be nil");
            }
            NSLog(@"Envelope Sent, ID: %@", output.envelopeId);
            
        }];
    }]; // end login completion block
} // end requestSignatureOnDocument()

//***************************************************************************************************************************************
// Recipe 02 - requestSignatureFromTemplate()
//***************************************************************************************************************************************
- (void)requestSignatureFromTemplate {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // Enter recipient (signer) information
    NSString *recipientName = @"<#Recipient Name#>";
    NSString *recipientEmail = @"<#Recipient Email#>";

    // Enter template information
    NSString *templateId = @"<#Template ID#>";
    NSString *templateRoleName = @"<#Template Role#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
        
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: Send Envelope from Template (aka signature request)
        ///////////////////////////////////////////////////////////////////////////////
        
        // the template already contains the document(s), tab(s), routing and workflow, we just need to
        // assign a recipient to a valid role on the template we reference through templateId
        // Create envelope with single document, single signer and one signature tab.
        DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
        envDef.emailSubject = @"[DocuSign Obj-C SDK] - Please sign this doc";
        envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
        
        // assign a valid templateId from your account
        envDef.templateId = templateId;
        
        DSTemplateRole *tRole = [[DSTemplateRole alloc] init];
        tRole.email = recipientEmail;
        tRole.name = recipientName;
        tRole.roleName = templateRoleName;
        
        // create a list of template roles and add our single role to it
        NSArray *rolesList = [NSArray arrayWithObjects:tRole, nil];
        envDef.templateRoles = rolesList;
        
        // set status to sent to trigger sending the envelope. Otherwise the envelope will stay in the Drafts folder.
        envDef.status = @"sent";
        
        NSLog(@"Envelope being sent %@", envDef);
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        // create and send the envelope
        [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
            if (error) {
                NSLog(@"got error %@", error);
            }
            if (!output) {
                NSLog(@"response can't be nil");
            }
            NSLog(@"Envelope Sent, ID: %@", output.envelopeId);
        }];
    }]; // end login completion block
} // end requestSignatureFromTemplate()

//***************************************************************************************************************************************
// Recipe 03 - getEnvelopeInformation()
//***************************************************************************************************************************************
- (void)getEnvelopeInformation {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // Enter valid envelope ID from your account
    NSString *envelopeId = @"<#Envelope ID#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
        
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: Get Envelope API
        ///////////////////////////////////////////////////////////////////////////////
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        // get envelope api
        [envelopesApi getEnvelopeWithCompletionBlock:accountId envelopeId:envelopeId completionHandler:^(DSEnvelope *output, NSError *error) {
            if (error) {
                NSLog(@"got error %@", error);
            }
            if (!output) {
                NSLog(@"response can't be nil");
            }
            NSLog(@"Envelope Info is: %@", output);
        }];
    }]; // end login completion block
} // end getEnvelopeInformation()

//***************************************************************************************************************************************
// Recipe 04 - listRecipients()
//***************************************************************************************************************************************
- (void)listRecipients {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // Enter valid envelope ID from your account
    NSString *envelopeId = @"<#Envelope ID#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
        
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: List Envelope Recipients (aka Signers)
        ///////////////////////////////////////////////////////////////////////////////
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        // list recipients api
        [envelopesApi listRecipientsWithCompletionBlock:accountId envelopeId:envelopeId completionHandler:^(DSRecipients *output, NSError *error) {
            if (error) {
                NSLog(@"got error %@", error);
            }
            if (!output) {
                NSLog(@"response can't be nil");
            }
            NSLog(@"Recipient info for envelope ID %@ is %@", envelopeId, output);
        }];
    }]; // end login completion block
} // end listRecipients()

//***************************************************************************************************************************************
// Recipe 05 - listEnvelopes()
//***************************************************************************************************************************************
- (void)listEnvelopes {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
        
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: List Envelopes
        ///////////////////////////////////////////////////////////////////////////////
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        // at least one filter (fromDate) is required for listEnvelopes() API
        DSEnvelopesApi_ListStatusChangesOptions *options = [[DSEnvelopesApi_ListStatusChangesOptions alloc] init];
        
        // as an example set a fromDate filter for 7 days ago (i.e. filter envelopes for the past week)
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
        NSString *fromDate = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSinceNow:-60*60*24*7]];
        [options setFromDate:fromDate];
        
        [envelopesApi listStatusChangesWithCompletionBlock:accountId options:options completionHandler:^(DSEnvelopesInformation *output, NSError *error) {
            if (error) {
                NSLog(@"got error %@", error);
            }
            if (!output) {
                NSLog(@"response can't be nil");
            }
            NSLog(@"List Envelopes Result: %@", output);
        }];
    }]; // end login completion block
} // end listEnvelopes()

//***************************************************************************************************************************************
// Recipe 06 - getEnvelopeDocuments()
//***************************************************************************************************************************************
- (void)getEnvelopeDocuments {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // Enter valid envelope ID from your account
    NSString *envelopeId = @"<#Envelope ID#>";
    // The documentId is property is client defined at time of envelope creation (see first recipe)
    NSString *documentId = @"<#Document ID#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
        
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: Get Document API
        ///////////////////////////////////////////////////////////////////////////////
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];

        [envelopesApi getDocumentWithCompletionBlock:accountId envelopeId:envelopeId documentId:documentId completionHandler:^(NSURL *output, NSError *error) {
            if (error) {
                NSLog(@"got error %@", error);
            }
            if (!output) {
                NSLog(@"response can't be nil");
            }
            NSLog(@"Document %@ from envelope %@ has benn downloaded. %@", documentId, envelopeId, output);
        }];
    }]; // end login completion block
} // end getEnvelopeDocuments()

//***************************************************************************************************************************************
// Recipe 07 - embeddedSending()
//***************************************************************************************************************************************
- (void)embeddedSending {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // Enter recipient (signer) information
    NSString *recipientName = @"<#Recipient Name#>";
    NSString *recipientEmail = @"<#Recipient Email#>";
    
    // Enter valid path to document we want signed (hardcoded for demo purposes!)
    NSString *path = @"<#/Path/To/Document.pdf#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
        
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: Create & Send Envelope (aka signature request)
        ///////////////////////////////////////////////////////////////////////////////
        
        // Create envelope with single document, single signer and one signature tab.
        DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
        envDef.emailSubject = @"[DocuSign Obj-C SDK] - Please sign this doc";
        envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
        
        DSDocument *doc = [[DSDocument alloc] init];
        doc.name = @"TestFile.pdf";
        doc.documentId = @"1";
        
        NSData *myData = [NSData dataWithContentsOfFile:path];
        doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
        envDef.documents = [NSArray arrayWithObjects:doc, nil];
        
        // Add a recipient to sign the document
        DSSigner *signer = [[DSSigner alloc] init];
        signer.email = recipientEmail;
        signer.name = recipientName;
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
        signer.tabs.signHereTabs = [NSArray arrayWithObjects:signHere, nil];
        DSRecipients *recipient = [[DSRecipients alloc] init];
        
        NSMutableArray<DSSigner> *signers = [[NSMutableArray alloc]init];
        recipient.signers = signers;
        [signers addObject: signer];
        envDef.recipients = recipient;
        
        // set status to "created" to create a draft envelope that we can open the embedded sender view
        envDef.status = @"created";
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        __block NSString *envelopeId = nil;
        
        [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
            if (error) {
                NSLog(@"got error %@", error);
            }
            if (!output) {
                NSLog(@"response can't be nil");
            }
            envelopeId = output.envelopeId;
            NSLog(@"Envelope Created. ID: %@", output.envelopeId);
            
            ///////////////////////////////////////////////////////////////////////////////
            // STEP 3: Create Sender View
            ///////////////////////////////////////////////////////////////////////////////
            
            // assign a return URL for once the user is done editing the envelope
            DSReturnUrlRequest *returnRequest = [[DSReturnUrlRequest alloc] init];
            [returnRequest setReturnUrl:@"https://www.docusign.com/devcenter"];
            
            // create sender view API
            [envelopesApi createSenderViewWithCompletionBlock:accountId envelopeId:envelopeId returnUrlRequest:returnRequest completionHandler:^(DSViewUrl *output, NSError *error) {
                
                NSLog(@"*** Sender View URL: %@", output.url);
            }];
        }];
    }]; // end login completion block
} // end embeddedSending()

//***************************************************************************************************************************************
// Recipe 08 - embeddedSigning()
//***************************************************************************************************************************************
- (void)embeddedSigning {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // Enter recipient (signer) information
    NSString *recipientName = @"<#Recipient Name#>";
    NSString *recipientEmail = @"<#Recipient Email#>";
    
    // Enter valid path to document we want signed (hardcoded for demo purposes!)
    NSString *path = @"<#/Path/To/Document.pdf#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
        
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: Create Envelope with Embedded Signer
        ///////////////////////////////////////////////////////////////////////////////
        
        // Create envelope with single document, single signer and one signature tab.
        DSEnvelopeDefinition *envDef = [[DSEnvelopeDefinition alloc] init];
        envDef.emailSubject = @"[DocuSign Obj-C SDK] - Please sign this doc";
        envDef.emailBlurb = @"Hello, Please sign my Objective-C Envelope";
        
        DSDocument *doc = [[DSDocument alloc] init];
        doc.name = @"TestFile.pdf";
        doc.documentId = @"1";
        
        NSData *myData = [NSData dataWithContentsOfFile:path];
        doc.documentBase64 = [myData base64EncodedStringWithOptions:0];
        envDef.documents = [NSArray arrayWithObjects:doc, nil];
        
        // Add a recipient to sign the document
        DSSigner *signer = [[DSSigner alloc] init];
        signer.email = recipientEmail;
        signer.name = recipientName;
        signer.recipientId = @"1";
        
        //*** note: |clientUserId| is required for embedded signers, used again in next step
        signer.clientUserId = @"1001";
        
        // create a signature tab
        DSSignHere *signHere = [[DSSignHere alloc] init];
        signHere.documentId = @"1";
        signHere.pageNumber = @"1";
        signHere.recipientId = @"1";
        signHere.xPosition = @"100";
        signHere.yPosition = @"100";
        
        // Add the tab to the signer.
        signer.tabs = [[DSTabs alloc] init];
        signer.tabs.signHereTabs = [NSArray arrayWithObjects:signHere, nil];
        DSRecipients *recipient = [[DSRecipients alloc] init];
        
        NSMutableArray<DSSigner> *signers = [[NSMutableArray alloc]init];
        recipient.signers = signers;
        [signers addObject: signer];
        envDef.recipients = recipient;
        
        // set status to "sent" to immediately send the envelope (aka signature request)
        envDef.status = @"sent";
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        __block NSString *envelopeId = nil;
        
        // create and send the envelope
        [envelopesApi createEnvelopeWithCompletionBlock:accountId envelopeDefinition:envDef completionHandler:^(DSEnvelopeSummary *output, NSError *error) {
            if (error) {
                NSLog(@"got error %@", error);
            }
            if (!output) {
                NSLog(@"response can't be nil");
            }
            envelopeId = output.envelopeId;
            NSLog(@"Envelope Sent, ID: %@", output.envelopeId);
            
            ///////////////////////////////////////////////////////////////////////////////
            // STEP 3: Create Recipient View (aka Embedded Signing URL)
            ///////////////////////////////////////////////////////////////////////////////
            
            // assign a return URL for once the recipient is done signing
            DSRecipientViewRequest *returnViewRequest = [[DSRecipientViewRequest alloc] init];
            [returnViewRequest setReturnUrl:@"https://www.docusign.com/devcenter"];
            
            // recipient (signer) info must match info used in step #2!
            [returnViewRequest setUserName:recipientName];
            [returnViewRequest setEmail:recipientEmail];
            [returnViewRequest setRecipientId:@"1"];
            [returnViewRequest setClientUserId:@"1001"];
            [returnViewRequest setAuthenticationMethod:@"email"];
            
            // create recipient view API
            [envelopesApi createRecipientViewWithCompletionBlock:accountId envelopeId:envelopeId recipientViewRequest:returnViewRequest completionHandler:^(DSViewUrl *output, NSError *error) {
                
                NSLog(@"*** Recipient View URL: %@", output.url);
            }];
        }]; // end create envelope block
    }]; // end login completion block
} // end embeddedSigning()

//***************************************************************************************************************************************
// Recipe 09 - embeddedDSConsole()
//***************************************************************************************************************************************
- (void)embeddedDSConsole {
    
    // Enter your DocuSign credentials
    NSString *username = @"<#Username#>";
    NSString *password = @"<#Password#>";
    
    // create authentication JSON string and header
    NSString *const DS_AUTH = [NSMutableString stringWithFormat:@"{\"Username\":\"%@\",\"Password\":\"%@\",\"IntegratorKey\":\"%@\"}", username, password, IntegratorKey];
    NSString *const DS_AUTH_HEADER = @"X-DocuSign-Authentication";
    
    ///////////////////////////////////////////////////////////////////////////////
    // STEP 1: Login API
    ///////////////////////////////////////////////////////////////////////////////
    
    // instantiate api client, configure environment URL and assign auth data
    DSConfiguration *sharedConfig = [DSConfiguration sharedConfig];
    sharedConfig.host = BaseUrl;
    DSAuthenticationApi *authApi = [[DSAuthenticationApi alloc]init];
    [authApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
    
    // we will retrieve the accountId through the Login API call, then use that ID when creating an Envelope (aka signature request)
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
        
        NSLog(@"Account ID: %@", loginAccount.accountId);
        
        ///////////////////////////////////////////////////////////////////////////////
        // STEP 2: Create Embedded DocuSign Console View
        ///////////////////////////////////////////////////////////////////////////////
        
        DSConsoleViewRequest *consoleView = [[DSConsoleViewRequest alloc] init];
        consoleView.returnUrl = @"https://www.docusign.com/devcenter";
        
        // create api service and add authentication header
        DSEnvelopesApi *envelopesApi = [[DSEnvelopesApi alloc] init];
        [envelopesApi addHeader:DS_AUTH forKey:DS_AUTH_HEADER];
        
        // create console view api
        [envelopesApi createConsoleViewWithCompletionBlock:accountId consoleViewRequest:consoleView completionHandler:^(DSViewUrl *output, NSError *error) {
            NSLog(@"*** DS Console View URL: %@", output.url);
        }];
    }]; // end login completion block
} // end embeddedDSConsole()

@end
