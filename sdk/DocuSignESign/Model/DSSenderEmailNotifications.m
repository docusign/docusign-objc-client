#import "DSSenderEmailNotifications.h"

@implementation DSSenderEmailNotifications

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"changedSigner": @"changedSigner", @"deliveryFailed": @"deliveryFailed", @"envelopeComplete": @"envelopeComplete", @"offlineSigningFailed": @"offlineSigningFailed", @"recipientViewed": @"recipientViewed", @"senderEnvelopeDeclined": @"senderEnvelopeDeclined", @"withdrawnConsent": @"withdrawnConsent" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"changedSigner", @"deliveryFailed", @"envelopeComplete", @"offlineSigningFailed", @"recipientViewed", @"senderEnvelopeDeclined", @"withdrawnConsent"];
  return [optionalProperties containsObject:propertyName];
}

@end
