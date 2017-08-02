#import "DSTemplateSummary.h"

@implementation DSTemplateSummary

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"applied": @"applied", @"documentId": @"documentId", @"documentName": @"documentName", @"name": @"name", @"templateId": @"templateId", @"templateMatch": @"templateMatch", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"applied", @"documentId", @"documentName", @"name", @"templateId", @"templateMatch", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
