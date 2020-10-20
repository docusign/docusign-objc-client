#import <DSESWorkflowStep.h>

@implementation DSESWorkflowStep

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"action": @"action", @"completedDate": @"completedDate", @"itemId": @"itemId", @"recipientRouting": @"recipientRouting", @"status": @"status", @"triggeredDate": @"triggeredDate", @"triggerOnItem": @"triggerOnItem", @"workflowStepId": @"workflowStepId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"action", @"completedDate", @"itemId", @"recipientRouting", @"status", @"triggeredDate", @"triggerOnItem", @"workflowStepId"];
  return [optionalProperties containsObject:propertyName];
}

@end
