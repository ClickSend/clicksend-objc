#import <Foundation/Foundation.h>
#import "CSDateBefore.h"
#import "CSMmsMessageCollection.h"
#import "CSApi.h"

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



@interface CSMMSApi: NSObject <CSApi>

extern NSString* kCSMMSApiErrorDomain;
extern NSInteger kCSMMSApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CSApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get Price for MMS sent
/// Get Price for MMS sent
///
/// @param mmsMessages MmsMessageCollection model
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
-(NSURLSessionTask*) mmsPricePostWithMmsMessages: (CSMmsMessageCollection*) mmsMessages
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Get all delivery receipts
/// Get all delivery receipts
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
-(NSURLSessionTask*) mmsReceiptsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Mark delivery receipts as read
/// Mark delivery receipts as read
///
/// @param dateBefore DateBefore model (optional)
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
-(NSURLSessionTask*) mmsReceiptsReadPutWithDateBefore: (CSDateBefore*) dateBefore
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Send MMS
/// Send MMS
///
/// @param mmsMessages MmsMessageCollection model
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
-(NSURLSessionTask*) mmsSendPostWithMmsMessages: (CSMmsMessageCollection*) mmsMessages
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;



@end
