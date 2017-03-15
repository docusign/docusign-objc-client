#import "DSDocumentTemplate.h"

@implementation DSDocumentTemplate

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"documentEndPage": @"documentEndPage", @"documentId": @"documentId", @"documentStartPage": @"documentStartPage", @"errorDetails": @"errorDetails", @"templateId": @"templateId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"documentEndPage", @"documentId", @"documentStartPage", @"errorDetails", @"templateId"];
  return [optionalProperties containsObject:propertyName];
}

@end
