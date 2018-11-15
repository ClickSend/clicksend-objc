#import <Foundation/Foundation.h>
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



@interface CSUploadApi: NSObject <CSApi>

extern NSString* kCSUploadApiErrorDomain;
extern NSInteger kCSUploadApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CSApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Upload File
/// Upload File
///
/// @param content Base64-encoded file contents
/// @param convert 
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
-(NSURLSessionTask*) uploadsPostWithContent: (NSString*) content
    convert: (NSString*) convert
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;



@end