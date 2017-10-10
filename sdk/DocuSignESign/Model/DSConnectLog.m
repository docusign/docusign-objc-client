#import "DSConnectLog.h"

@implementation DSConnectLog

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accountId": @"accountId", @"configUrl": @"configUrl", @"connectDebugLog": @"connectDebugLog", @"connectId": @"connectId", @"created": @"created", @"email": @"email", @"envelopeId": @"envelopeId", @"error": @"error", @"failureId": @"failureId", @"failureUri": @"failureUri", @"lastTry": @"lastTry", @"logId": @"logId", @"logUri": @"logUri", @"retryCount": @"retryCount", @"retryUri": @"retryUri", @"status": @"status", @"subject": @"subject", @"userName": @"userName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountId", @"configUrl", @"connectDebugLog", @"connectId", @"created", @"email", @"envelopeId", @"error", @"failureId", @"failureUri", @"lastTry", @"logId", @"logUri", @"retryCount", @"retryUri", @"status", @"subject", @"userName"];
  return [optionalProperties containsObject:propertyName];
}

@end
