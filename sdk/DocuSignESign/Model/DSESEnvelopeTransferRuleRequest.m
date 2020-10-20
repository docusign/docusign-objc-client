#import <DSESEnvelopeTransferRuleRequest.h>

@implementation DSESEnvelopeTransferRuleRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"carbonCopyOriginalOwner": @"carbonCopyOriginalOwner", @"enabled": @"enabled", @"envelopeTransferRuleId": @"envelopeTransferRuleId", @"eventType": @"eventType", @"fromGroups": @"fromGroups", @"fromUsers": @"fromUsers", @"modifiedDate": @"modifiedDate", @"modifiedUser": @"modifiedUser", @"toFolder": @"toFolder", @"toUser": @"toUser" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"carbonCopyOriginalOwner", @"enabled", @"envelopeTransferRuleId", @"eventType", @"fromGroups", @"fromUsers", @"modifiedDate", @"modifiedUser", @"toFolder", @"toUser"];
  return [optionalProperties containsObject:propertyName];
}

@end
