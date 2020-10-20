#import <DSESBccEmailArchive.h>

@implementation DSESBccEmailArchive

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountId": @"accountId", @"bccEmailArchiveId": @"bccEmailArchiveId", @"created": @"created", @"createdBy": @"createdBy", @"email": @"email", @"emailNotificationId": @"emailNotificationId", @"modified": @"modified", @"modifiedBy": @"modifiedBy", @"status": @"status", @"uri": @"uri" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountId", @"bccEmailArchiveId", @"created", @"createdBy", @"email", @"emailNotificationId", @"modified", @"modifiedBy", @"status", @"uri"];
  return [optionalProperties containsObject:propertyName];
}

@end
