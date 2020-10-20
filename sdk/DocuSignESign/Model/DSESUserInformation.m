#import <DSESUserInformation.h>

@implementation DSESUserInformation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"activationAccessCode": @"activationAccessCode", @"company": @"company", @"connectConfigurations": @"connectConfigurations", @"countryCode": @"countryCode", @"createdDateTime": @"createdDateTime", @"customSettings": @"customSettings", @"defaultAccountId": @"defaultAccountId", @"email": @"email", @"enableConnectForUser": @"enableConnectForUser", @"errorDetails": @"errorDetails", @"firstName": @"firstName", @"forgottenPasswordInfo": @"forgottenPasswordInfo", @"groupList": @"groupList", @"homeAddress": @"homeAddress", @"initialsImageUri": @"initialsImageUri", @"isAdmin": @"isAdmin", @"isNAREnabled": @"isNAREnabled", @"jobTitle": @"jobTitle", @"lastLogin": @"lastLogin", @"lastName": @"lastName", @"loginStatus": @"loginStatus", @"middleName": @"middleName", @"password": @"password", @"passwordExpiration": @"passwordExpiration", @"permissionProfileId": @"permissionProfileId", @"permissionProfileName": @"permissionProfileName", @"profileImageUri": @"profileImageUri", @"sendActivationEmail": @"sendActivationEmail", @"sendActivationOnInvalidLogin": @"sendActivationOnInvalidLogin", @"signatureImageUri": @"signatureImageUri", @"subscribe": @"subscribe", @"suffixName": @"suffixName", @"title": @"title", @"uri": @"uri", @"userAddedToAccountDateTime": @"userAddedToAccountDateTime", @"userId": @"userId", @"userName": @"userName", @"userProfileLastModifiedDate": @"userProfileLastModifiedDate", @"userSettings": @"userSettings", @"userStatus": @"userStatus", @"userType": @"userType", @"workAddress": @"workAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"activationAccessCode", @"company", @"connectConfigurations", @"countryCode", @"createdDateTime", @"customSettings", @"defaultAccountId", @"email", @"enableConnectForUser", @"errorDetails", @"firstName", @"forgottenPasswordInfo", @"groupList", @"homeAddress", @"initialsImageUri", @"isAdmin", @"isNAREnabled", @"jobTitle", @"lastLogin", @"lastName", @"loginStatus", @"middleName", @"password", @"passwordExpiration", @"permissionProfileId", @"permissionProfileName", @"profileImageUri", @"sendActivationEmail", @"sendActivationOnInvalidLogin", @"signatureImageUri", @"subscribe", @"suffixName", @"title", @"uri", @"userAddedToAccountDateTime", @"userId", @"userName", @"userProfileLastModifiedDate", @"userSettings", @"userStatus", @"userType", @"workAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
