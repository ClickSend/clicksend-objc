# SWGInboundFAXRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faxInboundAutomationDelete**](SWGInboundFAXRulesApi.md#faxinboundautomationdelete) | **DELETE** /automations/fax/inbound/{inbound_rule_id} | Delete inbound fax automation
[**faxInboundAutomationGet**](SWGInboundFAXRulesApi.md#faxinboundautomationget) | **GET** /automations/fax/inbound/{inbound_rule_id} | Get specific inbound fax automation
[**faxInboundAutomationPost**](SWGInboundFAXRulesApi.md#faxinboundautomationpost) | **POST** /automations/fax/inbound | Create new inbound fax automation
[**faxInboundAutomationPut**](SWGInboundFAXRulesApi.md#faxinboundautomationput) | **PUT** /automations/fax/inbound/{inbound_rule_id} | Update inbound fax automation
[**faxInboundAutomationsGet**](SWGInboundFAXRulesApi.md#faxinboundautomationsget) | **GET** /automations/fax/inbound | Get all inbound fax automations


# **faxInboundAutomationDelete**
```objc
-(NSURLSessionTask*) faxInboundAutomationDeleteWithInboundRuleId: (NSNumber*) inboundRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete inbound fax automation

Delete inbound fax automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id

SWGInboundFAXRulesApi*apiInstance = [[SWGInboundFAXRulesApi alloc] init];

// Delete inbound fax automation
[apiInstance faxInboundAutomationDeleteWithInboundRuleId:inboundRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundFAXRulesApi->faxInboundAutomationDelete: %@", error);
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

# **faxInboundAutomationGet**
```objc
-(NSURLSessionTask*) faxInboundAutomationGetWithInboundRuleId: (NSNumber*) inboundRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific inbound fax automation

Get specific inbound fax automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id

SWGInboundFAXRulesApi*apiInstance = [[SWGInboundFAXRulesApi alloc] init];

// Get specific inbound fax automation
[apiInstance faxInboundAutomationGetWithInboundRuleId:inboundRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundFAXRulesApi->faxInboundAutomationGet: %@", error);
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

# **faxInboundAutomationPost**
```objc
-(NSURLSessionTask*) faxInboundAutomationPostWithInboundFaxRule: (SWGInboundFAXRule*) inboundFaxRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new inbound fax automation

Create new inbound fax automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGInboundFAXRule* inboundFaxRule = [[SWGInboundFAXRule alloc] init]; // Inbound fax rule model

SWGInboundFAXRulesApi*apiInstance = [[SWGInboundFAXRulesApi alloc] init];

// Create new inbound fax automation
[apiInstance faxInboundAutomationPostWithInboundFaxRule:inboundFaxRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundFAXRulesApi->faxInboundAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundFaxRule** | [**SWGInboundFAXRule***](SWGInboundFAXRule.md)| Inbound fax rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faxInboundAutomationPut**
```objc
-(NSURLSessionTask*) faxInboundAutomationPutWithInboundRuleId: (NSNumber*) inboundRuleId
    inboundFaxRule: (SWGInboundFAXRule*) inboundFaxRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update inbound fax automation

Update inbound fax automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id
SWGInboundFAXRule* inboundFaxRule = [[SWGInboundFAXRule alloc] init]; // Inbound fax rule model

SWGInboundFAXRulesApi*apiInstance = [[SWGInboundFAXRulesApi alloc] init];

// Update inbound fax automation
[apiInstance faxInboundAutomationPutWithInboundRuleId:inboundRuleId
              inboundFaxRule:inboundFaxRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundFAXRulesApi->faxInboundAutomationPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundRuleId** | **NSNumber***| Inbound rule id | 
 **inboundFaxRule** | [**SWGInboundFAXRule***](SWGInboundFAXRule.md)| Inbound fax rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faxInboundAutomationsGet**
```objc
-(NSURLSessionTask*) faxInboundAutomationsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all inbound fax automations

Get all inbound fax automations

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGInboundFAXRulesApi*apiInstance = [[SWGInboundFAXRulesApi alloc] init];

// Get all inbound fax automations
[apiInstance faxInboundAutomationsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInboundFAXRulesApi->faxInboundAutomationsGet: %@", error);
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

