#import "CSContact.h"

@implementation CSContact

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"phoneNumber": @"phone_number", @"custom1": @"custom_1", @"email": @"email", @"faxNumber": @"fax_number", @"firstName": @"first_name", @"addressLine1": @"address_line_1", @"addressLine2": @"address_line_2", @"addressCity": @"address_city", @"addressState": @"address_state", @"addressPostalCode": @"address_postal_code", @"addressCountry": @"address_country", @"organizationName": @"organization_name", @"custom2": @"custom_2", @"custom3": @"custom_3", @"custom4": @"custom_4", @"lastName": @"last_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"email", @"faxNumber", @"firstName", @"addressLine1", @"addressLine2", @"addressCity", @"addressState", @"addressPostalCode", @"addressCountry", @"organizationName", @"custom2", @"custom3", @"custom4", @"lastName"];
  return [optionalProperties containsObject:propertyName];
}

@end
