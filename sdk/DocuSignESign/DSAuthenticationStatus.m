#import "DSAuthenticationStatus.h"

@implementation DSAuthenticationStatus

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"accessCodeResult": @"accessCodeResult", @"ageVerifyResult": @"ageVerifyResult", @"anySocialIDResult": @"anySocialIDResult", @"facebookResult": @"facebookResult", @"googleResult": @"googleResult", @"idLookupResult": @"idLookupResult", @"idQuestionsResult": @"idQuestionsResult", @"linkedinResult": @"linkedinResult", @"liveIDResult": @"liveIDResult", @"ofacResult": @"ofacResult", @"openIDResult": @"openIDResult", @"phoneAuthResult": @"phoneAuthResult", @"salesforceResult": @"salesforceResult", @"smsAuthResult": @"smsAuthResult", @"sTANPinResult": @"sTANPinResult", @"twitterResult": @"twitterResult", @"yahooResult": @"yahooResult" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessCodeResult", @"ageVerifyResult", @"anySocialIDResult", @"facebookResult", @"googleResult", @"idLookupResult", @"idQuestionsResult", @"linkedinResult", @"liveIDResult", @"ofacResult", @"openIDResult", @"phoneAuthResult", @"salesforceResult", @"smsAuthResult", @"sTANPinResult", @"twitterResult", @"yahooResult"];
  return [optionalProperties containsObject:propertyName];
}

@end
