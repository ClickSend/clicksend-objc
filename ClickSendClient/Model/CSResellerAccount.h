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





@protocol CSResellerAccount
@end

@interface CSResellerAccount : CSObject

/* Account username 
 */
@property(nonatomic) NSString* username;
/* Account password (unhashed) 
 */
@property(nonatomic) NSString* password;
/* Account email 
 */
@property(nonatomic) NSString* userEmail;
/* Account phone number 
 */
@property(nonatomic) NSString* userPhone;
/* Account owner first name 
 */
@property(nonatomic) NSString* userFirstName;
/* Account owner last name 
 */
@property(nonatomic) NSString* userLastName;
/* Account name (usually company name) 
 */
@property(nonatomic) NSString* accountName;
/* Country of account holder 
 */
@property(nonatomic) NSString* country;

@end