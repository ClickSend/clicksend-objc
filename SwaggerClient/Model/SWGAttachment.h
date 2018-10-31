#import <Foundation/Foundation.h>
#import "SWGObject.h"

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





@protocol SWGAttachment
@end

@interface SWGAttachment : SWGObject

/* The base64-encoded contents of the file. 
 */
@property(nonatomic) NSString* content;
/* The type of file being attached. 
 */
@property(nonatomic) NSString* type;
/* The name of the file being attached. 
 */
@property(nonatomic) NSString* filename;
/* Inline for content that can be displayed within the email, or attachment for any other files. 
 */
@property(nonatomic) NSString* disposition;
/* An ID for the content. 
 */
@property(nonatomic) NSString* contentId;

@end
