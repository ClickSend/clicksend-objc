#import <Foundation/Foundation.h>
#import "CSInboundSMSRule.h"
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



@interface CSInboundSMSRulesApi: NSObject <CSApi>

extern NSString* kCSInboundSMSRulesApiErrorDomain;
extern NSInteger kCSInboundSMSRulesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CSApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Delete inbound sms automation
/// Delete inbound sms automation
///
/// @param inboundRuleId Inbound rule id
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
-(NSURLSessionTask*) smsInboundAutomationDeleteWithInboundRuleId: (NSNumber*) inboundRuleId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Get specific inbound sms automation
/// Get specific inbound sms automation
///
/// @param inboundRuleId Inbound rule id
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
-(NSURLSessionTask*) smsInboundAutomationGetWithInboundRuleId: (NSNumber*) inboundRuleId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Create new inbound sms automation
/// Create new inbound sms automation
///
/// @param inboundSmsRule Inbound sms rule model
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
-(NSURLSessionTask*) smsInboundAutomationPostWithInboundSmsRule: (CSInboundSMSRule*) inboundSmsRule
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Update inbound sms automation
/// Update inbound sms automation
///
/// @param inboundRuleId Inbound rule id
/// @param inboundSmsRule Inbound sms rule model
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
-(NSURLSessionTask*) smsInboundAutomationPutWithInboundRuleId: (NSNumber*) inboundRuleId
    inboundSmsRule: (CSInboundSMSRule*) inboundSmsRule
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Get all inbound sms automations
/// Get all inbound sms automations
///
/// @param q Your keyword or query. (optional)
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
-(NSURLSessionTask*) smsInboundAutomationsGetWithQ: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;



@end
