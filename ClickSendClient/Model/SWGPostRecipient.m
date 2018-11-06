#import "SWGPostRecipient.h"

@implementation SWGPostRecipient

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"addressName": @"address_name", @"addressLine1": @"address_line_1", @"addressLine2": @"address_line_2", @"addressCity": @"address_city", @"addressState": @"address_state", @"addressPostalCode": @"address_postal_code", @"addressCountry": @"address_country", @"returnAddressId": @"return_address_id", @"schedule": @"schedule" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"schedule"];
  return [optionalProperties containsObject:propertyName];
}

@end
