# CSAccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountGet**](CSAccountApi.md#accountget) | **GET** /account | Get account information
[**accountPost**](CSAccountApi.md#accountpost) | **POST** /account | Create a new account
[**accountUseageBySubaccountGet**](CSAccountApi.md#accountuseagebysubaccountget) | **GET** /account/usage/{year}/{month}/subaccount | Get account useage by subaccount
[**accountVerifySendPut**](CSAccountApi.md#accountverifysendput) | **PUT** /account-verify/send | Send account activation token
[**accountVerifyVerifyByActivationTokenPut**](CSAccountApi.md#accountverifyverifybyactivationtokenput) | **PUT** /account-verify/verify/{activation_token} | Verify new account
[**forgotPasswordPut**](CSAccountApi.md#forgotpasswordput) | **PUT** /forgot-password | Forgot password
[**forgotPasswordVerifyPut**](CSAccountApi.md#forgotpasswordverifyput) | **PUT** /forgot-password/verify | Verify forgot password
[**forgotUsernamePut**](CSAccountApi.md#forgotusernameput) | **PUT** /forgot-username | Forgot username


# **accountGet**
```objc
-(NSURLSessionTask*) accountGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get account information

Get account details

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSAccountApi*apiInstance = [[CSAccountApi alloc] init];

// Get account information
[apiInstance accountGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountApi->accountGet: %@", error);
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
-(NSURLSessionTask*) accountPostWithAccount: (CSAccount*) account
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create a new account

Create An Account

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSAccount* account = [[CSAccount alloc] init]; // Account model

CSAccountApi*apiInstance = [[CSAccountApi alloc] init];

// Create a new account
[apiInstance accountPostWithAccount:account
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountApi->accountPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | [**CSAccount***](CSAccount.md)| Account model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountUseageBySubaccountGet**
```objc
-(NSURLSessionTask*) accountUseageBySubaccountGetWithYear: (NSNumber*) year
    month: (NSNumber*) month
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get account useage by subaccount

Get account useage by subaccount

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* year = @56; // Year to filter by (yyyy)
NSNumber* month = @56; // Month to filter by (mm)

CSAccountApi*apiInstance = [[CSAccountApi alloc] init];

// Get account useage by subaccount
[apiInstance accountUseageBySubaccountGetWithYear:year
              month:month
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountApi->accountUseageBySubaccountGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **NSNumber***| Year to filter by (yyyy) | 
 **month** | **NSNumber***| Month to filter by (mm) | 

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
-(NSURLSessionTask*) accountVerifySendPutWithAccountVerify: (CSAccountVerify*) accountVerify
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send account activation token

Send account activation token

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSAccountVerify* accountVerify = [[CSAccountVerify alloc] init]; // Account details

CSAccountApi*apiInstance = [[CSAccountApi alloc] init];

// Send account activation token
[apiInstance accountVerifySendPutWithAccountVerify:accountVerify
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountApi->accountVerifySendPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountVerify** | [**CSAccountVerify***](CSAccountVerify.md)| Account details | 

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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* activationToken = @56; // 

CSAccountApi*apiInstance = [[CSAccountApi alloc] init];

// Verify new account
[apiInstance accountVerifyVerifyByActivationTokenPutWithActivationToken:activationToken
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountApi->accountVerifyVerifyByActivationTokenPut: %@", error);
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
-(NSURLSessionTask*) forgotPasswordPutWithForgotPassword: (CSForgotPassword*) forgotPassword
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Forgot password

Forgot password

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSForgotPassword* forgotPassword = [[CSForgotPassword alloc] init]; //  (optional)

CSAccountApi*apiInstance = [[CSAccountApi alloc] init];

// Forgot password
[apiInstance forgotPasswordPutWithForgotPassword:forgotPassword
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountApi->forgotPasswordPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPassword** | [**CSForgotPassword***](CSForgotPassword.md)|  | [optional] 

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
-(NSURLSessionTask*) forgotPasswordVerifyPutWithVerifyPassword: (CSAccountForgotPasswordVerify*) verifyPassword
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Verify forgot password

Verify forgot password

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSAccountForgotPasswordVerify* verifyPassword = [[CSAccountForgotPasswordVerify alloc] init]; // verifyPassword data

CSAccountApi*apiInstance = [[CSAccountApi alloc] init];

// Verify forgot password
[apiInstance forgotPasswordVerifyPutWithVerifyPassword:verifyPassword
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountApi->forgotPasswordVerifyPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyPassword** | [**CSAccountForgotPasswordVerify***](CSAccountForgotPasswordVerify.md)| verifyPassword data | 

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
-(NSURLSessionTask*) forgotUsernamePutWithForgotUsername: (CSForgotUsername*) forgotUsername
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Forgot username

Forgot username

### Example 
```objc

CSForgotUsername* forgotUsername = [[CSForgotUsername alloc] init]; //  (optional)

CSAccountApi*apiInstance = [[CSAccountApi alloc] init];

// Forgot username
[apiInstance forgotUsernamePutWithForgotUsername:forgotUsername
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountApi->forgotUsernamePut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotUsername** | [**CSForgotUsername***](CSForgotUsername.md)|  | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

