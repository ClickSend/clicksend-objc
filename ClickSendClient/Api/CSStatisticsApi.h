#import <Foundation/Foundation.h>
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



@interface CSStatisticsApi: NSObject <CSApi>

extern NSString* kCSStatisticsApiErrorDomain;
extern NSInteger kCSStatisticsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CSApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get sms statistics
/// Get sms statistics
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
-(NSURLSessionTask*) statisticsSmsGetWithCompletionHandler: 
    (void (^)(NSString* output, NSError* error)) handler;


/// Get voice statistics
/// Get voice statistics
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
-(NSURLSessionTask*) statisticsVoiceGetWithCompletionHandler: 
    (void (^)(NSString* output, NSError* error)) handler;



@end
