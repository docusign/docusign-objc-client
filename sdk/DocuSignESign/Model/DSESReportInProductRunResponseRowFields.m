#import <DSESReportInProductRunResponseRowFields.h>

@implementation DSESReportInProductRunResponseRowFields

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accessCodeRequired": @"accessCodeRequired", @"accessCodesAttempted": @"accessCodesAttempted", @"accessCodesFailed": @"accessCodesFailed", @"accountId": @"accountId", @"authenticationCategory": @"authenticationCategory", @"authenticationSuccess": @"authenticationSuccess", @"authenticationType": @"authenticationType", @"averageTimeToCompleteSeconds": @"averageTimeToCompleteSeconds", @"avgCompleteSeconds": @"avgCompleteSeconds", @"completed": @"completed", @"completedTs": @"completedTs", @"createdDate": @"createdDate", @"customField": @"customField", @"declinedDate": @"declinedDate", @"declinedReason": @"declinedReason", @"deliveredDate": @"deliveredDate", @"envelopeCount": @"envelopeCount", @"envelopeCreator": @"envelopeCreator", @"envelopeId": @"envelopeId", @"envelopeInitialSendTs": @"envelopeInitialSendTs", @"envelopesBilled": @"envelopesBilled", @"envelopesCompleted": @"envelopesCompleted", @"envelopesCompletedCount": @"envelopesCompletedCount", @"envelopesDeclined": @"envelopesDeclined", @"envelopesSent": @"envelopesSent", @"envelopesSentCount": @"envelopesSentCount", @"envelopesVoided": @"envelopesVoided", @"envelopeVoidedReason": @"envelopeVoidedReason", @"eodDocumentDescription": @"eodDocumentDescription", @"eodDocumentName": @"eodDocumentName", @"eodDocumentProfileId": @"eodDocumentProfileId", @"eodTransactionId": @"eodTransactionId", @"eodTransactionName": @"eodTransactionName", @"eventDate": @"eventDate", @"expirationDate": @"expirationDate", @"expiredTs": @"expiredTs", @"failures": @"failures", @"failureVendorCode": @"failureVendorCode", @"failureVendorReason": @"failureVendorReason", @"firstSendTs": @"firstSendTs", @"groupId": @"groupId", @"groupName": @"groupName", @"hoursToCompleteEnd": @"hoursToCompleteEnd", @"hoursToCompleteStart": @"hoursToCompleteStart", @"idChecksAttempted": @"idChecksAttempted", @"idChecksFailed": @"idChecksFailed", @"initialSendTs": @"initialSendTs", @"ipAddress": @"ipAddress", @"lastActivity": @"lastActivity", @"lastActivityDate": @"lastActivityDate", @"lastSentDate": @"lastSentDate", @"notSigned": @"notSigned", @"numberOfAuthenticatedRecipients": @"numberOfAuthenticatedRecipients", @"numberOfCompletedSignatures": @"numberOfCompletedSignatures", @"numberOfDocuments": @"numberOfDocuments", @"numberOfPages": @"numberOfPages", @"numberOfRecipients": @"numberOfRecipients", @"numberOfSends": @"numberOfSends", @"numberOfSigners": @"numberOfSigners", @"numberOfTotalDocuments": @"numberOfTotalDocuments", @"numberOfTotalPages": @"numberOfTotalPages", @"numberOfTotalSigners": @"numberOfTotalSigners", @"numberOfUniqueSenders": @"numberOfUniqueSenders", @"numberTotalRecipients": @"numberTotalRecipients", @"periodEnd": @"periodEnd", @"periodStart": @"periodStart", @"phoneCallsAttempted": @"phoneCallsAttempted", @"phoneCallsFailed": @"phoneCallsFailed", @"reasonForDeclining": @"reasonForDeclining", @"reasonForVoiding": @"reasonForVoiding", @"reassignReason": @"reassignReason", @"received": @"received", @"recipient": @"recipient", @"recipientAction": @"recipientAction", @"recipientCompanyName": @"recipientCompanyName", @"recipientCountry": @"recipientCountry", @"recipientEmail": @"recipientEmail", @"recipientId": @"recipientId", @"recipientName": @"recipientName", @"recipientTemplateRoleName": @"recipientTemplateRoleName", @"recipientTitle": @"recipientTitle", @"recipientType": @"recipientType", @"recipientUserId": @"recipientUserId", @"remainingSignatures": @"remainingSignatures", @"routingOrder": @"routingOrder", @"senderAccountId": @"senderAccountId", @"senderCompanyName": @"senderCompanyName", @"senderCountry": @"senderCountry", @"senderEmail": @"senderEmail", @"senderIPAddress": @"senderIPAddress", @"senderJobTitle": @"senderJobTitle", @"senderName": @"senderName", @"senderUserId": @"senderUserId", @"signDate": @"signDate", @"_signed": @"signed", @"signedDate": @"signedDate", @"signedOnMobile": @"signedOnMobile", @"signedOnPaper": @"signedOnPaper", @"signerList": @"signerList", @"status": @"status", @"statusChangedDate": @"statusChangedDate", @"statusChangedTs": @"statusChangedTs", @"subject": @"subject", @"successes": @"successes", @"templatesCreated": @"templatesCreated", @"templatesCreatedCount": @"templatesCreatedCount", @"terminalStatusDate": @"terminalStatusDate", @"timeToCompleteSeconds": @"timeToCompleteSeconds", @"timeToDeliver": @"timeToDeliver", @"totalDocuments": @"totalDocuments", @"totalEnvelopes": @"totalEnvelopes", @"totalPages": @"totalPages", @"totalRecipients": @"totalRecipients", @"totalSigners": @"totalSigners", @"uniqueSenders": @"uniqueSenders", @"userAccountEmail": @"userAccountEmail", @"userAccountName": @"userAccountName", @"userAccountStatus": @"userAccountStatus", @"userCount": @"userCount", @"userId": @"userId", @"viewDate": @"viewDate", @"voidedTs": @"voidedTs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCodeRequired", @"accessCodesAttempted", @"accessCodesFailed", @"accountId", @"authenticationCategory", @"authenticationSuccess", @"authenticationType", @"averageTimeToCompleteSeconds", @"avgCompleteSeconds", @"completed", @"completedTs", @"createdDate", @"customField", @"declinedDate", @"declinedReason", @"deliveredDate", @"envelopeCount", @"envelopeCreator", @"envelopeId", @"envelopeInitialSendTs", @"envelopesBilled", @"envelopesCompleted", @"envelopesCompletedCount", @"envelopesDeclined", @"envelopesSent", @"envelopesSentCount", @"envelopesVoided", @"envelopeVoidedReason", @"eodDocumentDescription", @"eodDocumentName", @"eodDocumentProfileId", @"eodTransactionId", @"eodTransactionName", @"eventDate", @"expirationDate", @"expiredTs", @"failures", @"failureVendorCode", @"failureVendorReason", @"firstSendTs", @"groupId", @"groupName", @"hoursToCompleteEnd", @"hoursToCompleteStart", @"idChecksAttempted", @"idChecksFailed", @"initialSendTs", @"ipAddress", @"lastActivity", @"lastActivityDate", @"lastSentDate", @"notSigned", @"numberOfAuthenticatedRecipients", @"numberOfCompletedSignatures", @"numberOfDocuments", @"numberOfPages", @"numberOfRecipients", @"numberOfSends", @"numberOfSigners", @"numberOfTotalDocuments", @"numberOfTotalPages", @"numberOfTotalSigners", @"numberOfUniqueSenders", @"numberTotalRecipients", @"periodEnd", @"periodStart", @"phoneCallsAttempted", @"phoneCallsFailed", @"reasonForDeclining", @"reasonForVoiding", @"reassignReason", @"received", @"recipient", @"recipientAction", @"recipientCompanyName", @"recipientCountry", @"recipientEmail", @"recipientId", @"recipientName", @"recipientTemplateRoleName", @"recipientTitle", @"recipientType", @"recipientUserId", @"remainingSignatures", @"routingOrder", @"senderAccountId", @"senderCompanyName", @"senderCountry", @"senderEmail", @"senderIPAddress", @"senderJobTitle", @"senderName", @"senderUserId", @"signDate", @"_signed", @"signedDate", @"signedOnMobile", @"signedOnPaper", @"signerList", @"status", @"statusChangedDate", @"statusChangedTs", @"subject", @"successes", @"templatesCreated", @"templatesCreatedCount", @"terminalStatusDate", @"timeToCompleteSeconds", @"timeToDeliver", @"totalDocuments", @"totalEnvelopes", @"totalPages", @"totalRecipients", @"totalSigners", @"uniqueSenders", @"userAccountEmail", @"userAccountName", @"userAccountStatus", @"userCount", @"userId", @"viewDate", @"voidedTs"];
  return [optionalProperties containsObject:propertyName];
}

@end