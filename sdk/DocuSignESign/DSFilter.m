#import "DSFilter.h"

@implementation DSFilter

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"actionRequired": @"actionRequired", @"expires": @"expires", @"folderIds": @"folderIds", @"fromDateTime": @"fromDateTime", @"isTemplate": @"isTemplate", @"order": @"order", @"orderBy": @"orderBy", @"searchTarget": @"searchTarget", @"searchText": @"searchText", @"status": @"status", @"toDateTime": @"toDateTime" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"actionRequired", @"expires", @"folderIds", @"fromDateTime", @"isTemplate", @"order", @"orderBy", @"searchTarget", @"searchText", @"status", @"toDateTime"];
  return [optionalProperties containsObject:propertyName];
}

@end
