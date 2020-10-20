#import <DSESComment.h>

@implementation DSESComment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"envelopeId": @"envelopeId", @"hmac": @"hmac", @"_id": @"id", @"mentions": @"mentions", @"read": @"read", @"sentByEmail": @"sentByEmail", @"sentByFullName": @"sentByFullName", @"sentByImageId": @"sentByImageId", @"sentByInitials": @"sentByInitials", @"sentByRecipientId": @"sentByRecipientId", @"sentByUserId": @"sentByUserId", @"signingGroupId": @"signingGroupId", @"signingGroupName": @"signingGroupName", @"subject": @"subject", @"tabId": @"tabId", @"text": @"text", @"threadId": @"threadId", @"threadOriginatorId": @"threadOriginatorId", @"timestamp": @"timestamp", @"timeStampFormatted": @"timeStampFormatted", @"visibleTo": @"visibleTo" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"envelopeId", @"hmac", @"_id", @"mentions", @"read", @"sentByEmail", @"sentByFullName", @"sentByImageId", @"sentByInitials", @"sentByRecipientId", @"sentByUserId", @"signingGroupId", @"signingGroupName", @"subject", @"tabId", @"text", @"threadId", @"threadOriginatorId", @"timestamp", @"timeStampFormatted", @"visibleTo"];
  return [optionalProperties containsObject:propertyName];
}

@end
