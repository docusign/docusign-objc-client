# DSBillingApi

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBillingPlan**](DSBillingApi.md#getbillingplan) | **GET** /v2/billing_plans/{billingPlanId} | Get the billing plan details.
[**getCreditCardInfo**](DSBillingApi.md#getcreditcardinfo) | **GET** /v2/accounts/{accountId}/billing_plan/credit_card | Get metadata for a given credit card.
[**getInvoice**](DSBillingApi.md#getinvoice) | **GET** /v2/accounts/{accountId}/billing_invoices/{invoiceId} | Retrieves a billing invoice.
[**getPayment**](DSBillingApi.md#getpayment) | **GET** /v2/accounts/{accountId}/billing_payments/{paymentId} | Gets billing payment information for a specific payment.
[**getPlan**](DSBillingApi.md#getplan) | **GET** /v2/accounts/{accountId}/billing_plan | Get Account Billing Plan
[**listBillingPlans**](DSBillingApi.md#listbillingplans) | **GET** /v2/billing_plans | Gets the list of available billing plans.
[**listInvoices**](DSBillingApi.md#listinvoices) | **GET** /v2/accounts/{accountId}/billing_invoices | Get a List of Billing Invoices
[**listInvoicesPastDue**](DSBillingApi.md#listinvoicespastdue) | **GET** /v2/accounts/{accountId}/billing_invoices_past_due | Get a list of past due invoices.
[**listPayments**](DSBillingApi.md#listpayments) | **GET** /v2/accounts/{accountId}/billing_payments | Gets payment information for one or more payments.
[**makePayment**](DSBillingApi.md#makepayment) | **POST** /v2/accounts/{accountId}/billing_payments | Posts a payment to a past due invoice.
[**purchaseEnvelopes**](DSBillingApi.md#purchaseenvelopes) | **PUT** /v2/accounts/{accountId}/billing_plan/purchased_envelopes | Reserverd: Purchase additional envelopes.
[**updatePlan**](DSBillingApi.md#updateplan) | **PUT** /v2/accounts/{accountId}/billing_plan | Updates the account billing plan.


# **getBillingPlan**
```objc
-(NSNumber*) getBillingPlanWithBillingPlanId: (NSString*) billingPlanId
        completionHandler: (void (^)(DSBillingPlanResponse* output, NSError* error)) handler;
```

Get the billing plan details.

Retrieves the billing plan details for the specified billing plan ID.

### Example 
```objc

NSString* billingPlanId = @"billingPlanId_example"; // The ID of the billing plan being accessed.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Get the billing plan details.
[apiInstance getBillingPlanWithBillingPlanId:billingPlanId
          completionHandler: ^(DSBillingPlanResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->getBillingPlan: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingPlanId** | **NSString***| The ID of the billing plan being accessed. | 

### Return type

[**DSBillingPlanResponse***](DSBillingPlanResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCreditCardInfo**
```objc
-(NSNumber*) getCreditCardInfoWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSCreditCardInformation* output, NSError* error)) handler;
```

Get metadata for a given credit card.

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Get metadata for a given credit card.
[apiInstance getCreditCardInfoWithAccountId:accountId
          completionHandler: ^(DSCreditCardInformation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->getCreditCardInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSCreditCardInformation***](DSCreditCardInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoice**
```objc
-(NSNumber*) getInvoiceWithAccountId: (NSString*) accountId
    invoiceId: (NSString*) invoiceId
        completionHandler: (void (^)(DSBillingInvoice* output, NSError* error)) handler;
```

Retrieves a billing invoice.

Retrieves the specified invoice.   ###### Note: If the `pdfAvailable` property in the response is set to *true*, you can download a PDF version of the invoice. To download the PDF, make the call again and change the value of the `Accept` property in the header to `Accept: application/pdf`.  Privileges required: account administrator  The response returns a list of charges and information about the charges. Quantities are usually shown as ‘unlimited’ or an integer. Amounts are shown in the currency set for the account.  **Response** The following table provides a description of the different `chargeName` property values. The information will grow as more chargeable items are added to the system.  | chargeName | Description | | --- | --- | | id_check | ID Check Charge | | in_person_signing | In Person Signing charge | | envelopes Included | Sent Envelopes for the account | | age_verify | Age verification check | | ofac | OFAC Check | | id_confirm | ID confirmation check | | student_authentication | STAN PIN authentication check | | wet_sign_fax | Pages for returning signed documents by fax | | attachment_fax | Pages for returning attachments by fax | | phone_authentication | Phone authentication charge | | powerforms | PowerForm envelopes sent | | signer_payments | Payment processing charge | | outbound_fax | Send by fax charge | | bulk_recipient_envelopes | Bulk Recipient Envelopes sent | | sms_authentications | SMS authentication charge | | saml_authentications | SAML authentication charge | | express_signer_certificate | DocuSign Express Certificate charge | | personal_signer_certificate | Personal Signer Certificate charge | | safe_certificate | SAFE BioPharma Signer Certificate charge | | seats | Included active seats charge | | open_trust_certificate | OpenTrust Signer Certificate charge | 

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* invoiceId = @"invoiceId_example"; // 

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Retrieves a billing invoice.
[apiInstance getInvoiceWithAccountId:accountId
              invoiceId:invoiceId
          completionHandler: ^(DSBillingInvoice* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->getInvoice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **invoiceId** | **NSString***|  | 

### Return type

[**DSBillingInvoice***](DSBillingInvoice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPayment**
```objc
-(NSNumber*) getPaymentWithAccountId: (NSString*) accountId
    paymentId: (NSString*) paymentId
        completionHandler: (void (^)(DSBillingPaymentItem* output, NSError* error)) handler;
```

Gets billing payment information for a specific payment.

Retrieves the information for a specified payment.   Privileges required: account administrator 

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.
NSString* paymentId = @"paymentId_example"; // 

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Gets billing payment information for a specific payment.
[apiInstance getPaymentWithAccountId:accountId
              paymentId:paymentId
          completionHandler: ^(DSBillingPaymentItem* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->getPayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 
 **paymentId** | **NSString***|  | 

### Return type

[**DSBillingPaymentItem***](DSBillingPaymentItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlan**
```objc
-(NSNumber*) getPlanWithAccountId: (NSString*) includeCreditCardInformation
    includeMetadata: (NSString*) includeMetadata
    includeSuccessorPlans: (NSString*) includeSuccessorPlans
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSAccountBillingPlanResponse* output, NSError* error)) handler;
```

Get Account Billing Plan

Retrieves the billing plan information for the specified account, including the current billing plan, successor plans, billing address, and billing credit card.  By default the successor plan and credit card information is included in the response. This information can be excluded from the response by adding the appropriate optional query string with the `setting` set to **false**.   Response  The response returns the billing plan information, including the currency code, for the plan. The `billingPlan` and `succesorPlans` property values are the same as those shown in the [ML:Get Billing Plan Details] reference. the `billingAddress` and `creditCardInformation` property values are the same as those shown in the [ML:Update Billing Plan] reference.  ###### Note: When credit card number information is shown, a mask is applied to the response so that only the last 4 digits of the card number are visible. 

### Example 
```objc

NSString* includeCreditCardInformation = @"includeCreditCardInformation_example"; // When set to **true**, excludes credit card information from the response. (optional)
NSString* includeMetadata = @"includeMetadata_example"; // When set to **true**, the `canUpgrade` and `renewalStatus` properities are included the response and an array of `supportedCountries` property is added to the `billingAddress` information.  (optional)
NSString* includeSuccessorPlans = @"includeSuccessorPlans_example"; // When set to **true**, excludes successor information from the response. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Get Account Billing Plan
[apiInstance getPlanWithAccountId:includeCreditCardInformation
              includeMetadata:includeMetadata
              includeSuccessorPlans:includeSuccessorPlans
              accountId:accountId
          completionHandler: ^(DSAccountBillingPlanResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->getPlan: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeCreditCardInformation** | **NSString***| When set to **true**, excludes credit card information from the response. | [optional] 
 **includeMetadata** | **NSString***| When set to **true**, the &#x60;canUpgrade&#x60; and &#x60;renewalStatus&#x60; properities are included the response and an array of &#x60;supportedCountries&#x60; property is added to the &#x60;billingAddress&#x60; information.  | [optional] 
 **includeSuccessorPlans** | **NSString***| When set to **true**, excludes successor information from the response. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSAccountBillingPlanResponse***](DSAccountBillingPlanResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBillingPlans**
```objc
-(NSNumber*) listBillingPlansWithCompletionHandler: 
        (void (^)(DSBillingPlansResponse* output, NSError* error)) handler;
```

Gets the list of available billing plans.

Retrieves a list of the billing plans associated with a distributor.

### Example 
```objc


DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Gets the list of available billing plans.
[apiInstance listBillingPlansWithCompletionHandler: 
          ^(DSBillingPlansResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->listBillingPlans: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DSBillingPlansResponse***](DSBillingPlansResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoices**
```objc
-(NSNumber*) listInvoicesWithAccountId: (NSString*) fromDate
    toDate: (NSString*) toDate
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSBillingInvoicesResponse* output, NSError* error)) handler;
```

Get a List of Billing Invoices

Retrieves a list of invoices for the account. If the from date or to date queries are not specified, the response returns invoices for the last 365 days.  Privileges required: account administrator 

### Example 
```objc

NSString* fromDate = @"fromDate_example"; // Specifies the date/time of the earliest invoice in the account to retrieve. (optional)
NSString* toDate = @"toDate_example"; // Specifies the date/time of the latest invoice in the account to retrieve. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Get a List of Billing Invoices
[apiInstance listInvoicesWithAccountId:fromDate
              toDate:toDate
              accountId:accountId
          completionHandler: ^(DSBillingInvoicesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->listInvoices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **NSString***| Specifies the date/time of the earliest invoice in the account to retrieve. | [optional] 
 **toDate** | **NSString***| Specifies the date/time of the latest invoice in the account to retrieve. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBillingInvoicesResponse***](DSBillingInvoicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvoicesPastDue**
```objc
-(NSNumber*) listInvoicesPastDueWithAccountId: (NSString*) accountId
        completionHandler: (void (^)(DSBillingInvoicesSummary* output, NSError* error)) handler;
```

Get a list of past due invoices.

Returns a list past due invoices for the account and notes if payment can be made through the REST API.   Privileges Required: account administrator

### Example 
```objc

NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Get a list of past due invoices.
[apiInstance listInvoicesPastDueWithAccountId:accountId
          completionHandler: ^(DSBillingInvoicesSummary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->listInvoicesPastDue: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBillingInvoicesSummary***](DSBillingInvoicesSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPayments**
```objc
-(NSNumber*) listPaymentsWithAccountId: (NSString*) fromDate
    toDate: (NSString*) toDate
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSBillingPaymentsResponse* output, NSError* error)) handler;
```

Gets payment information for one or more payments.

Retrieves a list containing information about one or more payments. If the from date or to date queries are not used, the response returns payment information for the last 365 days.   Privileges required: account administrator 

### Example 
```objc

NSString* fromDate = @"fromDate_example"; // Specifies the date/time of the earliest payment in the account to retrieve. (optional)
NSString* toDate = @"toDate_example"; // Specifies the date/time of the latest payment in the account to retrieve. (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Gets payment information for one or more payments.
[apiInstance listPaymentsWithAccountId:fromDate
              toDate:toDate
              accountId:accountId
          completionHandler: ^(DSBillingPaymentsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->listPayments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromDate** | **NSString***| Specifies the date/time of the earliest payment in the account to retrieve. | [optional] 
 **toDate** | **NSString***| Specifies the date/time of the latest payment in the account to retrieve. | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBillingPaymentsResponse***](DSBillingPaymentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makePayment**
```objc
-(NSNumber*) makePaymentWithAccountId: (DSBillingPaymentRequest*) billingPaymentRequest
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSBillingPaymentResponse* output, NSError* error)) handler;
```

Posts a payment to a past due invoice.

Posts a payment to a past due invoice.   ###### Note: This can only be used if the `paymentAllowed` value for a past due invoice is true. This can be determined calling [ML:GetBillingInvoicesPastDue].  The response returns information for a single payment, if a payment ID was used in the endpoint, or a list of payments. If the from date or to date queries or payment ID are not used, the response returns payment information for the last 365 days. If the request was for a single payment ID, the `nextUri` and `previousUri` properties are not returned.  Privileges required: account administrator

### Example 
```objc

DSBillingPaymentRequest* billingPaymentRequest = [[DSBillingPaymentRequest alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Posts a payment to a past due invoice.
[apiInstance makePaymentWithAccountId:billingPaymentRequest
              accountId:accountId
          completionHandler: ^(DSBillingPaymentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->makePayment: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingPaymentRequest** | [**DSBillingPaymentRequest***](DSBillingPaymentRequest*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBillingPaymentResponse***](DSBillingPaymentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchaseEnvelopes**
```objc
-(NSNumber*) purchaseEnvelopesWithAccountId: (DSPurchasedEnvelopesInformation*) purchasedEnvelopesInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(NSError* error)) handler;
```

Reserverd: Purchase additional envelopes.

Reserved: At this time, this endpoint is limited to DocuSign internal use only. Completes the purchase of envelopes for your account. The actual purchase is done as part of an internal workflow interaction with an envelope vendor.

### Example 
```objc

DSPurchasedEnvelopesInformation* purchasedEnvelopesInformation = [[DSPurchasedEnvelopesInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Reserverd: Purchase additional envelopes.
[apiInstance purchaseEnvelopesWithAccountId:purchasedEnvelopesInformation
              accountId:accountId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->purchaseEnvelopes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchasedEnvelopesInformation** | [**DSPurchasedEnvelopesInformation***](DSPurchasedEnvelopesInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlan**
```objc
-(NSNumber*) updatePlanWithAccountId: (NSString*) previewBillingPlan
    billingPlanInformation: (DSBillingPlanInformation*) billingPlanInformation
    accountId: (NSString*) accountId
        completionHandler: (void (^)(DSBillingPlanUpdateResponse* output, NSError* error)) handler;
```

Updates the account billing plan.

Updates the billing plan information, billing address, and credit card information for the specified account.

### Example 
```objc

NSString* previewBillingPlan = @"previewBillingPlan_example"; // When set to **true**, updates the account using a preview billing plan. (optional)
DSBillingPlanInformation* billingPlanInformation = [[DSBillingPlanInformation alloc] init]; //  (optional)
NSString* accountId = @"accountId_example"; // The external account number (int) or account ID Guid.

DSBillingApi*apiInstance = [[DSBillingApi alloc] init];

// Updates the account billing plan.
[apiInstance updatePlanWithAccountId:previewBillingPlan
              billingPlanInformation:billingPlanInformation
              accountId:accountId
          completionHandler: ^(DSBillingPlanUpdateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DSBillingApi->updatePlan: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **previewBillingPlan** | **NSString***| When set to **true**, updates the account using a preview billing plan. | [optional] 
 **billingPlanInformation** | [**DSBillingPlanInformation***](DSBillingPlanInformation*.md)|  | [optional] 
 **accountId** | **NSString***| The external account number (int) or account ID Guid. | 

### Return type

[**DSBillingPlanUpdateResponse***](DSBillingPlanUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

