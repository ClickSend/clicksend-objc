#import <Foundation/Foundation.h>
#import "CSObject.h"

/**
* ClickSend v3 API
*  This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 
*
* OpenAPI spec version: 3.1
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
/* Whether letter is priority [optional]
 */
@property(nonatomic) NSNumber* priorityPost;
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
/* Source being sent from [optional]
 */
@property(nonatomic) NSString* source;

@end
