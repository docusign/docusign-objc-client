#import <DSESMergeField.h>

@implementation DSESMergeField

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"allowSenderToEdit": @"allowSenderToEdit", @"allowSenderToEditMetadata": @"allowSenderToEditMetadata", @"configurationType": @"configurationType", @"configurationTypeMetadata": @"configurationTypeMetadata", @"path": @"path", @"pathExtended": @"pathExtended", @"pathExtendedMetadata": @"pathExtendedMetadata", @"pathMetadata": @"pathMetadata", @"row": @"row", @"rowMetadata": @"rowMetadata", @"writeBack": @"writeBack", @"writeBackMetadata": @"writeBackMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"allowSenderToEdit", @"allowSenderToEditMetadata", @"configurationType", @"configurationTypeMetadata", @"path", @"pathExtended", @"pathExtendedMetadata", @"pathMetadata", @"row", @"rowMetadata", @"writeBack", @"writeBackMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
