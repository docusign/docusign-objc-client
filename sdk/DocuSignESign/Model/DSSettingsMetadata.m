#import "DSSettingsMetadata.h"

@implementation DSSettingsMetadata

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"is21CFRPart11": @"is21CFRPart11", @"options": @"options", @"rights": @"rights", @"uiHint": @"uiHint", @"uiOrder": @"uiOrder", @"uiType": @"uiType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"is21CFRPart11", @"options", @"rights", @"uiHint", @"uiOrder", @"uiType"];
  return [optionalProperties containsObject:propertyName];
}

@end
