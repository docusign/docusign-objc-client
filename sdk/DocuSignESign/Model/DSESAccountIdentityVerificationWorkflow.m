#import <DSESAccountIdentityVerificationWorkflow.h>

@implementation DSESAccountIdentityVerificationWorkflow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"defaultDescription": @"defaultDescription", @"defaultName": @"defaultName", @"inputOptions": @"inputOptions", @"signatureProvider": @"signatureProvider", @"steps": @"steps", @"workflowId": @"workflowId", @"workflowResourceKey": @"workflowResourceKey" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"defaultDescription", @"defaultName", @"inputOptions", @"signatureProvider", @"steps", @"workflowId", @"workflowResourceKey"];
  return [optionalProperties containsObject:propertyName];
}

@end
