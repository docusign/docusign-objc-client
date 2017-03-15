#import "DSUserSignature.h"

@implementation DSUserSignature

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"adoptedDateTime": @"adoptedDateTime", @"createdDateTime": @"createdDateTime", @"errorDetails": @"errorDetails", @"initials150ImageId": @"initials150ImageId", @"initialsImageUri": @"initialsImageUri", @"isDefault": @"isDefault", @"signature150ImageId": @"signature150ImageId", @"signatureFont": @"signatureFont", @"signatureId": @"signatureId", @"signatureImageUri": @"signatureImageUri", @"signatureInitials": @"signatureInitials", @"signatureName": @"signatureName", @"signatureType": @"signatureType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"adoptedDateTime", @"createdDateTime", @"errorDetails", @"initials150ImageId", @"initialsImageUri", @"isDefault", @"signature150ImageId", @"signatureFont", @"signatureId", @"signatureImageUri", @"signatureInitials", @"signatureName", @"signatureType"];
  return [optionalProperties containsObject:propertyName];
}

@end
