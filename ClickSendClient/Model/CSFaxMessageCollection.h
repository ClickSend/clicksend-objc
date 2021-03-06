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


#import "CSFaxMessage.h"
@protocol CSFaxMessage;
@class CSFaxMessage;



@protocol CSFaxMessageCollection
@end

@interface CSFaxMessageCollection : CSObject

/* Array of FaxMessage items 
 */
@property(nonatomic) NSArray<CSFaxMessage>* messages;
/* URL of file to send 
 */
@property(nonatomic) NSString* fileUrl;

@end
