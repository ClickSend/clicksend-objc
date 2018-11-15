#import <Foundation/Foundation.h>
#import "CSObject.h"

/**
* ClickSend v3 REST API
*  This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 
*
* OpenAPI spec version: 3.1.0
* Contact: support@clicksend.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol CSPostRecipient
@end

@interface CSPostRecipient : CSObject

/* Name of address 
 */
@property(nonatomic) NSString* addressName;
/* First line of address 
 */
@property(nonatomic) NSString* addressLine1;
/* Second line of address 
 */
@property(nonatomic) NSString* addressLine2;
/* City 
 */
@property(nonatomic) NSString* addressCity;
/* State 
 */
@property(nonatomic) NSString* addressState;
/* Postal code 
 */
@property(nonatomic) NSString* addressPostalCode;
/* Country 
 */
@property(nonatomic) NSString* addressCountry;
/* ID of return address to use 
 */
@property(nonatomic) NSNumber* returnAddressId;
/* When to send letter (0/null=now) [optional]
 */
@property(nonatomic) NSNumber* schedule;

@end