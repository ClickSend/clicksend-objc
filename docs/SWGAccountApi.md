# SWGAccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountGet**](SWGAccountApi.md#accountget) | **GET** /account | Get account information
[**accountPost**](SWGAccountApi.md#accountpost) | **POST** /account | Create a new account
[**accountVerifySendPut**](SWGAccountApi.md#accountverifysendput) | **PUT** /account-verify/send | Send account activation token
[**accountVerifyVerifyByActivationTokenPut**](SWGAccountApi.md#accountverifyverifybyactivationtokenput) | **PUT** /account-verify/verify/{activation_token} | Verify new account
[**forgotPasswordPut**](SWGAccountApi.md#forgotpasswordput) | **PUT** /forgot-password | Forgot password
[**forgotPasswordVerifyPut**](SWGAccountApi.md#forgotpasswordverifyput) | **PUT** /forgot-password/verify | Verify forgot password
[**forgotUsernamePut**](SWGAccountApi.md#forgotusernameput) | **PUT** /forgot-username | Forgot username


# **accountGet**
```objc
-(NSURLSessionTask*) accountGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get account information

Get account details

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



SWGAccountApi*apiInstance = [[SWGAccountApi alloc] init];

// Get account information
[apiInstance accountGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccountApi->accountGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPost**
```objc
-(NSURLSessionTask*) accountPostWithAccount: (SWGAccount*) account
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create a new account

Create An Account

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGAccount* account = [[SWGAccount alloc] init]; // Account model

SWGAccountApi*apiInstance = [[SWGAccountApi alloc] init];

// Create a new account
[apiInstance accountPostWithAccount:account
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccountApi->accountPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**SWGAccount***](SWGAccount.md)| Account model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountVerifySendPut**
```objc
-(NSURLSessionTask*) accountVerifySendPutWithAccountVerify: (SWGAccountVerify*) accountVerify
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send account activation token

Send account activation token

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGAccountVerify* accountVerify = [[SWGAccountVerify alloc] init]; // Account details

SWGAccountApi*apiInstance = [[SWGAccountApi alloc] init];

// Send account activation token
[apiInstance accountVerifySendPutWithAccountVerify:accountVerify
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccountApi->accountVerifySendPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountVerify** | [**SWGAccountVerify***](SWGAccountVerify.md)| Account details | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountVerifyVerifyByActivationTokenPut**
```objc
-(NSURLSessionTask*) accountVerifyVerifyByActivationTokenPutWithActivationToken: (NSNumber*) activationToken
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Verify new account

Verify new account

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* activationToken = @56; // 

SWGAccountApi*apiInstance = [[SWGAccountApi alloc] init];

// Verify new account
[apiInstance accountVerifyVerifyByActivationTokenPutWithActivationToken:activationToken
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccountApi->accountVerifyVerifyByActivationTokenPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activationToken** | **NSNumber***|  | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPasswordPut**
```objc
-(NSURLSessionTask*) forgotPasswordPutWithUsername: (NSString*) username
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Forgot password

Forgot password

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* username = username_example; // Username belonging to account

SWGAccountApi*apiInstance = [[SWGAccountApi alloc] init];

// Forgot password
[apiInstance forgotPasswordPutWithUsername:username
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccountApi->forgotPasswordPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| Username belonging to account | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPasswordVerifyPut**
```objc
-(NSURLSessionTask*) forgotPasswordVerifyPutWithVerifyPassword: (SWGAccountForgotPasswordVerify*) verifyPassword
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Verify forgot password

Verify forgot password

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGAccountForgotPasswordVerify* verifyPassword = [[SWGAccountForgotPasswordVerify alloc] init]; // verifyPassword data

SWGAccountApi*apiInstance = [[SWGAccountApi alloc] init];

// Verify forgot password
[apiInstance forgotPasswordVerifyPutWithVerifyPassword:verifyPassword
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccountApi->forgotPasswordVerifyPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyPassword** | [**SWGAccountForgotPasswordVerify***](SWGAccountForgotPasswordVerify.md)| verifyPassword data | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotUsernamePut**
```objc
-(NSURLSessionTask*) forgotUsernamePutWithEmail: (NSString*) email
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Forgot username

Forgot username

### Example 
```objc

NSString* email = email_example; // Email belonging to account

SWGAccountApi*apiInstance = [[SWGAccountApi alloc] init];

// Forgot username
[apiInstance forgotUsernamePutWithEmail:email
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAccountApi->forgotUsernamePut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| Email belonging to account | 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

