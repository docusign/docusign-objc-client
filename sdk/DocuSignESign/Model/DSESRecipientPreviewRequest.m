#import <DSESRecipientPreviewRequest.h>

@implementation DSESRecipientPreviewRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"assertionId": @"assertionId", @"authenticationInstant": @"authenticationInstant", @"authenticationMethod": @"authenticationMethod", @"pingFrequency": @"pingFrequency", @"pingUrl": @"pingUrl", @"recipientId": @"recipientId", @"returnUrl": @"returnUrl", @"securityDomain": @"securityDomain", @"xFrameOptions": @"xFrameOptions", @"xFrameOptionsAllowFromUrl": @"xFrameOptionsAllowFromUrl" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assertionId", @"authenticationInstant", @"authenticationMethod", @"pingFrequency", @"pingUrl", @"recipientId", @"returnUrl", @"securityDomain", @"xFrameOptions", @"xFrameOptionsAllowFromUrl"];
  return [optionalProperties containsObject:propertyName];
}

@end
