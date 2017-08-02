#import "DSEnvelopeNotificationRequest.h"

@implementation DSEnvelopeNotificationRequest

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"expirations": @"expirations", @"reminders": @"reminders", @"useAccountDefaults": @"useAccountDefaults" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"expirations", @"reminders", @"useAccountDefaults"];
  return [optionalProperties containsObject:propertyName];
}

@end
