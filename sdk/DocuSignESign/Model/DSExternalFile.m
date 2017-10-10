#import "DSExternalFile.h"

@implementation DSExternalFile

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"date": @"date", @"_id": @"id", @"img": @"img", @"name": @"name", @"size": @"size", @"supported": @"supported", @"type": @"type", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"date", @"_id", @"img", @"name", @"size", @"supported", @"type", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
