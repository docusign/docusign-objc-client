#import "DSTemplateTabs.h"

@implementation DSTemplateTabs

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"signHereTabs": @"signHereTabs", @"initialHereTabs": @"initialHereTabs", @"signerAttachmentTabs": @"signerAttachmentTabs", @"approveTabs": @"approveTabs", @"declineTabs": @"declineTabs", @"fullNameTabs": @"fullNameTabs", @"dateSignedTabs": @"dateSignedTabs", @"envelopeIdTabs": @"envelopeIdTabs", @"companyTabs": @"companyTabs", @"titleTabs": @"titleTabs", @"textTabs": @"textTabs", @"numberTabs": @"numberTabs", @"ssnTabs": @"ssnTabs", @"dateTabs": @"dateTabs", @"zipTabs": @"zipTabs", @"emailTabs": @"emailTabs", @"noteTabs": @"noteTabs", @"checkboxTabs": @"checkboxTabs", @"radioGroupTabs": @"radioGroupTabs", @"listTabs": @"listTabs", @"firstNameTabs": @"firstNameTabs", @"lastNameTabs": @"lastNameTabs", @"emailAddressTabs": @"emailAddressTabs", @"formulaTabs": @"formulaTabs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"signHereTabs", @"initialHereTabs", @"signerAttachmentTabs", @"approveTabs", @"declineTabs", @"fullNameTabs", @"dateSignedTabs", @"envelopeIdTabs", @"companyTabs", @"titleTabs", @"textTabs", @"numberTabs", @"ssnTabs", @"dateTabs", @"zipTabs", @"emailTabs", @"noteTabs", @"checkboxTabs", @"radioGroupTabs", @"listTabs", @"firstNameTabs", @"lastNameTabs", @"emailAddressTabs", @"formulaTabs"];

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
