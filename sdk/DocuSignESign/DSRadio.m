#import "DSRadio.h"

@implementation DSRadio

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"anchorCaseSensitive": @"anchorCaseSensitive", @"anchorHorizontalAlignment": @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent": @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord": @"anchorMatchWholeWord", @"anchorString": @"anchorString", @"anchorUnits": @"anchorUnits", @"anchorXOffset": @"anchorXOffset", @"anchorYOffset": @"anchorYOffset", @"errorDetails": @"errorDetails", @"locked": @"locked", @"pageNumber": @"pageNumber", @"required": @"required", @"selected": @"selected", @"tabId": @"tabId", @"tabOrder": @"tabOrder", @"value": @"value", @"xPosition": @"xPosition", @"yPosition": @"yPosition" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"anchorCaseSensitive", @"anchorHorizontalAlignment", @"anchorIgnoreIfNotPresent", @"anchorMatchWholeWord", @"anchorString", @"anchorUnits", @"anchorXOffset", @"anchorYOffset", @"errorDetails", @"locked", @"pageNumber", @"required", @"selected", @"tabId", @"tabOrder", @"value", @"xPosition", @"yPosition"];
  return [optionalProperties containsObject:propertyName];
}

@end
