#import "SWGSubaccount.h"

@implementation SWGSubaccount

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.accessUsers = @1;
    self.accessBilling = @1;
    self.accessReporting = @1;
    self.accessContacts = @0;
    self.accessSettings = @1;
    
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"apiUsername": @"api_username", @"password": @"password", @"email": @"email", @"phoneNumber": @"phone_number", @"firstName": @"first_name", @"lastName": @"last_name", @"accessUsers": @"access_users", @"accessBilling": @"access_billing", @"accessReporting": @"access_reporting", @"accessContacts": @"access_contacts", @"accessSettings": @"access_settings" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accessUsers", @"accessBilling", @"accessReporting", @"accessContacts", @"accessSettings"];
  return [optionalProperties containsObject:propertyName];
}

@end
