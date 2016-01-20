#import "DSEnvelopesApi.h"
#import "DSQueryParamCollection.h"
#import "DSEnvelopesInformation.h"
#import "DSErrorDetails.h"
#import "DSEnvelopeDefinition.h"
#import "DSEnvelopeSummary.h"
#import "DSEnvelopeIdsRequest.h"
#import "DSEnvelope.h"
#import "DSEnvelopeUpdateSummary.h"
#import "DSEnvelopeAuditEventResponse.h"
#import "DSCustomFieldsEnvelope.h"
#import "DSCustomFields.h"
#import "DSEnvelopeDocumentsResult.h"
#import "DSDocumentFieldsInformation.h"
#import "DSTemplateInformation.h"
#import "DSDocumentTemplateList.h"
#import "DSEmailSettings.h"
#import "DSLockInformation.h"
#import "DSLockRequest.h"
#import "DSNotification.h"
#import "DSRecipients.h"
#import "DSRecipientsUpdateSummary.h"
#import "DSTabs.h"
#import "DSViewUrl.h"
#import "DSCorrectViewRequest.h"
#import "DSReturnUrlRequest.h"
#import "DSRecipientViewRequest.h"
#import "DSViewLinkRequest.h"
#import "DSConsoleViewRequest.h"



@implementation DSEnvelopesApi_ListStatusChangesOptions
@end
@implementation DSEnvelopesApi_CreateEnvelopeOptions
@end
@implementation DSEnvelopesApi_GetEnvelopeOptions
@end
@implementation DSEnvelopesApi_UpdateOptions
@end



@interface DSEnvelopesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation DSEnvelopesApi

static DSEnvelopesApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        DSConfiguration *config = [DSConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[DSApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(DSApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(DSEnvelopesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[DSEnvelopesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(DSEnvelopesApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[DSEnvelopesApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [DSApiClient requestQueueSize];
}

#pragma mark - Api Methods


///
/// Gets status changes for one or more envelopes.
/// Retrieves envelope status changes for all envelopes. You can modify the information returned by adding query strings to limit the request to check between certain dates and times, or for certain envelopes, or for certain status codes. It is recommended that you use one or more of the query strings in order to limit the size of the response.\n\n### Important: Unless you are requesting the status for specific envelopes (using the `envelopeIds` or `transactionIds` properties), you must add a set the `from_date` property in the request.\n\nGetting envelope status using `transactionIds` is useful for offline signing situations where it can be used determine if an envelope was created or not, for the cases where a network connection was lost, before the envelope status could be returned.\n\n### Request Envelope Status Notes ###\n\nThe REST API GET /envelopes call uses certain filters to find results. In some cases requests are check for \"any status change\" instead of the just the single status requested. In these cases, more envelopes might be returned by the request than otherwise would be. For example, for a request with the begin date is set to Jan 1st, an end date set to Jan 7th and the status qualifier (`from_to_status`) set to `Delivered` &mdash; the response set might contain envelopes that were created during that time period, but not delivered during the time period.\n\nTo avoid unnecessary database queries, the DocuSign system checks requests to ensure that the added filters will not result in a zero-size response before acting on the request. The following table shows the valid envelope statuses (in the Valid Current Statuses column) for the status qualifiers in the request. If the status and status qualifiers in the API request do not contain any of the values shown in the valid current statuses column, then an empty list is returned.\n\nFor example, a request with a status qualifier (from_to_status) of `Delivered` and a status of \"`Created`,`Sent`\", DocuSign will always return an empty list. This is because the request essentially translates to: find the envelopes that were delivered between the begin and end dates that have a current status of `Created` or `Sent`, and since an envelope that has been delivered can never have a status of `Created` or `Sent`, a zero-size response would be generated. In this case, DocuSign does not run the request, but just returns the empty list.\n\nClient applications should check that the statuses they are requesting make sense for a given status qualifier.
///
///  @param accountId The external account number (int) or account ID Guid.
///
///
///  @returns DSEnvelopesInformation*
-(NSNumber*) listStatusChangesWithCompletionBlock: (NSString*) accountId
        
     
		
        completionHandler: (void (^)(DSEnvelopesInformation* output, NSError* error))completionBlock { 
        

   
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listStatusChanges`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

	// this version doesn't use query params
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopesInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopesInformation*)data, error);
              }
          ];
}




///
/// Gets status changes for one or more envelopes.
/// Retrieves envelope status changes for all envelopes. You can modify the information returned by adding query strings to limit the request to check between certain dates and times, or for certain envelopes, or for certain status codes. It is recommended that you use one or more of the query strings in order to limit the size of the response.\n\n### Important: Unless you are requesting the status for specific envelopes (using the `envelopeIds` or `transactionIds` properties), you must add a set the `from_date` property in the request.\n\nGetting envelope status using `transactionIds` is useful for offline signing situations where it can be used determine if an envelope was created or not, for the cases where a network connection was lost, before the envelope status could be returned.\n\n### Request Envelope Status Notes ###\n\nThe REST API GET /envelopes call uses certain filters to find results. In some cases requests are check for \"any status change\" instead of the just the single status requested. In these cases, more envelopes might be returned by the request than otherwise would be. For example, for a request with the begin date is set to Jan 1st, an end date set to Jan 7th and the status qualifier (`from_to_status`) set to `Delivered` &mdash; the response set might contain envelopes that were created during that time period, but not delivered during the time period.\n\nTo avoid unnecessary database queries, the DocuSign system checks requests to ensure that the added filters will not result in a zero-size response before acting on the request. The following table shows the valid envelope statuses (in the Valid Current Statuses column) for the status qualifiers in the request. If the status and status qualifiers in the API request do not contain any of the values shown in the valid current statuses column, then an empty list is returned.\n\nFor example, a request with a status qualifier (from_to_status) of `Delivered` and a status of \"`Created`,`Sent`\", DocuSign will always return an empty list. This is because the request essentially translates to: find the envelopes that were delivered between the begin and end dates that have a current status of `Created` or `Sent`, and since an envelope that has been delivered can never have a status of `Created` or `Sent`, a zero-size response would be generated. In this case, DocuSign does not run the request, but just returns the empty list.\n\nClient applications should check that the statuses they are requesting make sense for a given status qualifier.
///
///  @param accountId The external account number (int) or account ID Guid.
///
///
/// @param DSEnvelopesApi_ListStatusChangesOptions  Options for modifying the request.
///  @returns DSEnvelopesInformation*
-(NSNumber*) listStatusChangesWithCompletionBlock: (NSString*) accountId
        
     
    options:(DSEnvelopesApi_ListStatusChangesOptions*) options		
		
        completionHandler: (void (^)(DSEnvelopesInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listStatusChanges`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	if (options != nil) {
		if(options.block != nil) {
			
			queryParams[@"block"] = options.block;
		}
		if(options.powerformids != nil) {
			
			queryParams[@"powerformids"] = options.powerformids;
		}
		if(options.orderBy != nil) {
			
			queryParams[@"order_by"] = options.orderBy;
		}
		if(options.intersectingFolderIds != nil) {
			
			queryParams[@"intersecting_folder_ids"] = options.intersectingFolderIds;
		}
		if(options.fromDate != nil) {
			
			queryParams[@"from_date"] = options.fromDate;
		}
		if(options.acStatus != nil) {
			
			queryParams[@"ac_status"] = options.acStatus;
		}
		if(options.count != nil) {
			
			queryParams[@"count"] = options.count;
		}
		if(options.customField != nil) {
			
			queryParams[@"custom_field"] = options.customField;
		}
		if(options.email != nil) {
			
			queryParams[@"email"] = options.email;
		}
		if(options.userName != nil) {
			
			queryParams[@"user_name"] = options.userName;
		}
		if(options.exclude != nil) {
			
			queryParams[@"exclude"] = options.exclude;
		}
		if(options.folderIds != nil) {
			
			queryParams[@"folder_ids"] = options.folderIds;
		}
		if(options.folderTypes != nil) {
			
			queryParams[@"folder_types"] = options.folderTypes;
		}
		if(options.searchText != nil) {
			
			queryParams[@"search_text"] = options.searchText;
		}
		if(options.fromToStatus != nil) {
			
			queryParams[@"from_to_status"] = options.fromToStatus;
		}
		if(options.include != nil) {
			
			queryParams[@"include"] = options.include;
		}
		if(options.order != nil) {
			
			queryParams[@"order"] = options.order;
		}
		if(options.envelopeIds != nil) {
			
			queryParams[@"envelope_ids"] = options.envelopeIds;
		}
		if(options.toDate != nil) {
			
			queryParams[@"to_date"] = options.toDate;
		}
		if(options.userId != nil) {
			
			queryParams[@"user_id"] = options.userId;
		}
		if(options.status != nil) {
			
			queryParams[@"status"] = options.status;
		}
		if(options.startPosition != nil) {
			
			queryParams[@"start_position"] = options.startPosition;
		}
		if(options.transactionIds != nil) {
			
			queryParams[@"transaction_ids"] = options.transactionIds;
		}
		if(options.userFilter != nil) {
			
			queryParams[@"user_filter"] = options.userFilter;
		}
		
	}
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopesInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopesInformation*)data, error);
              }
          ];
}


///
/// Creates an envelope.
/// Creates an envelope. \n\nUsing this function you can:\n* Create an envelope and send it.\n* Create an envelope from an existing template and send it.\n\nIn either case, you can choose to save the envelope as a draft envelope instead of sending it by setting the `status` property in the request to `created` instead of `sent`.\n\n### Send an Envelope or Create a Draft Envelope\n\nThis is a multi-part/form request.\n\nEnvelope Event Notification: `eventNotification` is an optional property that specifies a set of envelope and recipient status codes, a URL, and some other options. When the envelope or recipient status changes to one of the specified status codes, DocuSign sends a message containing the updated status to the specified URL.\n\n### Note: DocuSign Connect must be enabled to use `eventNotification`, but Connect does not need to be configured for the account since the configuration is done for each envelope.\n\n### Send an Envelope from a Template\n\nWhen you create an envelope using a `templateId`, the `recipients` structure is used to assign recipients to template roles via the `roleName` property, override recipient settings that have been specified in the template and set values for tab fields that were defined in the template.\n\nWhen a template is added or applied to an envelope and the template has a locked email subject and message, that subject and message is used for the envelope and cannot be changed even if another locked template is subsequently added or applied to the envelope. If an email subject or message is entered before adding or applying a locked template, the email subject and message is overwritten with the email subject and message from the locked template.\n\n**Composite Templates**:\n\nYou can add Composite Templates structure to the  to create envelopes from a combination of DocuSign templates and PDF forms. The basic envelope remains the same, while the Composite Template adds new document and template overlays into the envelope. There can be any number of Composite Template structures in the envelope.\n\nEach Composite Template consists of server templates, inline templates, PDF Metadata templates, and documents.\n\n* Composite Template ID is an optional element used to identify the composite template. It is used as a reference when adding document object information. If used, the document content-disposition must include the `compositeTemplateId` to which the document should be added. If `compositeTemplateId` is not specified in the content-disposition, the document is applied based on the `documentId` only. If no document object is specified, the composite template inherits the first document.\n* Server Templates are server-side templates stored on the DocuSign server. If supplied they are overlaid into the envelope in the order of their Sequence value.\n* Inline Templates provide the container to pass inline XML properties. Inline templates allow you to add documents and, for PDF documents, transform the PDF fields into DocuSign tabs. If inline templates are supplied, they are overlaid into the envelope in the order of their Sequence value.\n* PDF Metadata Templates provide a container to embed design-time template information into a PDF document. DocuSign uses this information when processing the Envelope. This convention allows the document to carry the signing instructions with it, so that less information needs to be provided at run-time through an inline template or synchronized with an external structure like a server template. PDF Metadata templates are stored in the Metadata layer of a PDF in accordance with Acrobat's XMP specification. DocuSign will only find PDF Metadata templates inside documents passed in the Document object (see below). If supplied the PDF meta data template will be overlaid into the envelope in the order of their Sequence value.\n* Document objects are optional structures that provide a container to pass in a document or form. If this object is not passed, the composite template inherits the first document it finds from some other server template or inline template, starting with the lowest sequence value (discussed below).\n\nIf there are multiple composite templates, the document content-disposition can include the `compositeTemplateId` to which the document should be added. Using the `compositeTemplateId` sets which documents are associated with particular composite templates. An example of this usage is:\n\n```\n   --5cd3320a-5aac-4453-b3a4-cbb52a4cba5d\n\n   Content-Type: application/pdf\n\n   Content-Disposition: file; filename=\"eula.pdf\"; documentId=1; compositeTemplateId=\"1\"\n\n   Content-Transfer-Encoding: base64\n```\n\nAcrobat form objects are only extrapolated from the document object. DocuSign does not derive Acrobat form properties from server templates or inline templates. To instruct DocuSign to extrapolate objects from the Acrobat form, set `transformPdfFields` to \"true\" for the document. See the Transform PDF Fields section for more information about how fields are transformed into DocuSign tabs.\n\n*Sequence*\n\nEach type of template has a sequence property, which enables the templates to be over-laid in a particular order. This is significant because \"last-out\" wins in cases of the same property being specified in multiple places in the method schema.\n\n**Merge Recipient Roles for Draft Envelopes**\n\nWhen an envelope with multiple templates is sent, the recipients from the templates are merged according to template roles and empty recipients are removed. When creating an envelope with multiple templates, but not sending it (keeping it in a created state), duplicate recipients are not merged, which could cause leave duplicate recipients in the envelope.\n\nTo prevent this, the query parameter `merge_roles_on_draft` should be added when posting a draft envelope (status=created) with multiple templates. Doing this will merge template roles and remove empty recipients.\n\n### Note: DocuSign recommends that the merge roles query parameter be used anytime you are creating an envelope with multiple templates and keeping it in draft (created) status.\n\n**Template Email Subject Merge Fields**\n\nThis provides the ability to insert recipient name and email address merge fields into the email subject line when creating or sending from a template.\n\nThe merge fields, based on the recipient’s `roleName`, are added to the `emailSubject` when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.\n\nBoth the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient.\n\nIf merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.\n\n* To add a recipient’s name in the subject line add the following text in the `emailSubject` when creating the template or when sending an envelope from a template:\n\n   [[<roleName>_UserName]]\n\n   Example:\n\n   `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`\n\n* To add a recipient’s email address in the subject line add the following text in the emailSubject when creating the template or when sending an envelope from a template:\n\n   [[<roleName>_Email]]\n\n   Example:\n\n   `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`\n\nIn both cases the <roleName> is the recipient’s `roleName` in the template.\n\nFor cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.\n\n*Rules for determining the `brandId` used in an envelope*\n\nThe following rules are used to determine the `brandId` used in an envelope:\n\n* If a `brandId` is specified in the envelope/template and that brandId is available to the account, that brand is used in the envelope.\n* If more than one template is used in an envelope and more than one `brandId` is specified, the first `brandId` specified is used throughout the envelope.\n* In cases where no brand is specified and the sender belongs to a Group; if there is only one brand associated with the Group, then that brand is used in the envelope. Otherwise, the account’s default signing brand is used.\n* For envelopes that do not meet any of the previous rules, the account's default signing brand is used in the envelope.\n\n### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copies or Certified Deliveries Recipient Type.
///
///  @param accountId The external account number (int) or account ID Guid.
///
/// @param envelopeDefinition TBD Description 
///  @returns DSEnvelopeSummary*
-(NSNumber*) createEnvelopeWithCompletionBlock: (NSString*) accountId
        
    envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition 
		
        completionHandler: (void (^)(DSEnvelopeSummary* output, NSError* error))completionBlock { 
        

   
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createEnvelope`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

	// this version doesn't use query params
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeDefinition;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeSummary*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeSummary*)data, error);
              }
          ];
}




///
/// Creates an envelope.
/// Creates an envelope. \n\nUsing this function you can:\n* Create an envelope and send it.\n* Create an envelope from an existing template and send it.\n\nIn either case, you can choose to save the envelope as a draft envelope instead of sending it by setting the `status` property in the request to `created` instead of `sent`.\n\n### Send an Envelope or Create a Draft Envelope\n\nThis is a multi-part/form request.\n\nEnvelope Event Notification: `eventNotification` is an optional property that specifies a set of envelope and recipient status codes, a URL, and some other options. When the envelope or recipient status changes to one of the specified status codes, DocuSign sends a message containing the updated status to the specified URL.\n\n### Note: DocuSign Connect must be enabled to use `eventNotification`, but Connect does not need to be configured for the account since the configuration is done for each envelope.\n\n### Send an Envelope from a Template\n\nWhen you create an envelope using a `templateId`, the `recipients` structure is used to assign recipients to template roles via the `roleName` property, override recipient settings that have been specified in the template and set values for tab fields that were defined in the template.\n\nWhen a template is added or applied to an envelope and the template has a locked email subject and message, that subject and message is used for the envelope and cannot be changed even if another locked template is subsequently added or applied to the envelope. If an email subject or message is entered before adding or applying a locked template, the email subject and message is overwritten with the email subject and message from the locked template.\n\n**Composite Templates**:\n\nYou can add Composite Templates structure to the  to create envelopes from a combination of DocuSign templates and PDF forms. The basic envelope remains the same, while the Composite Template adds new document and template overlays into the envelope. There can be any number of Composite Template structures in the envelope.\n\nEach Composite Template consists of server templates, inline templates, PDF Metadata templates, and documents.\n\n* Composite Template ID is an optional element used to identify the composite template. It is used as a reference when adding document object information. If used, the document content-disposition must include the `compositeTemplateId` to which the document should be added. If `compositeTemplateId` is not specified in the content-disposition, the document is applied based on the `documentId` only. If no document object is specified, the composite template inherits the first document.\n* Server Templates are server-side templates stored on the DocuSign server. If supplied they are overlaid into the envelope in the order of their Sequence value.\n* Inline Templates provide the container to pass inline XML properties. Inline templates allow you to add documents and, for PDF documents, transform the PDF fields into DocuSign tabs. If inline templates are supplied, they are overlaid into the envelope in the order of their Sequence value.\n* PDF Metadata Templates provide a container to embed design-time template information into a PDF document. DocuSign uses this information when processing the Envelope. This convention allows the document to carry the signing instructions with it, so that less information needs to be provided at run-time through an inline template or synchronized with an external structure like a server template. PDF Metadata templates are stored in the Metadata layer of a PDF in accordance with Acrobat's XMP specification. DocuSign will only find PDF Metadata templates inside documents passed in the Document object (see below). If supplied the PDF meta data template will be overlaid into the envelope in the order of their Sequence value.\n* Document objects are optional structures that provide a container to pass in a document or form. If this object is not passed, the composite template inherits the first document it finds from some other server template or inline template, starting with the lowest sequence value (discussed below).\n\nIf there are multiple composite templates, the document content-disposition can include the `compositeTemplateId` to which the document should be added. Using the `compositeTemplateId` sets which documents are associated with particular composite templates. An example of this usage is:\n\n```\n   --5cd3320a-5aac-4453-b3a4-cbb52a4cba5d\n\n   Content-Type: application/pdf\n\n   Content-Disposition: file; filename=\"eula.pdf\"; documentId=1; compositeTemplateId=\"1\"\n\n   Content-Transfer-Encoding: base64\n```\n\nAcrobat form objects are only extrapolated from the document object. DocuSign does not derive Acrobat form properties from server templates or inline templates. To instruct DocuSign to extrapolate objects from the Acrobat form, set `transformPdfFields` to \"true\" for the document. See the Transform PDF Fields section for more information about how fields are transformed into DocuSign tabs.\n\n*Sequence*\n\nEach type of template has a sequence property, which enables the templates to be over-laid in a particular order. This is significant because \"last-out\" wins in cases of the same property being specified in multiple places in the method schema.\n\n**Merge Recipient Roles for Draft Envelopes**\n\nWhen an envelope with multiple templates is sent, the recipients from the templates are merged according to template roles and empty recipients are removed. When creating an envelope with multiple templates, but not sending it (keeping it in a created state), duplicate recipients are not merged, which could cause leave duplicate recipients in the envelope.\n\nTo prevent this, the query parameter `merge_roles_on_draft` should be added when posting a draft envelope (status=created) with multiple templates. Doing this will merge template roles and remove empty recipients.\n\n### Note: DocuSign recommends that the merge roles query parameter be used anytime you are creating an envelope with multiple templates and keeping it in draft (created) status.\n\n**Template Email Subject Merge Fields**\n\nThis provides the ability to insert recipient name and email address merge fields into the email subject line when creating or sending from a template.\n\nThe merge fields, based on the recipient’s `roleName`, are added to the `emailSubject` when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.\n\nBoth the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient.\n\nIf merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.\n\n* To add a recipient’s name in the subject line add the following text in the `emailSubject` when creating the template or when sending an envelope from a template:\n\n   [[<roleName>_UserName]]\n\n   Example:\n\n   `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`\n\n* To add a recipient’s email address in the subject line add the following text in the emailSubject when creating the template or when sending an envelope from a template:\n\n   [[<roleName>_Email]]\n\n   Example:\n\n   `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`\n\nIn both cases the <roleName> is the recipient’s `roleName` in the template.\n\nFor cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then [[<roleName>_UserName]] or [[<roleName>_Email]] is shown in the email subject.\n\n*Rules for determining the `brandId` used in an envelope*\n\nThe following rules are used to determine the `brandId` used in an envelope:\n\n* If a `brandId` is specified in the envelope/template and that brandId is available to the account, that brand is used in the envelope.\n* If more than one template is used in an envelope and more than one `brandId` is specified, the first `brandId` specified is used throughout the envelope.\n* In cases where no brand is specified and the sender belongs to a Group; if there is only one brand associated with the Group, then that brand is used in the envelope. Otherwise, the account’s default signing brand is used.\n* For envelopes that do not meet any of the previous rules, the account's default signing brand is used in the envelope.\n\n### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copies or Certified Deliveries Recipient Type.
///
///  @param accountId The external account number (int) or account ID Guid.
///
/// @param envelopeDefinition TBD Description 
/// @param DSEnvelopesApi_CreateEnvelopeOptions  Options for modifying the request.
///  @returns DSEnvelopeSummary*
-(NSNumber*) createEnvelopeWithCompletionBlock: (NSString*) accountId
        
    envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition 
    options:(DSEnvelopesApi_CreateEnvelopeOptions*) options		
		
        completionHandler: (void (^)(DSEnvelopeSummary* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createEnvelope`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	if (options != nil) {
		if(options.cdseMode != nil) {
			
			queryParams[@"cdse_mode"] = options.cdseMode;
		}
		if(options.mergeRolesOnDraft != nil) {
			
			queryParams[@"merge_roles_on_draft"] = options.mergeRolesOnDraft;
		}
		
	}
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeDefinition;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeSummary*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeSummary*)data, error);
              }
          ];
}




///
/// Gets the envelope status for the specified envelopes.
/// Retrieves the envelope status for the specified envelopes.
///
///  @param accountId The external account number (int) or account ID Guid.
///
/// @param envelopeIdsRequest TBD Description 
///
///  @returns DSEnvelopesInformation*
-(NSNumber*) listStatusWithCompletionBlock: (NSString*) accountId
        
    envelopeIdsRequest:(DSEnvelopeIdsRequest*) envelopeIdsRequest 
    		
		
        completionHandler: (void (^)(DSEnvelopesInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listStatus`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/status"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeIdsRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopesInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopesInformation*)data, error);
              }
          ];
}


///
/// Gets the status of a envelope.
/// Retrieves the overall status for the specified envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///  @returns DSEnvelope*
-(NSNumber*) getEnvelopeWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
		
        completionHandler: (void (^)(DSEnvelope* output, NSError* error))completionBlock { 
        

   
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getEnvelope`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `getEnvelope`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

	// this version doesn't use query params
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelope*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelope*)data, error);
              }
          ];
}




///
/// Gets the status of a envelope.
/// Retrieves the overall status for the specified envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
/// @param DSEnvelopesApi_GetEnvelopeOptions  Options for modifying the request.
///  @returns DSEnvelope*
-(NSNumber*) getEnvelopeWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    options:(DSEnvelopesApi_GetEnvelopeOptions*) options		
		
        completionHandler: (void (^)(DSEnvelope* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getEnvelope`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `getEnvelope`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	if (options != nil) {
		if(options.include != nil) {
			
			queryParams[@"include"] = options.include;
		}
		
	}
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelope*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelope*)data, error);
              }
          ];
}


///
/// Send Draft Envelope/Void Envelope/Move/Purge Envelope/Modify draft
/// The Put Envelopes endpoint provides the following functionality:\n\n* Sends the specified single draft envelope.\nAdd {\"status\":\"sent\"} to the request body to send the envelope.\n\n* Voids the specified in-process envelope.\nAdd {\"status\":\"voided\", \"voidedReason\":\"The reason for voiding the envelope\"} to the request body to void the envelope.\n\n* Replaces the current email subject and message for a draft envelope.\nAdd {\"emailSubject\":\"subject\",  \"emailBlurb\":\"message\"}  to the request body to modify the subject and message.\n\n* Place the envelope documents and envelope metadata in a purge queue so that this information is removed from the DocuSign system.\nAdd {\"purgeState\":\"purge type\"} to the request body.\n\n*Additional information on purging documents*\n\nThe purge request can only be used for completed envelopes that are not marked as the authoritative copy. The requesting user must have permission to purge documents and must be the sender (the requesting user can act as the sender using Send On Behalf Of).\n\n### Note: If you have set the Document Retention policy on your account, envelope documents are automatically placed in the purge queue and the warning emails are sent at the end of the retention period. \n### Note: You can set the Document Retention policy in the Classic DocuSign Experience by specifying the number of days to retain documents. \n### Note: Setting a Document Retention policy is the same as setting a schedule for purging documents.\n\nWhen the purge request is initiated the envelope documents, or documents and envelope metadata, are placed in a purge queue for deletion in 14 days. A warning email notification is sent to the sender and recipients associated with the envelope, notifying them that the envelope documents will be deleted in 14 days and providing a link to the documents. A second email is sent 7 days later with the same message. At the end of the 14-day period, the envelope documents are deleted from the system.\n\nIf `purgeState=\"documents_queued\"` is used in the request, then only the documents are deleted and any corresponding attachments and tabs remain in the DocuSign system. If `purgeState= \"documents_and_metadata_queued\"` is used in the request, then the documents, attachments, and tabs are deleted.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelope TBD Description 
///  @returns DSEnvelopeUpdateSummary*
-(NSNumber*) updateWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    envelope:(DSEnvelope*) envelope 
		
        completionHandler: (void (^)(DSEnvelopeUpdateSummary* output, NSError* error))completionBlock { 
        

   
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `update`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `update`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

	// this version doesn't use query params
    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelope;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeUpdateSummary*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeUpdateSummary*)data, error);
              }
          ];
}




///
/// Send Draft Envelope/Void Envelope/Move/Purge Envelope/Modify draft
/// The Put Envelopes endpoint provides the following functionality:\n\n* Sends the specified single draft envelope.\nAdd {\"status\":\"sent\"} to the request body to send the envelope.\n\n* Voids the specified in-process envelope.\nAdd {\"status\":\"voided\", \"voidedReason\":\"The reason for voiding the envelope\"} to the request body to void the envelope.\n\n* Replaces the current email subject and message for a draft envelope.\nAdd {\"emailSubject\":\"subject\",  \"emailBlurb\":\"message\"}  to the request body to modify the subject and message.\n\n* Place the envelope documents and envelope metadata in a purge queue so that this information is removed from the DocuSign system.\nAdd {\"purgeState\":\"purge type\"} to the request body.\n\n*Additional information on purging documents*\n\nThe purge request can only be used for completed envelopes that are not marked as the authoritative copy. The requesting user must have permission to purge documents and must be the sender (the requesting user can act as the sender using Send On Behalf Of).\n\n### Note: If you have set the Document Retention policy on your account, envelope documents are automatically placed in the purge queue and the warning emails are sent at the end of the retention period. \n### Note: You can set the Document Retention policy in the Classic DocuSign Experience by specifying the number of days to retain documents. \n### Note: Setting a Document Retention policy is the same as setting a schedule for purging documents.\n\nWhen the purge request is initiated the envelope documents, or documents and envelope metadata, are placed in a purge queue for deletion in 14 days. A warning email notification is sent to the sender and recipients associated with the envelope, notifying them that the envelope documents will be deleted in 14 days and providing a link to the documents. A second email is sent 7 days later with the same message. At the end of the 14-day period, the envelope documents are deleted from the system.\n\nIf `purgeState=\"documents_queued\"` is used in the request, then only the documents are deleted and any corresponding attachments and tabs remain in the DocuSign system. If `purgeState= \"documents_and_metadata_queued\"` is used in the request, then the documents, attachments, and tabs are deleted.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelope TBD Description 
/// @param DSEnvelopesApi_UpdateOptions  Options for modifying the request.
///  @returns DSEnvelopeUpdateSummary*
-(NSNumber*) updateWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    envelope:(DSEnvelope*) envelope 
    options:(DSEnvelopesApi_UpdateOptions*) options		
		
        completionHandler: (void (^)(DSEnvelopeUpdateSummary* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `update`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `update`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	if (options != nil) {
		if(options.resendEnvelope != nil) {
			
			queryParams[@"resend_envelope"] = options.resendEnvelope;
		}
		
	}
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelope;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeUpdateSummary*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeUpdateSummary*)data, error);
              }
          ];
}




///
/// Gets the envelope audit events for an envelope.
/// Gets the envelope audit events for the specified envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSEnvelopeAuditEventResponse*
-(NSNumber*) listAuditEventsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSEnvelopeAuditEventResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listAuditEvents`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `listAuditEvents`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/audit_events"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeAuditEventResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeAuditEventResponse*)data, error);
              }
          ];
}




///
/// Gets the custom field information for the specified envelope.
/// Retrieves the custom field information for the specified envelope. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes, and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.\n\nThere are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. With a list custom field, the sender selects the value of the field from a pre-made list.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSCustomFieldsEnvelope*
-(NSNumber*) listCustomFieldsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSCustomFieldsEnvelope* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listCustomFields`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `listCustomFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/custom_fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSCustomFieldsEnvelope*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSCustomFieldsEnvelope*)data, error);
              }
          ];
}




///
/// Updates envelope custom fields in an envelope.
/// Updates the envelope custom fields in draft and in-process envelopes.\n\nEach custom field used in an envelope must have a unique name.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param customFields TBD Description 
///
///  @returns DSCustomFields*
-(NSNumber*) updateCustomFieldsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    customFields:(DSCustomFields*) customFields 
    		
		
        completionHandler: (void (^)(DSCustomFields* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateCustomFields`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `updateCustomFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/custom_fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = customFields;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSCustomFields*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSCustomFields*)data, error);
              }
          ];
}




///
/// Updates envelope custom fields for an envelope.
/// Updates the envelope custom fields for draft and in-process envelopes.\n\nEach custom field used in an envelope must have a unique name.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param customFields TBD Description 
///
///  @returns DSCustomFields*
-(NSNumber*) createCustomFieldsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    customFields:(DSCustomFields*) customFields 
    		
		
        completionHandler: (void (^)(DSCustomFields* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createCustomFields`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createCustomFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/custom_fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = customFields;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSCustomFields*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSCustomFields*)data, error);
              }
          ];
}




///
/// Deletes envelope custom fields for draft and in-process envelopes.
/// Deletes envelope custom fields for draft and in-process envelopes.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param customFields TBD Description 
///
///  @returns DSCustomFields*
-(NSNumber*) deleteCustomFieldsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    customFields:(DSCustomFields*) customFields 
    		
		
        completionHandler: (void (^)(DSCustomFields* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteCustomFields`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteCustomFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/custom_fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = customFields;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSCustomFields*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSCustomFields*)data, error);
              }
          ];
}




///
/// Gets a list of envelope documents.
/// Retrieves a list of documents associated with the specified envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSEnvelopeDocumentsResult*
-(NSNumber*) listDocumentsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSEnvelopeDocumentsResult* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listDocuments`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `listDocuments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeDocumentsResult*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeDocumentsResult*)data, error);
              }
          ];
}




///
/// Adds one or more documents to an existing envelope document.
/// Adds one or more documents to an existing envelope document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelopeDefinition TBD Description 
///
///  @returns DSEnvelopeDocumentsResult*
-(NSNumber*) updateDocumentsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition 
    		
		
        completionHandler: (void (^)(DSEnvelopeDocumentsResult* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateDocuments`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `updateDocuments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeDefinition;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeDocumentsResult*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeDocumentsResult*)data, error);
              }
          ];
}




///
/// Deletes documents from a draft envelope.
/// Deletes one or more documents from an existing draft envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param envelopeDefinition TBD Description 
///
///  @returns DSEnvelopeDocumentsResult*
-(NSNumber*) deleteDocumentsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    envelopeDefinition:(DSEnvelopeDefinition*) envelopeDefinition 
    		
		
        completionHandler: (void (^)(DSEnvelopeDocumentsResult* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteDocuments`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteDocuments`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = envelopeDefinition;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEnvelopeDocumentsResult*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEnvelopeDocumentsResult*)data, error);
              }
          ];
}




///
/// Gets a document from an envelope.
/// Retrieves the specified document from the envelope. If the account has the Highlight Data Changes feature enabled, there is an option to request that any changes in the envelope be highlighted.\n\nYou can also use this method to retrieve a PDF containing the combined content of all documents and the certificate. If the account has the Highlight Data Changes feature enabled, there is an option to request that any changes in the envelope be highlighted. \n\nTo retrieve the combined content replace the `{documentId}` parameter in the endpoint with `combined`.\n/accounts/{accountId}/envelopes/{envelopeId}/documents/combined
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///
///
///
///  @returns NSURL*
-(NSNumber*) getDocumentWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
        
     
    		
		
        completionHandler: (void (^)(NSURL* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getDocument`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `getDocument`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `getDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/pdf"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSURL*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSURL*)data, error);
              }
          ];
}




///
/// Gets the custom document fields from an  existing envelope document.
/// Retrieves the custom document field information from an existing envelope document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///
///
///
///  @returns DSDocumentFieldsInformation*
-(NSNumber*) listDocumentFieldsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
        
     
    		
		
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listDocumentFields`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `listDocumentFields`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `listDocumentFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentFieldsInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentFieldsInformation*)data, error);
              }
          ];
}




///
/// Updates existing custom document fields in an existing envelope document.
/// Updates existing custom document fields in an existing envelope document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation TBD Description 
///
///  @returns DSDocumentFieldsInformation*
-(NSNumber*) updateDocumentFieldsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
        
    documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation 
    		
		
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateDocumentFields`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `updateDocumentFields`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `updateDocumentFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = documentFieldsInformation;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentFieldsInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentFieldsInformation*)data, error);
              }
          ];
}




///
/// Creates custom document fields in an existing envelope document.
/// Creates custom document fields in an existing envelope document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation TBD Description 
///
///  @returns DSDocumentFieldsInformation*
-(NSNumber*) createDocumentFieldsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
        
    documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation 
    		
		
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createDocumentFields`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createDocumentFields`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `createDocumentFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = documentFieldsInformation;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentFieldsInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentFieldsInformation*)data, error);
              }
          ];
}




///
/// Deletes custom document fields from an existing envelope document.
/// Deletes custom document fields from an existing envelope document.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///
/// @param documentFieldsInformation TBD Description 
///
///  @returns DSDocumentFieldsInformation*
-(NSNumber*) deleteDocumentFieldsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
        
    documentFieldsInformation:(DSDocumentFieldsInformation*) documentFieldsInformation 
    		
		
        completionHandler: (void (^)(DSDocumentFieldsInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteDocumentFields`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteDocumentFields`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `deleteDocumentFields`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = documentFieldsInformation;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentFieldsInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentFieldsInformation*)data, error);
              }
          ];
}




///
/// Deletes a page from a document in an envelope.
/// Deletes a page from a document in an envelope based on the page number.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///  @param pageNumber The page number being accessed.
///
///
///
///  @returns void
-(NSNumber*) deleteDocumentPageWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
         pageNumber: (NSString*) pageNumber
        
     
    		
		
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteDocumentPage`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteDocumentPage`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `deleteDocumentPage`"];
    }
    
    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pageNumber` when calling `deleteDocumentPage`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    if (pageNumber != nil) {
        pathParams[@"pageNumber"] = pageNumber;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}




///
/// Gets the templates associated with a document in an existing envelope.
/// Retrieves the templates associated with a document in the specified envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///
///
///
///  @returns DSTemplateInformation*
-(NSNumber*) listTemplatesForDocumentWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
        
     
    		
		
        completionHandler: (void (^)(DSTemplateInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listTemplatesForDocument`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `listTemplatesForDocument`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `listTemplatesForDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTemplateInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTemplateInformation*)data, error);
              }
          ];
}




///
/// Adds templates to a document in an  envelope.
/// Adds templates to a document in the specified envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///
/// @param documentTemplateList TBD Description 
///
///  @returns DSDocumentTemplateList*
-(NSNumber*) applyTemplateToDocumentWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
        
    documentTemplateList:(DSDocumentTemplateList*) documentTemplateList 
    		
		
        completionHandler: (void (^)(DSDocumentTemplateList* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `applyTemplateToDocument`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `applyTemplateToDocument`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `applyTemplateToDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = documentTemplateList;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentTemplateList*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentTemplateList*)data, error);
              }
          ];
}




///
/// Deletes a template from a document in an existing envelope.
/// Deletes the specified template from a document in an existing envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param documentId The ID of the document being accessed.
///  @param templateId The ID of the template being accessed.
///
///
///
///  @returns void
-(NSNumber*) deleteTemplatesFromDocumentWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         documentId: (NSString*) documentId
         templateId: (NSString*) templateId
        
     
    		
		
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteTemplatesFromDocument`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteTemplatesFromDocument`"];
    }
    
    // verify the required parameter 'documentId' is set
    if (documentId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `documentId` when calling `deleteTemplatesFromDocument`"];
    }
    
    // verify the required parameter 'templateId' is set
    if (templateId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `templateId` when calling `deleteTemplatesFromDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates/{templateId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (documentId != nil) {
        pathParams[@"documentId"] = documentId;
    }
    if (templateId != nil) {
        pathParams[@"templateId"] = templateId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}




///
/// Gets the email setting overrides for an envelope.
/// Retrieves the email override settings for the specified envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSEmailSettings*
-(NSNumber*) getEmailSettingsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSEmailSettings* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getEmailSettings`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `getEmailSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/email_settings"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEmailSettings*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEmailSettings*)data, error);
              }
          ];
}




///
/// Updates the email setting overrides for an envelope.
/// Updates the existing email override settings for the specified envelope. Note that modifying email settings will only affect email communications that occur after the modification was made.\n\nThis can also be used to delete an individual email override setting by using an empty string for the value to be deleted.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param emailSettings TBD Description 
///
///  @returns DSEmailSettings*
-(NSNumber*) updateEmailSettingsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    emailSettings:(DSEmailSettings*) emailSettings 
    		
		
        completionHandler: (void (^)(DSEmailSettings* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateEmailSettings`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `updateEmailSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/email_settings"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = emailSettings;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEmailSettings*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEmailSettings*)data, error);
              }
          ];
}




///
/// Adds email setting overrides to an envelope.
/// Adds email override settings, changing the email address to reply to an email address, name, or the BCC for email archive information, for the envelope. Note that adding email settings will only affect email communications that occur after the addition was made.\n\n### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copies or Certified Deliveries Recipient Type.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param emailSettings TBD Description 
///
///  @returns DSEmailSettings*
-(NSNumber*) createEmailSettingsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    emailSettings:(DSEmailSettings*) emailSettings 
    		
		
        completionHandler: (void (^)(DSEmailSettings* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createEmailSettings`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createEmailSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/email_settings"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = emailSettings;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEmailSettings*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEmailSettings*)data, error);
              }
          ];
}




///
/// Deletes the email setting overrides for an envelope.
/// Deletes all existing email override settings for the envelope. If you want to delete an individual email override setting, use the PUT and set the value to an empty string. Note that deleting email settings will only affect email communications that occur after the deletion and the normal account email settings are used for future email communications.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSEmailSettings*
-(NSNumber*) deleteEmailSettingsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSEmailSettings* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteEmailSettings`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteEmailSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/email_settings"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSEmailSettings*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSEmailSettings*)data, error);
              }
          ];
}




///
/// Gets envelope lock information.
/// Retrieves general information about the envelope lock.\n\nIf the call is made by the locked by user and the request has the same integrator key as original, then the `X-DocuSign-Edit` header and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSLockInformation*
-(NSNumber*) getLockWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSLockInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getLock`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `getLock`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/lock"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSLockInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSLockInformation*)data, error);
              }
          ];
}




///
/// Updates an envelope lock.
/// Updates the lock duration time or update the `lockedByApp` property information for the specified envelope. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information and the `X-DocuSign-Edit` header must be included or an error will be generated.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param lockRequest TBD Description 
///
///  @returns DSLockInformation*
-(NSNumber*) updateLockWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    lockRequest:(DSLockRequest*) lockRequest 
    		
		
        completionHandler: (void (^)(DSLockInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateLock`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `updateLock`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/lock"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = lockRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSLockInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSLockInformation*)data, error);
              }
          ];
}




///
/// Lock an envelope.
/// Locks the specified envelope, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the envelope.\n\nNote: Users must have envelope locking capability enabled to use this function (userSetting `canLockEnvelopes` must be  set to true for the user).
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param lockRequest TBD Description 
///
///  @returns DSLockInformation*
-(NSNumber*) createLockWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    lockRequest:(DSLockRequest*) lockRequest 
    		
		
        completionHandler: (void (^)(DSLockInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createLock`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createLock`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/lock"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = lockRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSLockInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSLockInformation*)data, error);
              }
          ];
}




///
/// Deletes an envelope lock.
/// Deletes the lock from the specified envelope. The `X-DocuSign-Edit` header must be included in the request.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSLockInformation*
-(NSNumber*) deleteLockWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSLockInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteLock`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteLock`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/lock"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSLockInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSLockInformation*)data, error);
              }
          ];
}




///
/// Gets envelope notification information.
/// Retrieves the envelope notification, reminders and expirations, information for an existing envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSNotification*
-(NSNumber*) getNotificationSettingsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSNotification* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `getNotificationSettings`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `getNotificationSettings`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/notification"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSNotification*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSNotification*)data, error);
              }
          ];
}




///
/// Gets the status of recipients for an envelope.
/// Retrieves the status of all recipients in a single envelope and identifies the current recipient in the routing list. \n\nThe `currentRoutingOrder` property of the response contains the `routingOrder` value of the current recipient indicating that the envelope has been sent to the recipient, but the recipient has not completed their actions.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSRecipients*
-(NSNumber*) listRecipientsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSRecipients* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listRecipients`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `listRecipients`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipients*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipients*)data, error);
              }
          ];
}




///
/// Updates recipients in a draft envelope or corrects recipient information for an in process envelope.
/// Updates recipients in a draft envelope or corrects recipient information for an in process envelope. \n\nFor draft envelopes, you can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.\n\nOnce an envelope has been sent, you can only edit: `email`, `userName`, `signerName`, `routingOrder`, `faxNumber`, and `deliveryMethod`. You can also select to resend an envelope by using the `resend_envelope` option.\n\nIf you send information for a recipient that does not already exist in a draft envelope, the recipient is added to the envelope (similar to the POST).
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param recipients TBD Description 
///
///  @returns DSRecipientsUpdateSummary*
-(NSNumber*) updateRecipientsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    recipients:(DSRecipients*) recipients 
    		
		
        completionHandler: (void (^)(DSRecipientsUpdateSummary* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateRecipients`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `updateRecipients`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = recipients;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipientsUpdateSummary*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipientsUpdateSummary*)data, error);
              }
          ];
}




///
/// Adds one or more recipients to an envelope.
/// Adds one or more recipients to an envelope.\n\nFor an in process envelope, one that has been sent and has not been completed or voided, an email is sent to a new recipient when they are reached in the routing order. If the new recipient's routing order is before or the same as the envelope's next recipient, an email is only sent if the optional `resend_envelope` query string is set to **true**.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param recipients TBD Description 
///
///  @returns DSRecipients*
-(NSNumber*) createRecipientWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    recipients:(DSRecipients*) recipients 
    		
		
        completionHandler: (void (^)(DSRecipients* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createRecipient`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createRecipient`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = recipients;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipients*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipients*)data, error);
              }
          ];
}




///
/// Deletes recipients from an envelope.
/// Deletes one or more recipients from a draft or sent envelope. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.\n\nIf the envelope is `In Process`, meaning that it has been sent and has not  been completed or voided, recipients that have completed their actions cannot be deleted.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param recipients TBD Description 
///
///  @returns DSRecipients*
-(NSNumber*) deleteRecipientsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    recipients:(DSRecipients*) recipients 
    		
		
        completionHandler: (void (^)(DSRecipients* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteRecipients`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteRecipients`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = recipients;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipients*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipients*)data, error);
              }
          ];
}




///
/// Deletes a recipient from an envelope.
/// Deletes the specified recipient file from the specified envelope. This cannot be used if the envelope has been sent.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
///
///
///  @returns DSRecipients*
-(NSNumber*) deleteRecipientWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         recipientId: (NSString*) recipientId
        
     
    		
		
        completionHandler: (void (^)(DSRecipients* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteRecipient`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteRecipient`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `deleteRecipient`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (recipientId != nil) {
        pathParams[@"recipientId"] = recipientId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSRecipients*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSRecipients*)data, error);
              }
          ];
}




///
/// Gets the tabs information for a signer or sign-in-person recipient in an envelope.
/// Retrieves information about the tabs associated with a recipient in a draft envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
///
///
///  @returns DSTabs*
-(NSNumber*) listTabsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         recipientId: (NSString*) recipientId
        
     
    		
		
        completionHandler: (void (^)(DSTabs* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listTabs`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `listTabs`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `listTabs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (recipientId != nil) {
        pathParams[@"recipientId"] = recipientId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTabs*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabs*)data, error);
              }
          ];
}




///
/// Updates the tabs for a recipient.
/// Updates one or more tabs for a recipient in a draft envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
/// @param tabs TBD Description 
///
///  @returns DSTabs*
-(NSNumber*) updateTabsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         recipientId: (NSString*) recipientId
        
    tabs:(DSTabs*) tabs 
    		
		
        completionHandler: (void (^)(DSTabs* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `updateTabs`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `updateTabs`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `updateTabs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (recipientId != nil) {
        pathParams[@"recipientId"] = recipientId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = tabs;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PUT"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTabs*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabs*)data, error);
              }
          ];
}




///
/// Adds tabs for a recipient.
/// Adds one or more tabs for a recipient.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
/// @param tabs TBD Description 
///
///  @returns DSTabs*
-(NSNumber*) createTabsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         recipientId: (NSString*) recipientId
        
    tabs:(DSTabs*) tabs 
    		
		
        completionHandler: (void (^)(DSTabs* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createTabs`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createTabs`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `createTabs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (recipientId != nil) {
        pathParams[@"recipientId"] = recipientId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = tabs;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTabs*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabs*)data, error);
              }
          ];
}




///
/// Deletes the tabs associated with a recipient.
/// Deletes one or more tabs associated with a recipient in a draft envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///  @param recipientId The ID of the recipient being accessed.
///
/// @param tabs TBD Description 
///
///  @returns DSTabs*
-(NSNumber*) deleteTabsWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
         recipientId: (NSString*) recipientId
        
    tabs:(DSTabs*) tabs 
    		
		
        completionHandler: (void (^)(DSTabs* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteTabs`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteTabs`"];
    }
    
    // verify the required parameter 'recipientId' is set
    if (recipientId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `recipientId` when calling `deleteTabs`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    if (recipientId != nil) {
        pathParams[@"recipientId"] = recipientId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = tabs;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTabs*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTabs*)data, error);
              }
          ];
}




///
/// Get List of Templates used in an Envelope
/// This returns a list of the templates, name and ID, used in an envelope.<br/><br/>Note: This only returns information for server side templates.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns DSTemplateInformation*
-(NSNumber*) listTemplatesWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        completionHandler: (void (^)(DSTemplateInformation* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `listTemplates`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `listTemplates`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSTemplateInformation*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSTemplateInformation*)data, error);
              }
          ];
}




///
/// Adds templates to an envelope.
/// Adds templates to the specified envelope.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param documentTemplateList TBD Description 
///
///  @returns DSDocumentTemplateList*
-(NSNumber*) applyTemplateWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    documentTemplateList:(DSDocumentTemplateList*) documentTemplateList 
    		
		
        completionHandler: (void (^)(DSDocumentTemplateList* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `applyTemplate`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `applyTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = documentTemplateList;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSDocumentTemplateList*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSDocumentTemplateList*)data, error);
              }
          ];
}




///
/// Returns a URL to the envelope correction UI.
/// Returns a URL that allows you to embed the envelope correction view of the DocuSign UI in your applications.\n\nImportant: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param correctViewRequest TBD Description 
///
///  @returns DSViewUrl*
-(NSNumber*) createCorrectViewWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    correctViewRequest:(DSCorrectViewRequest*) correctViewRequest 
    		
		
        completionHandler: (void (^)(DSViewUrl* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createCorrectView`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createCorrectView`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/views/correct"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = correctViewRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSViewUrl*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSViewUrl*)data, error);
              }
          ];
}




///
/// Returns a URL to the edit view UI.
/// Returns a URL that allows you to embed the edit view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign editing view. \n\nUpon sending completion, the user is returned to the return URL provided by the API application.\n\nImportant: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param returnUrlRequest TBD Description 
///
///  @returns DSViewUrl*
-(NSNumber*) createEditViewWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    returnUrlRequest:(DSReturnUrlRequest*) returnUrlRequest 
    		
		
        completionHandler: (void (^)(DSViewUrl* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createEditView`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createEditView`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/views/edit"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = returnUrlRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSViewUrl*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSViewUrl*)data, error);
              }
          ];
}




///
/// Returns a URL to the recipient view UI.
/// Returns a URL that allows you to embed the recipient view of the DocuSign UI in your applications. This call cannot be used to view draft envelopes, since those envelopes have not been sent. \n\nImportant: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. \n\nAn entry is added into the Security Level section of the DocuSign Certificate of Completion that reflects the `securityDomain` and `authenticationMethod` properties used to verify the user identity.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param recipientViewRequest TBD Description 
///
///  @returns DSViewUrl*
-(NSNumber*) createRecipientViewWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    recipientViewRequest:(DSRecipientViewRequest*) recipientViewRequest 
    		
		
        completionHandler: (void (^)(DSViewUrl* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createRecipientView`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createRecipientView`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/views/recipient"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = recipientViewRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSViewUrl*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSViewUrl*)data, error);
              }
          ];
}




///
/// Returns a URL to the sender view UI.
/// Returns a URL that allows you to embed the sender view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign sending view. \n\nUpon sending completion, the user is returned to the return URL provided by the API application.\n\nImportant: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param returnUrlRequest TBD Description 
///
///  @returns DSViewUrl*
-(NSNumber*) createSenderViewWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    returnUrlRequest:(DSReturnUrlRequest*) returnUrlRequest 
    		
		
        completionHandler: (void (^)(DSViewUrl* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createSenderView`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createSenderView`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/views/sender"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = returnUrlRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSViewUrl*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSViewUrl*)data, error);
              }
          ];
}




///
/// Reserved: Returns a URL to the secure link view UI.
/// Reserved: Returns a URL that allows you to embed the secure link view of the DocuSign UI in your applications.
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
/// @param viewLinkRequest TBD Description 
///
///  @returns DSViewUrl*
-(NSNumber*) createViewLinkWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
    viewLinkRequest:(DSViewLinkRequest*) viewLinkRequest 
    		
		
        completionHandler: (void (^)(DSViewUrl* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createViewLink`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `createViewLink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/views/viewlink"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = viewLinkRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSViewUrl*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSViewUrl*)data, error);
              }
          ];
}




///
/// Reserved: Expires a secure view link.
/// Reserved: Expires a secure view link
///
///  @param accountId The external account number (int) or account ID Guid.
///  @param envelopeId The envelopeId Guid of the envelope being accessed.
///
///
///
///  @returns void
-(NSNumber*) deleteViewLinkWithCompletionBlock: (NSString*) accountId
         envelopeId: (NSString*) envelopeId
        
     
    		
		
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `deleteViewLink`"];
    }
    
    // verify the required parameter 'envelopeId' is set
    if (envelopeId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `envelopeId` when calling `deleteViewLink`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/envelopes/{envelopeId}/views/viewlink"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    if (envelopeId != nil) {
        pathParams[@"envelopeId"] = envelopeId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}




///
/// Returns a URL to the authentication view UI.
/// Returns a URL that allows you to embed the authentication view of the DocuSign UI in your applications.
///
///  @param accountId The external account number (int) or account ID Guid.
///
/// @param consoleViewRequest TBD Description 
///
///  @returns DSViewUrl*
-(NSNumber*) createConsoleViewWithCompletionBlock: (NSString*) accountId
        
    consoleViewRequest:(DSConsoleViewRequest*) consoleViewRequest 
    		
		
        completionHandler: (void (^)(DSViewUrl* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'accountId' is set
    if (accountId == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `accountId` when calling `createConsoleView`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/accounts/{accountId}/views/console"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (accountId != nil) {
        pathParams[@"accountId"] = accountId;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
	
	
	
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [DSApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [DSApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = consoleViewRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"DSViewUrl*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((DSViewUrl*)data, error);
              }
          ];
}



@end
