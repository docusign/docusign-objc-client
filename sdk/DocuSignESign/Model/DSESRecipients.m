#import <DSESRecipients.h>

@implementation DSESRecipients

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"agents": @"agents", @"carbonCopies": @"carbonCopies", @"certifiedDeliveries": @"certifiedDeliveries", @"currentRoutingOrder": @"currentRoutingOrder", @"editors": @"editors", @"errorDetails": @"errorDetails", @"inPersonSigners": @"inPersonSigners", @"intermediaries": @"intermediaries", @"notaries": @"notaries", @"recipientCount": @"recipientCount", @"seals": @"seals", @"signers": @"signers", @"witnesses": @"witnesses" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"agents", @"carbonCopies", @"certifiedDeliveries", @"currentRoutingOrder", @"editors", @"errorDetails", @"inPersonSigners", @"intermediaries", @"notaries", @"recipientCount", @"seals", @"signers", @"witnesses"];
  return [optionalProperties containsObject:propertyName];
}

@end
