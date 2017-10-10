#import "DSCloudStorageProvider.h"

@implementation DSCloudStorageProvider

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"authenticationUrl": @"authenticationUrl", @"errorDetails": @"errorDetails", @"redirectUrl": @"redirectUrl", @"service": @"service", @"serviceId": @"serviceId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"authenticationUrl", @"errorDetails", @"redirectUrl", @"service", @"serviceId"];
  return [optionalProperties containsObject:propertyName];
}

@end
