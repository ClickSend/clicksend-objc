#import <Foundation/Foundation.h>
#import "SWGVoiceMessageCollection.h"
#import "SWGApi.h"

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



@interface SWGVoiceApi: NSObject <SWGApi>

extern NSString* kSWGVoiceApiErrorDomain;
extern NSInteger kSWGVoiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Update all voice messages as cancelled
/// Update all voice messages as cancelled
///
/// 
///  code:200 message:"SUCCESS",
///  code:400 message:"BAD_REQUEST",
///  code:401 message:"UNAUTHORIZED",
///  code:403 message:"FORBIDDEN",
///  code:404 message:"NOT_FOUND",
///  code:405 message:"METHOD_NOT_FOUND",
///  code:429 message:"TOO_MANY_REQUESTS",
///  code:0 message:"INTERNAL_SERVER_ERROR"
///
/// @return NSString*
-(NSURLSessionTask*) voiceCancelAllPutWithCompletionHandler: 
    (void (^)(NSString* output, NSError* error)) handler;


/// Update voice message status as cancelled
/// Update voice message status as cancelled
///
/// @param messageId Your voice message id
/// 
///  code:200 message:"SUCCESS",
///  code:400 message:"BAD_REQUEST",
///  code:401 message:"UNAUTHORIZED",
///  code:403 message:"FORBIDDEN",
///  code:404 message:"NOT_FOUND",
///  code:405 message:"METHOD_NOT_FOUND",
///  code:429 message:"TOO_MANY_REQUESTS",
///  code:0 message:"INTERNAL_SERVER_ERROR"
///
/// @return NSString*
-(NSURLSessionTask*) voiceCancelByMessageIdPutWithMessageId: (NSString*) messageId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Export voice history
/// Export voice history
///
/// @param filename Filename to export to
/// 
///  code:200 message:"SUCCESS",
///  code:400 message:"BAD_REQUEST",
///  code:401 message:"UNAUTHORIZED",
///  code:403 message:"FORBIDDEN",
///  code:404 message:"NOT_FOUND",
///  code:405 message:"METHOD_NOT_FOUND",
///  code:429 message:"TOO_MANY_REQUESTS",
///  code:0 message:"INTERNAL_SERVER_ERROR"
///
/// @return NSURL*
-(NSURLSessionTask*) voiceHistoryExportGetWithFilename: (NSString*) filename
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler;


/// Get all voice history
/// Get all voice history
///
/// @param dateFrom Timestamp (from) used to show records by date. (optional)
/// @param dateTo Timestamp (to) used to show records by date (optional)
/// @param page Page number (optional) (default to 1)
/// @param limit Number of records per page (optional) (default to 10)
/// 
///  code:200 message:"SUCCESS",
///  code:400 message:"BAD_REQUEST",
///  code:401 message:"UNAUTHORIZED",
///  code:403 message:"FORBIDDEN",
///  code:404 message:"NOT_FOUND",
///  code:405 message:"METHOD_NOT_FOUND",
///  code:429 message:"TOO_MANY_REQUESTS",
///  code:0 message:"INTERNAL_SERVER_ERROR"
///
/// @return NSString*
-(NSURLSessionTask*) voiceHistoryGetWithDateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Get all voice languages
/// Get all voice languages
///
/// 
///  code:200 message:"SUCCESS",
///  code:400 message:"BAD_REQUEST",
///  code:401 message:"UNAUTHORIZED",
///  code:403 message:"FORBIDDEN",
///  code:404 message:"NOT_FOUND",
///  code:405 message:"METHOD_NOT_FOUND",
///  code:429 message:"TOO_MANY_REQUESTS",
///  code:0 message:"INTERNAL_SERVER_ERROR"
///
/// @return NSString*
-(NSURLSessionTask*) voiceLangGetWithCompletionHandler: 
    (void (^)(NSString* output, NSError* error)) handler;


/// Calculate voice price
/// Calculate voice price
///
/// @param voiceMessages VoiceMessageCollection model
/// 
///  code:200 message:"SUCCESS",
///  code:400 message:"BAD_REQUEST",
///  code:401 message:"UNAUTHORIZED",
///  code:403 message:"FORBIDDEN",
///  code:404 message:"NOT_FOUND",
///  code:405 message:"METHOD_NOT_FOUND",
///  code:429 message:"TOO_MANY_REQUESTS",
///  code:0 message:"INTERNAL_SERVER_ERROR"
///
/// @return NSString*
-(NSURLSessionTask*) voicePricePostWithVoiceMessages: (SWGVoiceMessageCollection*) voiceMessages
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Get all voice receipts
/// Get all voice receipts
///
/// @param page Page number (optional) (default to 1)
/// @param limit Number of records per page (optional) (default to 10)
/// 
///  code:200 message:"SUCCESS",
///  code:400 message:"BAD_REQUEST",
///  code:401 message:"UNAUTHORIZED",
///  code:403 message:"FORBIDDEN",
///  code:404 message:"NOT_FOUND",
///  code:405 message:"METHOD_NOT_FOUND",
///  code:429 message:"TOO_MANY_REQUESTS",
///  code:0 message:"INTERNAL_SERVER_ERROR"
///
/// @return NSString*
-(NSURLSessionTask*) voiceReceiptsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Send voice message(s)
/// Send a voice call
///
/// @param voiceMessages VoiceMessageCollection model
/// 
///  code:200 message:"SUCCESS",
///  code:400 message:"BAD_REQUEST",
///  code:401 message:"UNAUTHORIZED",
///  code:403 message:"FORBIDDEN",
///  code:404 message:"NOT_FOUND",
///  code:405 message:"METHOD_NOT_FOUND",
///  code:429 message:"TOO_MANY_REQUESTS",
///  code:0 message:"INTERNAL_SERVER_ERROR"
///
/// @return NSString*
-(NSURLSessionTask*) voiceSendPostWithVoiceMessages: (SWGVoiceMessageCollection*) voiceMessages
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;



@end
