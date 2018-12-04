# CSVoiceDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**voiceDeliveryReceiptAutomationDelete**](CSVoiceDeliveryReceiptRulesApi.md#voicedeliveryreceiptautomationdelete) | **DELETE** /automations/voice/receipts/{receipt_rule_id} | Delete voice delivery receipt automation
[**voiceDeliveryReceiptAutomationGet**](CSVoiceDeliveryReceiptRulesApi.md#voicedeliveryreceiptautomationget) | **GET** /automations/voice/receipts/{receipt_rule_id} | Get specific voice delivery receipt automation
[**voiceDeliveryReceiptAutomationPost**](CSVoiceDeliveryReceiptRulesApi.md#voicedeliveryreceiptautomationpost) | **POST** /automations/voice/receipts | Create voice delivery receipt automations
[**voiceDeliveryReceiptAutomationPut**](CSVoiceDeliveryReceiptRulesApi.md#voicedeliveryreceiptautomationput) | **PUT** /automations/voice/receipts/{receipt_rule_id} | Update voice delivery receipt automation
[**voiceDeliveryReceiptAutomationsGet**](CSVoiceDeliveryReceiptRulesApi.md#voicedeliveryreceiptautomationsget) | **GET** /automations/voice/receipts | Get all voice delivery receipt automations


# **voiceDeliveryReceiptAutomationDelete**
```objc
-(NSURLSessionTask*) voiceDeliveryReceiptAutomationDeleteWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete voice delivery receipt automation

Delete voice delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

CSVoiceDeliveryReceiptRulesApi*apiInstance = [[CSVoiceDeliveryReceiptRulesApi alloc] init];

// Delete voice delivery receipt automation
[apiInstance voiceDeliveryReceiptAutomationDeleteWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceDeliveryReceiptRulesApi->voiceDeliveryReceiptAutomationDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptRuleId** | **NSNumber***| Receipt rule id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voiceDeliveryReceiptAutomationGet**
```objc
-(NSURLSessionTask*) voiceDeliveryReceiptAutomationGetWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific voice delivery receipt automation

Get specific voice delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

CSVoiceDeliveryReceiptRulesApi*apiInstance = [[CSVoiceDeliveryReceiptRulesApi alloc] init];

// Get specific voice delivery receipt automation
[apiInstance voiceDeliveryReceiptAutomationGetWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceDeliveryReceiptRulesApi->voiceDeliveryReceiptAutomationGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptRuleId** | **NSNumber***| Receipt rule id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voiceDeliveryReceiptAutomationPost**
```objc
-(NSURLSessionTask*) voiceDeliveryReceiptAutomationPostWithDeliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create voice delivery receipt automations

Create voice delivery receipt automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSDeliveryReceiptRule* deliveryReceiptRule = [[CSDeliveryReceiptRule alloc] init]; // voice delivery receipt rule model

CSVoiceDeliveryReceiptRulesApi*apiInstance = [[CSVoiceDeliveryReceiptRulesApi alloc] init];

// Create voice delivery receipt automations
[apiInstance voiceDeliveryReceiptAutomationPostWithDeliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceDeliveryReceiptRulesApi->voiceDeliveryReceiptAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryReceiptRule** | [**CSDeliveryReceiptRule***](CSDeliveryReceiptRule.md)| voice delivery receipt rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voiceDeliveryReceiptAutomationPut**
```objc
-(NSURLSessionTask*) voiceDeliveryReceiptAutomationPutWithReceiptRuleId: (NSNumber*) receiptRuleId
    deliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update voice delivery receipt automation

Update voice delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id
CSDeliveryReceiptRule* deliveryReceiptRule = [[CSDeliveryReceiptRule alloc] init]; // Delivery receipt rule model

CSVoiceDeliveryReceiptRulesApi*apiInstance = [[CSVoiceDeliveryReceiptRulesApi alloc] init];

// Update voice delivery receipt automation
[apiInstance voiceDeliveryReceiptAutomationPutWithReceiptRuleId:receiptRuleId
              deliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceDeliveryReceiptRulesApi->voiceDeliveryReceiptAutomationPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptRuleId** | **NSNumber***| Receipt rule id | 
 **deliveryReceiptRule** | [**CSDeliveryReceiptRule***](CSDeliveryReceiptRule.md)| Delivery receipt rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voiceDeliveryReceiptAutomationsGet**
```objc
-(NSURLSessionTask*) voiceDeliveryReceiptAutomationsGetWithQ: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all voice delivery receipt automations

Get all voice delivery receipt automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Your keyword or query.
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSVoiceDeliveryReceiptRulesApi*apiInstance = [[CSVoiceDeliveryReceiptRulesApi alloc] init];

// Get all voice delivery receipt automations
[apiInstance voiceDeliveryReceiptAutomationsGetWithQ:q
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceDeliveryReceiptRulesApi->voiceDeliveryReceiptAutomationsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Your keyword or query. | 
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

