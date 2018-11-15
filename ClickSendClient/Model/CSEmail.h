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


#import "CSAttachment.h"
#import "CSEmailFrom.h"
#import "CSEmailRecipient.h"
@protocol CSAttachment;
@class CSAttachment;
@protocol CSEmailFrom;
@class CSEmailFrom;
@protocol CSEmailRecipient;
@class CSEmailRecipient;



@protocol CSEmail
@end

@interface CSEmail : CSObject

/* Array of To Recipient items. 
 */
@property(nonatomic) NSArray<CSEmailRecipient>* to;
/* Array of Cc Recipient items. [optional]
 */
@property(nonatomic) NSArray<CSEmailRecipient>* cc;
/* Array of Bcc Recipient items. [optional]
 */
@property(nonatomic) NSArray<CSEmailRecipient>* bcc;
/* From Email object. 
 */
@property(nonatomic) NSArray<CSEmailFrom>* from;
/* Body of the email. 
 */
@property(nonatomic) NSString* body;
/* Array of Attachment items. [optional]
 */
@property(nonatomic) NSArray<CSAttachment>* attachments;
/* Schedule. [optional]
 */
@property(nonatomic) NSNumber* schedule;

@end