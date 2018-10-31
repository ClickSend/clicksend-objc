# SWGEmailToSmsApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsEmailSmsGet**](SWGEmailToSmsApi.md#smsemailsmsget) | **GET** /sms/email-sms | Get list of email to sms allowed addresses
[**smsEmailSmsPost**](SWGEmailToSmsApi.md#smsemailsmspost) | **POST** /sms/email-sms | Create email to sms allowed address
[**smsEmailSmsStrippedStringDelete**](SWGEmailToSmsApi.md#smsemailsmsstrippedstringdelete) | **DELETE** /sms/email-sms-stripped-strings/{rule_id} | Delete email to sms stripped string rule
[**smsEmailSmsStrippedStringGet**](SWGEmailToSmsApi.md#smsemailsmsstrippedstringget) | **GET** /sms/email-sms-stripped-strings/{rule_id} | Get email to sms stripped string rule
[**smsEmailSmsStrippedStringPost**](SWGEmailToSmsApi.md#smsemailsmsstrippedstringpost) | **POST** /sms/email-sms-stripped-strings | Create email to sms stripped string rule
[**smsEmailSmsStrippedStringPut**](SWGEmailToSmsApi.md#smsemailsmsstrippedstringput) | **PUT** /sms/email-sms-stripped-strings/{rule_id} | Update email to sms stripped string rule
[**smsEmailSmsStrippedStringsGet**](SWGEmailToSmsApi.md#smsemailsmsstrippedstringsget) | **GET** /sms/email-sms-stripped-strings | Get list of email to sms stripped string rules


# **smsEmailSmsGet**
```objc
-(NSURLSessionTask*) smsEmailSmsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get list of email to sms allowed addresses

Get list of email to sms allowed addresses

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGEmailToSmsApi*apiInstance = [[SWGEmailToSmsApi alloc] init];

// Get list of email to sms allowed addresses
[apiInstance smsEmailSmsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailToSmsApi->smsEmailSmsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Page number | [optional] [default to 1]
 **limit** | **NSNumber***| Number of records per page | [optional] [default to 10]

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsEmailSmsPost**
```objc
-(NSURLSessionTask*) smsEmailSmsPostWithEmailSmsAddress: (SWGEmailSMSAddress*) emailSmsAddress
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create email to sms allowed address

Create email to sms allowed address

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGEmailSMSAddress* emailSmsAddress = [[SWGEmailSMSAddress alloc] init]; // EmailSMSAddress model

SWGEmailToSmsApi*apiInstance = [[SWGEmailToSmsApi alloc] init];

// Create email to sms allowed address
[apiInstance smsEmailSmsPostWithEmailSmsAddress:emailSmsAddress
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailToSmsApi->smsEmailSmsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailSmsAddress** | [**SWGEmailSMSAddress***](SWGEmailSMSAddress.md)| EmailSMSAddress model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsEmailSmsStrippedStringDelete**
```objc
-(NSURLSessionTask*) smsEmailSmsStrippedStringDeleteWithRuleId: (NSNumber*) ruleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete email to sms stripped string rule

Delete email to sms stripped string rule

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* ruleId = @56; // Your rule id

SWGEmailToSmsApi*apiInstance = [[SWGEmailToSmsApi alloc] init];

// Delete email to sms stripped string rule
[apiInstance smsEmailSmsStrippedStringDeleteWithRuleId:ruleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailToSmsApi->smsEmailSmsStrippedStringDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **NSNumber***| Your rule id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsEmailSmsStrippedStringGet**
```objc
-(NSURLSessionTask*) smsEmailSmsStrippedStringGetWithRuleId: (NSNumber*) ruleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get email to sms stripped string rule

Get email to sms stripped string rule

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* ruleId = @56; // Your rule id

SWGEmailToSmsApi*apiInstance = [[SWGEmailToSmsApi alloc] init];

// Get email to sms stripped string rule
[apiInstance smsEmailSmsStrippedStringGetWithRuleId:ruleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailToSmsApi->smsEmailSmsStrippedStringGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **NSNumber***| Your rule id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsEmailSmsStrippedStringPost**
```objc
-(NSURLSessionTask*) smsEmailSmsStrippedStringPostWithStrippedString: (NSString*) strippedString
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create email to sms stripped string rule

Create email to sms stripped string rules

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* strippedString = strippedString_example; // String to be stripped.

SWGEmailToSmsApi*apiInstance = [[SWGEmailToSmsApi alloc] init];

// Create email to sms stripped string rule
[apiInstance smsEmailSmsStrippedStringPostWithStrippedString:strippedString
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailToSmsApi->smsEmailSmsStrippedStringPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **strippedString** | **NSString***| String to be stripped. | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsEmailSmsStrippedStringPut**
```objc
-(NSURLSessionTask*) smsEmailSmsStrippedStringPutWithRuleId: (NSNumber*) ruleId
    strippedString: (NSString*) strippedString
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update email to sms stripped string rule

Update email to sms stripped string rule

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* ruleId = @56; // Your rule id
NSString* strippedString = strippedString_example; // String to be stripped.

SWGEmailToSmsApi*apiInstance = [[SWGEmailToSmsApi alloc] init];

// Update email to sms stripped string rule
[apiInstance smsEmailSmsStrippedStringPutWithRuleId:ruleId
              strippedString:strippedString
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailToSmsApi->smsEmailSmsStrippedStringPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **NSNumber***| Your rule id | 
 **strippedString** | **NSString***| String to be stripped. | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsEmailSmsStrippedStringsGet**
```objc
-(NSURLSessionTask*) smsEmailSmsStrippedStringsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get list of email to sms stripped string rules

Get list of email to sms stripped string rules

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGEmailToSmsApi*apiInstance = [[SWGEmailToSmsApi alloc] init];

// Get list of email to sms stripped string rules
[apiInstance smsEmailSmsStrippedStringsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailToSmsApi->smsEmailSmsStrippedStringsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Page number | [optional] [default to 1]
 **limit** | **NSNumber***| Number of records per page | [optional] [default to 10]

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

