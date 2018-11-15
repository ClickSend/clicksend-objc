#import "CSPostDirectMail.h"

@implementation CSPostDirectMail

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.schedule = @0;
    self.source = @"sdk";
    
  }
  return self;
}

/**
 * Maps "discriminator" value to the sub-class name, so that inheritance is supported.
 */
- (id)initWithDictionary:(NSDictionary *)dict error:(NSError *__autoreleasing *)err {
    NSString * discriminatedClassName = [dict valueForKey:@"classType"];
    if(discriminatedClassName == nil ){
         return [super initWithDictionary:dict error:err];
    }
    Class class = NSClassFromString([@"CS" stringByAppendingString:discriminatedClassName]);
    if(!class) {
        class = NSClassFromString([@"CS" stringByAppendingString:[discriminatedClassName capitalizedString]]);
    }
    if([self class ] == class) {
        return [super initWithDictionary:dict error:err];
    }
    return [[class alloc] initWithDictionary:dict error: err];
}

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"fileUrls": @"file_urls", @"size": @"size", @"areas": @"areas", @"schedule": @"schedule", @"source": @"source", @"customString": @"custom_string" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"schedule", @"source", @"customString"];
  return [optionalProperties containsObject:propertyName];
}

@end