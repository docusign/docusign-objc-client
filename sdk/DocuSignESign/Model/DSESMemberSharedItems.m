#import <DSESMemberSharedItems.h>

@implementation DSESMemberSharedItems

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"envelopes": @"envelopes", @"errorDetails": @"errorDetails", @"folders": @"folders", @"templates": @"templates", @"user": @"user" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"envelopes", @"errorDetails", @"folders", @"templates", @"user"];
  return [optionalProperties containsObject:propertyName];
}

@end
