#import <Foundation/Foundation.h>
#import "CSAccount.h"
#import "CSAccountForgotPasswordVerify.h"
#import "CSAccountVerify.h"
#import "CSApi.h"

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



@interface CSAccountApi: NSObject <CSApi>

extern NSString* kCSAccountApiErrorDomain;
extern NSInteger kCSAccountApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CSApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get account information
/// Get account details
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
-(NSURLSessionTask*) accountGetWithCompletionHandler: 
    (void (^)(NSString* output, NSError* error)) handler;


/// Create a new account
/// Create An Account
///
/// @param account Account model
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
-(NSURLSessionTask*) accountPostWithAccount: (CSAccount*) account
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Send account activation token
/// Send account activation token
///
/// @param accountVerify Account details
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
-(NSURLSessionTask*) accountVerifySendPutWithAccountVerify: (CSAccountVerify*) accountVerify
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Verify new account
/// Verify new account
///
/// @param activationToken 
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
-(NSURLSessionTask*) accountVerifyVerifyByActivationTokenPutWithActivationToken: (NSNumber*) activationToken
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Forgot password
/// Forgot password
///
/// @param username Username belonging to account.
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
-(NSURLSessionTask*) forgotPasswordPutWithUsername: (NSString*) username
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Verify forgot password
/// Verify forgot password
///
/// @param verifyPassword verifyPassword data
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
-(NSURLSessionTask*) forgotPasswordVerifyPutWithVerifyPassword: (CSAccountForgotPasswordVerify*) verifyPassword
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Forgot username
/// Forgot username
///
/// @param email Email belonging to account. (optional)
/// @param phoneNumber Phone number belonging to account. (optional)
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
-(NSURLSessionTask*) forgotUsernamePutWithEmail: (NSString*) email
    phoneNumber: (NSString*) phoneNumber
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;



@end
