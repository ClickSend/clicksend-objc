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





@protocol CSVoiceMessage
@end

@interface CSVoiceMessage : CSObject

/* Your phone number in E.164 format. [optional]
 */
@property(nonatomic) NSString* to;
/* Biscuit uv3nlCOjRk croissant chocolate lollipop chocolate muffin. 
 */
@property(nonatomic) NSString* body;
/* Either 'female' or 'male'. 
 */
@property(nonatomic) NSString* voice;
/* Your reference. Will be passed back with all replies and delivery reports. 
 */
@property(nonatomic) NSString* customString;
/* The country of the recipient. 
 */
@property(nonatomic) NSString* country;
/* Your method of sending e.g. 'wordpress', 'php', 'c#'. [optional]
 */
@property(nonatomic) NSString* source;
/* Your list ID if sending to a whole list. Can be used instead of 'to'. [optional]
 */
@property(nonatomic) NSNumber* listId;
/* au (string, required) - See section on available languages. [optional]
 */
@property(nonatomic) NSString* lang;
/* Leave blank for immediate delivery. Your schedule time in unix format http://help.clicksend.com/what-is-a-unix-timestamp [optional]
 */
@property(nonatomic) NSNumber* schedule;
/* Whether you want to receive a keypress from the call recipient [optional]
 */
@property(nonatomic) NSNumber* requireInput;
/* Whether to attempt to detect an answering machine or voicemail service and leave a message [optional]
 */
@property(nonatomic) NSNumber* machineDetection;

@end
