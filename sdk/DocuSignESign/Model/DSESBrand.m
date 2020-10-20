#import <DSESBrand.h>

@implementation DSESBrand

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"brandCompany": @"brandCompany", @"brandId": @"brandId", @"brandLanguages": @"brandLanguages", @"brandName": @"brandName", @"colors": @"colors", @"defaultBrandLanguage": @"defaultBrandLanguage", @"emailContent": @"emailContent", @"errorDetails": @"errorDetails", @"isOverridingCompanyName": @"isOverridingCompanyName", @"isSendingDefault": @"isSendingDefault", @"isSigningDefault": @"isSigningDefault", @"landingPages": @"landingPages", @"links": @"links", @"logos": @"logos", @"resources": @"resources" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"brandCompany", @"brandId", @"brandLanguages", @"brandName", @"colors", @"defaultBrandLanguage", @"emailContent", @"errorDetails", @"isOverridingCompanyName", @"isSendingDefault", @"isSigningDefault", @"landingPages", @"links", @"logos", @"resources"];
  return [optionalProperties containsObject:propertyName];
}

@end
