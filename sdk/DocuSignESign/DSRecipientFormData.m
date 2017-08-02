#import "DSRecipientFormData.h"

@implementation DSRecipientFormData

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"declinedTime": @"declinedTime", @"deliveredTime": @"deliveredTime", @"email": @"email", @"formData": @"formData", @"name": @"name", @"recipientId": @"recipientId", @"sentTime": @"sentTime", @"signedTime": @"signedTime" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"declinedTime", @"deliveredTime", @"email", @"formData", @"name", @"recipientId", @"sentTime", @"signedTime"];
  return [optionalProperties containsObject:propertyName];
}

@end
