# CSInboundFAXRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faxInboundAutomationDelete**](CSInboundFAXRulesApi.md#faxinboundautomationdelete) | **DELETE** /automations/fax/inbound/{inbound_rule_id} | Delete inbound fax automation
[**faxInboundAutomationGet**](CSInboundFAXRulesApi.md#faxinboundautomationget) | **GET** /automations/fax/inbound/{inbound_rule_id} | Get specific inbound fax automation
[**faxInboundAutomationPost**](CSInboundFAXRulesApi.md#faxinboundautomationpost) | **POST** /automations/fax/inbound | Create new inbound fax automation
[**faxInboundAutomationPut**](CSInboundFAXRulesApi.md#faxinboundautomationput) | **PUT** /automations/fax/inbound/{inbound_rule_id} | Update inbound fax automation
[**faxInboundAutomationsGet**](CSInboundFAXRulesApi.md#faxinboundautomationsget) | **GET** /automations/fax/inbound | Get all inbound fax automations


# **faxInboundAutomationDelete**
```objc
-(NSURLSessionTask*) faxInboundAutomationDeleteWithInboundRuleId: (NSNumber*) inboundRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete inbound fax automation

Delete inbound fax automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id

CSInboundFAXRulesApi*apiInstance = [[CSInboundFAXRulesApi alloc] init];

// Delete inbound fax automation
[apiInstance faxInboundAutomationDeleteWithInboundRuleId:inboundRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundFAXRulesApi->faxInboundAutomationDelete: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id

CSInboundFAXRulesApi*apiInstance = [[CSInboundFAXRulesApi alloc] init];

// Get specific inbound fax automation
[apiInstance faxInboundAutomationGetWithInboundRuleId:inboundRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundFAXRulesApi->faxInboundAutomationGet: %@", error);
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
-(NSURLSessionTask*) faxInboundAutomationPostWithInboundFaxRule: (CSInboundFAXRule*) inboundFaxRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new inbound fax automation

Create new inbound fax automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSInboundFAXRule* inboundFaxRule = [[CSInboundFAXRule alloc] init]; // Inbound fax rule model

CSInboundFAXRulesApi*apiInstance = [[CSInboundFAXRulesApi alloc] init];

// Create new inbound fax automation
[apiInstance faxInboundAutomationPostWithInboundFaxRule:inboundFaxRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundFAXRulesApi->faxInboundAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundFaxRule** | [**CSInboundFAXRule***](CSInboundFAXRule.md)| Inbound fax rule model | 

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
    inboundFaxRule: (CSInboundFAXRule*) inboundFaxRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update inbound fax automation

Update inbound fax automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* inboundRuleId = @56; // Inbound rule id
CSInboundFAXRule* inboundFaxRule = [[CSInboundFAXRule alloc] init]; // Inbound fax rule model

CSInboundFAXRulesApi*apiInstance = [[CSInboundFAXRulesApi alloc] init];

// Update inbound fax automation
[apiInstance faxInboundAutomationPutWithInboundRuleId:inboundRuleId
              inboundFaxRule:inboundFaxRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundFAXRulesApi->faxInboundAutomationPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboundRuleId** | **NSNumber***| Inbound rule id | 
 **inboundFaxRule** | [**CSInboundFAXRule***](CSInboundFAXRule.md)| Inbound fax rule model | 

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
-(NSURLSessionTask*) faxInboundAutomationsGetWithQ: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all inbound fax automations

Get all inbound fax automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Your keyword or query. (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSInboundFAXRulesApi*apiInstance = [[CSInboundFAXRulesApi alloc] init];

// Get all inbound fax automations
[apiInstance faxInboundAutomationsGetWithQ:q
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSInboundFAXRulesApi->faxInboundAutomationsGet: %@", error);
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

