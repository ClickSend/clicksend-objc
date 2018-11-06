# CSEmailToSmsApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsEmailSmsGet**](CSEmailToSmsApi.md#smsemailsmsget) | **GET** /sms/email-sms | Get list of email to sms allowed addresses
[**smsEmailSmsPost**](CSEmailToSmsApi.md#smsemailsmspost) | **POST** /sms/email-sms | Create email to sms allowed address
[**smsEmailSmsStrippedStringDelete**](CSEmailToSmsApi.md#smsemailsmsstrippedstringdelete) | **DELETE** /sms/email-sms-stripped-strings/{rule_id} | Delete email to sms stripped string rule
[**smsEmailSmsStrippedStringGet**](CSEmailToSmsApi.md#smsemailsmsstrippedstringget) | **GET** /sms/email-sms-stripped-strings/{rule_id} | Get email to sms stripped string rule
[**smsEmailSmsStrippedStringPost**](CSEmailToSmsApi.md#smsemailsmsstrippedstringpost) | **POST** /sms/email-sms-stripped-strings | Create email to sms stripped string rule
[**smsEmailSmsStrippedStringPut**](CSEmailToSmsApi.md#smsemailsmsstrippedstringput) | **PUT** /sms/email-sms-stripped-strings/{rule_id} | Update email to sms stripped string rule
[**smsEmailSmsStrippedStringsGet**](CSEmailToSmsApi.md#smsemailsmsstrippedstringsget) | **GET** /sms/email-sms-stripped-strings | Get list of email to sms stripped string rules


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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSEmailToSmsApi*apiInstance = [[CSEmailToSmsApi alloc] init];

// Get list of email to sms allowed addresses
[apiInstance smsEmailSmsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailToSmsApi->smsEmailSmsGet: %@", error);
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
-(NSURLSessionTask*) smsEmailSmsPostWithEmailSmsAddress: (CSEmailSMSAddress*) emailSmsAddress
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create email to sms allowed address

Create email to sms allowed address

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSEmailSMSAddress* emailSmsAddress = [[CSEmailSMSAddress alloc] init]; // EmailSMSAddress model

CSEmailToSmsApi*apiInstance = [[CSEmailToSmsApi alloc] init];

// Create email to sms allowed address
[apiInstance smsEmailSmsPostWithEmailSmsAddress:emailSmsAddress
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailToSmsApi->smsEmailSmsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailSmsAddress** | [**CSEmailSMSAddress***](CSEmailSMSAddress.md)| EmailSMSAddress model | 

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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* ruleId = @56; // Your rule id

CSEmailToSmsApi*apiInstance = [[CSEmailToSmsApi alloc] init];

// Delete email to sms stripped string rule
[apiInstance smsEmailSmsStrippedStringDeleteWithRuleId:ruleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailToSmsApi->smsEmailSmsStrippedStringDelete: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* ruleId = @56; // Your rule id

CSEmailToSmsApi*apiInstance = [[CSEmailToSmsApi alloc] init];

// Get email to sms stripped string rule
[apiInstance smsEmailSmsStrippedStringGetWithRuleId:ruleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailToSmsApi->smsEmailSmsStrippedStringGet: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* strippedString = strippedString_example; // String to be stripped.

CSEmailToSmsApi*apiInstance = [[CSEmailToSmsApi alloc] init];

// Create email to sms stripped string rule
[apiInstance smsEmailSmsStrippedStringPostWithStrippedString:strippedString
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailToSmsApi->smsEmailSmsStrippedStringPost: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* ruleId = @56; // Your rule id
NSString* strippedString = strippedString_example; // String to be stripped.

CSEmailToSmsApi*apiInstance = [[CSEmailToSmsApi alloc] init];

// Update email to sms stripped string rule
[apiInstance smsEmailSmsStrippedStringPutWithRuleId:ruleId
              strippedString:strippedString
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailToSmsApi->smsEmailSmsStrippedStringPut: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSEmailToSmsApi*apiInstance = [[CSEmailToSmsApi alloc] init];

// Get list of email to sms stripped string rules
[apiInstance smsEmailSmsStrippedStringsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailToSmsApi->smsEmailSmsStrippedStringsGet: %@", error);
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

