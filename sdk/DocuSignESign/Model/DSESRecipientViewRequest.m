#import <DSESRecipientViewRequest.h>

@implementation DSESRecipientViewRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assertionId": @"assertionId", @"authenticationInstant": @"authenticationInstant", @"authenticationMethod": @"authenticationMethod", @"clientUserId": @"clientUserId", @"email": @"email", @"frameAncestors": @"frameAncestors", @"messageOrigins": @"messageOrigins", @"pingFrequency": @"pingFrequency", @"pingUrl": @"pingUrl", @"recipientId": @"recipientId", @"returnUrl": @"returnUrl", @"securityDomain": @"securityDomain", @"userId": @"userId", @"userName": @"userName", @"xFrameOptions": @"xFrameOptions", @"xFrameOptionsAllowFromUrl": @"xFrameOptionsAllowFromUrl" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assertionId", @"authenticationInstant", @"authenticationMethod", @"clientUserId", @"email", @"frameAncestors", @"messageOrigins", @"pingFrequency", @"pingUrl", @"recipientId", @"returnUrl", @"securityDomain", @"userId", @"userName", @"xFrameOptions", @"xFrameOptionsAllowFromUrl"];
  return [optionalProperties containsObject:propertyName];
}

@end
