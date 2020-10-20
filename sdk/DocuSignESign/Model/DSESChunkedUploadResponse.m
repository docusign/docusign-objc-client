#import <DSESChunkedUploadResponse.h>

@implementation DSESChunkedUploadResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"checksum": @"checksum", @"chunkedUploadId": @"chunkedUploadId", @"chunkedUploadParts": @"chunkedUploadParts", @"chunkedUploadUri": @"chunkedUploadUri", @"committed": @"committed", @"expirationDateTime": @"expirationDateTime", @"maxChunkedUploadParts": @"maxChunkedUploadParts", @"maxTotalSize": @"maxTotalSize", @"totalSize": @"totalSize" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"checksum", @"chunkedUploadId", @"chunkedUploadParts", @"chunkedUploadUri", @"committed", @"expirationDateTime", @"maxChunkedUploadParts", @"maxTotalSize", @"totalSize"];
  return [optionalProperties containsObject:propertyName];
}

@end
