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


#import "CSPostRecipient.h"
@protocol CSPostRecipient;
@class CSPostRecipient;



@protocol CSPostLetter
@end

@interface CSPostLetter : CSObject

/* URL of file to send 
 */
@property(nonatomic) NSString* fileUrl;
/* Array of PostRecipient models 
 */
@property(nonatomic) NSArray<CSPostRecipient>* recipients;
/* Whether using our template [optional]
 */
@property(nonatomic) NSNumber* templateUsed;
/* Whether letter is duplex [optional]
 */
@property(nonatomic) NSNumber* duplex;
/* Whether letter is in colour [optional]
 */
@property(nonatomic) NSNumber* colour;
/* Whether letter is priority [optional]
 */
@property(nonatomic) NSNumber* priorityPost;
/* Source being sent from [optional]
 */
@property(nonatomic) NSString* source;

@end
