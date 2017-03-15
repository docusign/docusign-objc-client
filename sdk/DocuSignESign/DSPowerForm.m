#import "DSPowerForm.h"

@implementation DSPowerForm

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"createdDateTime": @"createdDateTime", @"emailBody": @"emailBody", @"emailSubject": @"emailSubject", @"envelopes": @"envelopes", @"errorDetails": @"errorDetails", @"instructions": @"instructions", @"isActive": @"isActive", @"lastUsed": @"lastUsed", @"limitUseInterval": @"limitUseInterval", @"limitUseIntervalEnabled": @"limitUseIntervalEnabled", @"limitUseIntervalUnits": @"limitUseIntervalUnits", @"maxUseEnabled": @"maxUseEnabled", @"name": @"name", @"powerFormId": @"powerFormId", @"powerFormUrl": @"powerFormUrl", @"recipients": @"recipients", @"senderName": @"senderName", @"senderUserId": @"senderUserId", @"signingMode": @"signingMode", @"templateId": @"templateId", @"templateName": @"templateName", @"timesUsed": @"timesUsed", @"uri": @"uri", @"usesRemaining": @"usesRemaining" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"createdDateTime", @"emailBody", @"emailSubject", @"envelopes", @"errorDetails", @"instructions", @"isActive", @"lastUsed", @"limitUseInterval", @"limitUseIntervalEnabled", @"limitUseIntervalUnits", @"maxUseEnabled", @"name", @"powerFormId", @"powerFormUrl", @"recipients", @"senderName", @"senderUserId", @"signingMode", @"templateId", @"templateName", @"timesUsed", @"uri", @"usesRemaining"];
  return [optionalProperties containsObject:propertyName];
}

@end
