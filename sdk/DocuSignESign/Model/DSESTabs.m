#import <DSESTabs.h>

@implementation DSESTabs

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"approveTabs": @"approveTabs", @"checkboxTabs": @"checkboxTabs", @"commentThreadTabs": @"commentThreadTabs", @"companyTabs": @"companyTabs", @"dateSignedTabs": @"dateSignedTabs", @"dateTabs": @"dateTabs", @"declineTabs": @"declineTabs", @"drawTabs": @"drawTabs", @"emailAddressTabs": @"emailAddressTabs", @"emailTabs": @"emailTabs", @"envelopeIdTabs": @"envelopeIdTabs", @"firstNameTabs": @"firstNameTabs", @"formulaTabs": @"formulaTabs", @"fullNameTabs": @"fullNameTabs", @"initialHereTabs": @"initialHereTabs", @"lastNameTabs": @"lastNameTabs", @"listTabs": @"listTabs", @"notarizeTabs": @"notarizeTabs", @"notaryCertificateTabs": @"notaryCertificateTabs", @"notarySealTabs": @"notarySealTabs", @"noteTabs": @"noteTabs", @"numberTabs": @"numberTabs", @"polyLineOverlayTabs": @"polyLineOverlayTabs", @"radioGroupTabs": @"radioGroupTabs", @"signerAttachmentTabs": @"signerAttachmentTabs", @"signHereTabs": @"signHereTabs", @"smartSectionTabs": @"smartSectionTabs", @"ssnTabs": @"ssnTabs", @"tabGroups": @"tabGroups", @"textTabs": @"textTabs", @"titleTabs": @"titleTabs", @"viewTabs": @"viewTabs", @"zipTabs": @"zipTabs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"approveTabs", @"checkboxTabs", @"commentThreadTabs", @"companyTabs", @"dateSignedTabs", @"dateTabs", @"declineTabs", @"drawTabs", @"emailAddressTabs", @"emailTabs", @"envelopeIdTabs", @"firstNameTabs", @"formulaTabs", @"fullNameTabs", @"initialHereTabs", @"lastNameTabs", @"listTabs", @"notarizeTabs", @"notaryCertificateTabs", @"notarySealTabs", @"noteTabs", @"numberTabs", @"polyLineOverlayTabs", @"radioGroupTabs", @"signerAttachmentTabs", @"signHereTabs", @"smartSectionTabs", @"ssnTabs", @"tabGroups", @"textTabs", @"titleTabs", @"viewTabs", @"zipTabs"];
  return [optionalProperties containsObject:propertyName];
}

@end
