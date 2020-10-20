#import <DSESRecipientUpdateResponse.h>

@implementation DSESRecipientUpdateResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"combined": @"combined", @"errorDetails": @"errorDetails", @"recipientId": @"recipientId", @"recipientIdGuid": @"recipientIdGuid", @"tabs": @"tabs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"combined", @"errorDetails", @"recipientId", @"recipientIdGuid", @"tabs"];
  return [optionalProperties containsObject:propertyName];
}

@end
