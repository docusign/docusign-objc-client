#import "DSUserInformation.h"

@implementation DSUserInformation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accountManagementGranular": @"accountManagementGranular", @"activationAccessCode": @"activationAccessCode", @"createdDateTime": @"createdDateTime", @"customSettings": @"customSettings", @"email": @"email", @"enableConnectForUser": @"enableConnectForUser", @"errorDetails": @"errorDetails", @"firstName": @"firstName", @"forgottenPasswordInfo": @"forgottenPasswordInfo", @"groupList": @"groupList", @"homeAddress": @"homeAddress", @"initialsImageUri": @"initialsImageUri", @"isAdmin": @"isAdmin", @"lastLogin": @"lastLogin", @"lastName": @"lastName", @"loginStatus": @"loginStatus", @"middleName": @"middleName", @"password": @"password", @"passwordExpiration": @"passwordExpiration", @"permissionProfileId": @"permissionProfileId", @"permissionProfileName": @"permissionProfileName", @"profileImageUri": @"profileImageUri", @"sendActivationOnInvalidLogin": @"sendActivationOnInvalidLogin", @"signatureImageUri": @"signatureImageUri", @"suffixName": @"suffixName", @"title": @"title", @"uri": @"uri", @"userId": @"userId", @"userName": @"userName", @"userProfileLastModifiedDate": @"userProfileLastModifiedDate", @"userSettings": @"userSettings", @"userStatus": @"userStatus", @"userType": @"userType", @"workAddress": @"workAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountManagementGranular", @"activationAccessCode", @"createdDateTime", @"customSettings", @"email", @"enableConnectForUser", @"errorDetails", @"firstName", @"forgottenPasswordInfo", @"groupList", @"homeAddress", @"initialsImageUri", @"isAdmin", @"lastLogin", @"lastName", @"loginStatus", @"middleName", @"password", @"passwordExpiration", @"permissionProfileId", @"permissionProfileName", @"profileImageUri", @"sendActivationOnInvalidLogin", @"signatureImageUri", @"suffixName", @"title", @"uri", @"userId", @"userName", @"userProfileLastModifiedDate", @"userSettings", @"userStatus", @"userType", @"workAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
