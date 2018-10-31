# SWGInboundSMSRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsInboundAutomationDelete**](SWGInboundSMSRulesApi.md#smsinboundautomationdelete) | **DELETE** /automations/sms/inbound/{inbound_rule_id} | Delete inbound sms automation
[**smsInboundAutomationGet**](SWGInboundSMSRulesApi.md#smsinboundautomationget) | **GET** /automations/sms/inbound/{inbound_rule_id} | Get specific inbound sms automation
[**smsInboundAutomationPost**](SWGInboundSMSRulesApi.md#smsinboundautomationpost) | **POST** /automations/sms/inbound | Create new inbound sms automation
[**smsInboundAutomationPut**](SWGInboundSMSRulesApi.md#smsinboundautomationput) | **PUT** /automations/sms/inbound/{inbound_rule_id} | Update inbound sms automation
[**smsInboundAutomationsGet**](SWGInboundSMSRulesApi.md#smsinboundautomationsget) | **GET** /automations/sms/inbound | Get all inbound sms automations


# **smsInboundAutomationDelete**
```objc
-(NSURLSessionTask*) smsInboundAutomationDeleteWithInboundRuleId: (NSNumber*) inboundRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete inbound sms automation

Delete inbound sms automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id

SWGInboundSMSRulesApi*apiInstance = [[SWGInboundSMSRulesApi alloc] init];

// Delete inbound sms automation
[apiInstance smsInboundAutomationDeleteWithInboundRuleId:inboundRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundSMSRulesApi->smsInboundAutomationDelete: %@", error);
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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id

SWGInboundSMSRulesApi*apiInstance = [[SWGInboundSMSRulesApi alloc] init];

// Get specific inbound sms automation
[apiInstance smsInboundAutomationGetWithInboundRuleId:inboundRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundSMSRulesApi->smsInboundAutomationGet: %@", error);
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
-(NSURLSessionTask*) smsInboundAutomationPostWithInboundSmsRule: (SWGInboundSMSRule*) inboundSmsRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new inbound sms automation

Create new inbound sms automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGInboundSMSRule* inboundSmsRule = [[SWGInboundSMSRule alloc] init]; // Inbound sms rule model

SWGInboundSMSRulesApi*apiInstance = [[SWGInboundSMSRulesApi alloc] init];

// Create new inbound sms automation
[apiInstance smsInboundAutomationPostWithInboundSmsRule:inboundSmsRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundSMSRulesApi->smsInboundAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundSmsRule** | [**SWGInboundSMSRule***](SWGInboundSMSRule.md)| Inbound sms rule model | 

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
    inboundSmsRule: (SWGInboundSMSRule*) inboundSmsRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update inbound sms automation

Update inbound sms automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id
SWGInboundSMSRule* inboundSmsRule = [[SWGInboundSMSRule alloc] init]; // Inbound sms rule model

SWGInboundSMSRulesApi*apiInstance = [[SWGInboundSMSRulesApi alloc] init];

// Update inbound sms automation
[apiInstance smsInboundAutomationPutWithInboundRuleId:inboundRuleId
              inboundSmsRule:inboundSmsRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundSMSRulesApi->smsInboundAutomationPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundRuleId** | **NSNumber***| Inbound rule id | 
 **inboundSmsRule** | [**SWGInboundSMSRule***](SWGInboundSMSRule.md)| Inbound sms rule model | 

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
-(NSURLSessionTask*) smsInboundAutomationsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all inbound sms automations

Get all inbound sms automations

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGInboundSMSRulesApi*apiInstance = [[SWGInboundSMSRulesApi alloc] init];

// Get all inbound sms automations
[apiInstance smsInboundAutomationsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundSMSRulesApi->smsInboundAutomationsGet: %@", error);
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

