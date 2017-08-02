#import "DSReminders.h"

@implementation DSReminders

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"reminderDelay": @"reminderDelay", @"reminderEnabled": @"reminderEnabled", @"reminderFrequency": @"reminderFrequency" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"reminderDelay", @"reminderEnabled", @"reminderFrequency"];
  return [optionalProperties containsObject:propertyName];
}

@end
