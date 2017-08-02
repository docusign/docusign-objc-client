#import "DSTabs.h"

@implementation DSTabs

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"approveTabs": @"approveTabs", @"checkboxTabs": @"checkboxTabs", @"companyTabs": @"companyTabs", @"dateSignedTabs": @"dateSignedTabs", @"dateTabs": @"dateTabs", @"declineTabs": @"declineTabs", @"emailAddressTabs": @"emailAddressTabs", @"emailTabs": @"emailTabs", @"envelopeIdTabs": @"envelopeIdTabs", @"firstNameTabs": @"firstNameTabs", @"formulaTabs": @"formulaTabs", @"fullNameTabs": @"fullNameTabs", @"initialHereTabs": @"initialHereTabs", @"lastNameTabs": @"lastNameTabs", @"listTabs": @"listTabs", @"noteTabs": @"noteTabs", @"numberTabs": @"numberTabs", @"radioGroupTabs": @"radioGroupTabs", @"signerAttachmentTabs": @"signerAttachmentTabs", @"signHereTabs": @"signHereTabs", @"ssnTabs": @"ssnTabs", @"textTabs": @"textTabs", @"titleTabs": @"titleTabs", @"viewTabs": @"viewTabs", @"zipTabs": @"zipTabs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"approveTabs", @"checkboxTabs", @"companyTabs", @"dateSignedTabs", @"dateTabs", @"declineTabs", @"emailAddressTabs", @"emailTabs", @"envelopeIdTabs", @"firstNameTabs", @"formulaTabs", @"fullNameTabs", @"initialHereTabs", @"lastNameTabs", @"listTabs", @"noteTabs", @"numberTabs", @"radioGroupTabs", @"signerAttachmentTabs", @"signHereTabs", @"ssnTabs", @"textTabs", @"titleTabs", @"viewTabs", @"zipTabs"];
  return [optionalProperties containsObject:propertyName];
}

@end
