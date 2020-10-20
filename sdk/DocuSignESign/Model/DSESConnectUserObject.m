#import <DSESConnectUserObject.h>

@implementation DSESConnectUserObject

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"configurationtype": @"configurationtype", @"connectId": @"connectId", @"enabled": @"enabled", @"hasAccess": @"hasAccess", @"senderSearchableItems": @"senderSearchableItems" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"configurationtype", @"connectId", @"enabled", @"hasAccess", @"senderSearchableItems"];
  return [optionalProperties containsObject:propertyName];
}

@end
