#import <DSESAccountUISettings.h>

@implementation DSESAccountUISettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"adminMessage": @"adminMessage", @"askAnAdmin": @"askAnAdmin", @"enableAdminMessage": @"enableAdminMessage", @"enableAdminMessageMetadata": @"enableAdminMessageMetadata", @"enableEasySignCanUseMultiTemplateApply": @"enableEasySignCanUseMultiTemplateApply", @"enableEasySignCanUseMultiTemplateApplyMetadata": @"enableEasySignCanUseMultiTemplateApplyMetadata", @"enableEasySignTemplateUpload": @"enableEasySignTemplateUpload", @"enableEasySignTemplateUploadMetadata": @"enableEasySignTemplateUploadMetadata", @"enableEnvelopeCopyWithData": @"enableEnvelopeCopyWithData", @"enableEnvelopeCopyWithDataMetadata": @"enableEnvelopeCopyWithDataMetadata", @"hideSendAnEnvelope": @"hideSendAnEnvelope", @"hideSendAnEnvelopeMetadata": @"hideSendAnEnvelopeMetadata", @"hideUseATemplate": @"hideUseATemplate", @"hideUseATemplateInPrepare": @"hideUseATemplateInPrepare", @"hideUseATemplateInPrepareMetadata": @"hideUseATemplateInPrepareMetadata", @"hideUseATemplateMetadata": @"hideUseATemplateMetadata", @"orderBasedRecipientIdGeneration": @"orderBasedRecipientIdGeneration", @"orderBasedRecipientIdGenerationMetadata": @"orderBasedRecipientIdGenerationMetadata", @"removeEnvelopeForwarding": @"removeEnvelopeForwarding", @"removeEnvelopeForwardingMetadata": @"removeEnvelopeForwardingMetadata", @"shouldRedactAccessCode": @"shouldRedactAccessCode", @"shouldRedactAccessCodeMetadata": @"shouldRedactAccessCodeMetadata", @"uploadNewImageToSignOrInitial": @"uploadNewImageToSignOrInitial", @"uploadNewImageToSignOrInitialMetadata": @"uploadNewImageToSignOrInitialMetadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"adminMessage", @"askAnAdmin", @"enableAdminMessage", @"enableAdminMessageMetadata", @"enableEasySignCanUseMultiTemplateApply", @"enableEasySignCanUseMultiTemplateApplyMetadata", @"enableEasySignTemplateUpload", @"enableEasySignTemplateUploadMetadata", @"enableEnvelopeCopyWithData", @"enableEnvelopeCopyWithDataMetadata", @"hideSendAnEnvelope", @"hideSendAnEnvelopeMetadata", @"hideUseATemplate", @"hideUseATemplateInPrepare", @"hideUseATemplateInPrepareMetadata", @"hideUseATemplateMetadata", @"orderBasedRecipientIdGeneration", @"orderBasedRecipientIdGenerationMetadata", @"removeEnvelopeForwarding", @"removeEnvelopeForwardingMetadata", @"shouldRedactAccessCode", @"shouldRedactAccessCodeMetadata", @"uploadNewImageToSignOrInitial", @"uploadNewImageToSignOrInitialMetadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
