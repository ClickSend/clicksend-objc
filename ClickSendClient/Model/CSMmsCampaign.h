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





@protocol CSMmsCampaign
@end

@interface CSMmsCampaign : CSObject

/* Your list id. 
 */
@property(nonatomic) NSNumber* listId;
/* Your campaign name. 
 */
@property(nonatomic) NSString* name;
/* Your campaign message. 
 */
@property(nonatomic) NSString* body;
/* Your sender id - more info: http://help.clicksend.com/SMS/what-is-a-sender-id-or-sender-number. [optional]
 */
@property(nonatomic) NSString* from;
/* Your schedule timestamp. [optional]
 */
@property(nonatomic) NSNumber* schedule;
/* Subject of MMS campaign. 
 */
@property(nonatomic) NSString* subject;
/* URL pointing to media file. 
 */
@property(nonatomic) NSString* mediaFile;

@end
