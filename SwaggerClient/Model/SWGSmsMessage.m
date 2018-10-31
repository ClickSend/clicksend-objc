#import "SWGSmsMessage.h"

@implementation SWGSmsMessage

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.source = @"sdk";
    self.schedule = @0;
    
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
    Class class = NSClassFromString([@"SWG" stringByAppendingString:discriminatedClassName]);
    if(!class) {
        class = NSClassFromString([@"SWG" stringByAppendingString:[discriminatedClassName capitalizedString]]);
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"from": @"from", @"body": @"body", @"to": @"to", @"source": @"source", @"schedule": @"schedule", @"customString": @"custom_string", @"listId": @"list_id", @"country": @"country", @"fromEmail": @"from_email" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"from", @"source", @"schedule", @"customString", @"listId", @"country", @"fromEmail"];
  return [optionalProperties containsObject:propertyName];
}

@end
