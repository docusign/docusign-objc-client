#import "DSAuthenticationStatus.h"

@implementation DSAuthenticationStatus

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accessCodeResult": @"accessCodeResult", @"phoneAuthResult": @"phoneAuthResult", @"idLookupResult": @"idLookupResult", @"idQuestionsResult": @"idQuestionsResult", @"ageVerifyResult": @"ageVerifyResult", @"sTANPinResult": @"sTANPinResult", @"ofacResult": @"ofacResult", @"liveIDResult": @"liveIDResult", @"facebookResult": @"facebookResult", @"googleResult": @"googleResult", @"linkedinResult": @"linkedinResult", @"salesforceResult": @"salesforceResult", @"twitterResult": @"twitterResult", @"openIDResult": @"openIDResult", @"anySocialIDResult": @"anySocialIDResult", @"yahooResult": @"yahooResult", @"smsAuthResult": @"smsAuthResult" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"accessCodeResult", @"phoneAuthResult", @"idLookupResult", @"idQuestionsResult", @"ageVerifyResult", @"sTANPinResult", @"ofacResult", @"liveIDResult", @"facebookResult", @"googleResult", @"linkedinResult", @"salesforceResult", @"twitterResult", @"openIDResult", @"anySocialIDResult", @"yahooResult", @"smsAuthResult"];

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

@end
