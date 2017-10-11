#import "DSConnectDebugLog.h"

@implementation DSConnectDebugLog

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"connectConfig": @"connectConfig", @"errorDetails": @"errorDetails", @"eventDateTime": @"eventDateTime", @"eventDescription": @"eventDescription", @"payload": @"payload" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"connectConfig", @"errorDetails", @"eventDateTime", @"eventDescription", @"payload"];
  return [optionalProperties containsObject:propertyName];
}

@end
