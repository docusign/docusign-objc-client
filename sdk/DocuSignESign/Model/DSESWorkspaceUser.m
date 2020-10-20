#import <DSESWorkspaceUser.h>

@implementation DSESWorkspaceUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountId": @"accountId", @"accountName": @"accountName", @"activeSince": @"activeSince", @"created": @"created", @"createdById": @"createdById", @"email": @"email", @"errorDetails": @"errorDetails", @"invitationEmailBlurb": @"invitationEmailBlurb", @"invitationEmailSubject": @"invitationEmailSubject", @"lastModified": @"lastModified", @"lastModifiedById": @"lastModifiedById", @"status": @"status", @"type": @"type", @"userId": @"userId", @"userName": @"userName", @"workspaceId": @"workspaceId", @"workspaceUserBaseUrl": @"workspaceUserBaseUrl", @"workspaceUserId": @"workspaceUserId", @"workspaceUserUri": @"workspaceUserUri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountId", @"accountName", @"activeSince", @"created", @"createdById", @"email", @"errorDetails", @"invitationEmailBlurb", @"invitationEmailSubject", @"lastModified", @"lastModifiedById", @"status", @"type", @"userId", @"userName", @"workspaceId", @"workspaceUserBaseUrl", @"workspaceUserId", @"workspaceUserUri"];
  return [optionalProperties containsObject:propertyName];
}

@end
