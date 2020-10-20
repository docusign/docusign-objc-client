#import <DSESDocumentHtmlCollapsibleDisplaySettings.h>

@implementation DSESDocumentHtmlCollapsibleDisplaySettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"arrowClosed": @"arrowClosed", @"arrowColor": @"arrowColor", @"arrowLocation": @"arrowLocation", @"arrowOpen": @"arrowOpen", @"arrowSize": @"arrowSize", @"arrowStyle": @"arrowStyle", @"containerStyle": @"containerStyle", @"labelStyle": @"labelStyle", @"onlyArrowIsClickable": @"onlyArrowIsClickable", @"outerLabelAndArrowStyle": @"outerLabelAndArrowStyle" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"arrowClosed", @"arrowColor", @"arrowLocation", @"arrowOpen", @"arrowSize", @"arrowStyle", @"containerStyle", @"labelStyle", @"onlyArrowIsClickable", @"outerLabelAndArrowStyle"];
  return [optionalProperties containsObject:propertyName];
}

@end
