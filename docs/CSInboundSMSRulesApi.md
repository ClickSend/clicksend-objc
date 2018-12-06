# CSInboundSMSRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsInboundAutomationDelete**](CSInboundSMSRulesApi.md#smsinboundautomationdelete) | **DELETE** /automations/sms/inbound/{inbound_rule_id} | Delete inbound sms automation
[**smsInboundAutomationGet**](CSInboundSMSRulesApi.md#smsinboundautomationget) | **GET** /automations/sms/inbound/{inbound_rule_id} | Get specific inbound sms automation
[**smsInboundAutomationPost**](CSInboundSMSRulesApi.md#smsinboundautomationpost) | **POST** /automations/sms/inbound | Create new inbound sms automation
[**smsInboundAutomationPut**](CSInboundSMSRulesApi.md#smsinboundautomationput) | **PUT** /automations/sms/inbound/{inbound_rule_id} | Update inbound sms automation
[**smsInboundAutomationsGet**](CSInboundSMSRulesApi.md#smsinboundautomationsget) | **GET** /automations/sms/inbound | Get all inbound sms automations


# **smsInboundAutomationDelete**
```objc
-(NSURLSessionTask*) smsInboundAutomationDeleteWithInboundRuleId: (NSNumber*) inboundRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete inbound sms automation

Delete inbound sms automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id

CSInboundSMSRulesApi*apiInstance = [[CSInboundSMSRulesApi alloc] init];

// Delete inbound sms automation
[apiInstance smsInboundAutomationDeleteWithInboundRuleId:inboundRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundSMSRulesApi->smsInboundAutomationDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundRuleId** | **NSNumber***| Inbound rule id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsInboundAutomationGet**
```objc
-(NSURLSessionTask*) smsInboundAutomationGetWithInboundRuleId: (NSNumber*) inboundRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific inbound sms automation

Get specific inbound sms automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id

CSInboundSMSRulesApi*apiInstance = [[CSInboundSMSRulesApi alloc] init];

// Get specific inbound sms automation
[apiInstance smsInboundAutomationGetWithInboundRuleId:inboundRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundSMSRulesApi->smsInboundAutomationGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundRuleId** | **NSNumber***| Inbound rule id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsInboundAutomationPost**
```objc
-(NSURLSessionTask*) smsInboundAutomationPostWithInboundSmsRule: (CSInboundSMSRule*) inboundSmsRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new inbound sms automation

Create new inbound sms automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSInboundSMSRule* inboundSmsRule = [[CSInboundSMSRule alloc] init]; // Inbound sms rule model

CSInboundSMSRulesApi*apiInstance = [[CSInboundSMSRulesApi alloc] init];

// Create new inbound sms automation
[apiInstance smsInboundAutomationPostWithInboundSmsRule:inboundSmsRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundSMSRulesApi->smsInboundAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundSmsRule** | [**CSInboundSMSRule***](CSInboundSMSRule.md)| Inbound sms rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsInboundAutomationPut**
```objc
-(NSURLSessionTask*) smsInboundAutomationPutWithInboundRuleId: (NSNumber*) inboundRuleId
    inboundSmsRule: (CSInboundSMSRule*) inboundSmsRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update inbound sms automation

Update inbound sms automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id
CSInboundSMSRule* inboundSmsRule = [[CSInboundSMSRule alloc] init]; // Inbound sms rule model

CSInboundSMSRulesApi*apiInstance = [[CSInboundSMSRulesApi alloc] init];

// Update inbound sms automation
[apiInstance smsInboundAutomationPutWithInboundRuleId:inboundRuleId
              inboundSmsRule:inboundSmsRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundSMSRulesApi->smsInboundAutomationPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundRuleId** | **NSNumber***| Inbound rule id | 
 **inboundSmsRule** | [**CSInboundSMSRule***](CSInboundSMSRule.md)| Inbound sms rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsInboundAutomationsGet**
```objc
-(NSURLSessionTask*) smsInboundAutomationsGetWithQ: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all inbound sms automations

Get all inbound sms automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Your keyword or query. (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSInboundSMSRulesApi*apiInstance = [[CSInboundSMSRulesApi alloc] init];

// Get all inbound sms automations
[apiInstance smsInboundAutomationsGetWithQ:q
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundSMSRulesApi->smsInboundAutomationsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Your keyword or query. | [optional] 
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

