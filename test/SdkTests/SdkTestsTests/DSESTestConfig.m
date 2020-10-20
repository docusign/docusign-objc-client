#import "DSESTestConfig.h"

@implementation DSESTestConfig

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"username": @"username", @"password": @"password", @"integratorKey": @"integratorKey", @"accountId": @"accountId", @"envelopeId": @"envelopeId", @"templateId": @"templateId", @"host": @"host", @"returnUrl": @"returnUrl", @"recipientEmail": @"recipientEmail", @"recipientName": @"recipientName", @"templateRoleName": @"templateRoleName", @"apiClient": @"apiClient", @"headerKey": @"headerKey", @"headerValue": @"headerValue", @"clientUserId": @"clientUserId", @"userId":@"userId", @"oauthBasePath":@"" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"username", @"password", @"integratorKey", @"accountId", @"envelopeId", @"templateId", @"host", @"returnUrl", @"recipientEmail", @"recipientName", @"templateRoleName", @"apiClient", @"headerKey", @"headerValue", @"clientUserId", @"userId", @""];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

- (instancetype)init {
    if (self) {
        self.integratorKey = @"97617642-faf7-4b4d-a9fb-692bfa86bad0";

        // JWT Auth Settings
        self.userId = @"f6c9e287-c8b0-4064-8c3f-7130f1a9ebcf";
        self.oauthBasePath = @"account-d.docusign.com";
        self.privateKeyFileURL = [[NSBundle bundleForClass:[self class]] URLForResource:@"private" withExtension:@"pem"];
        self.recipientEmail = @"docusignsdktest@mailinator.com";
        self.recipientName = @"Test User";
        self.templateRoleName = @"signer";
        self.templateId = @"210fc78e-e2f4-4778-b4eb-6b53abb6c82d";
        self.returnUrl = @"https://www.docusign.com/devcenter";
        self.host = @"https://demo.docusign.net/restapi";
        self.clientUserId = @"1234";
        self.jwtTokenExpiresInSeconds = 60 * 60 * 60;
        
        self.apiClient = [[DSESApiClient alloc] initWithBaseURL:[[NSURL alloc] initWithString:self.host]];
    }
    return self;
}

@end
