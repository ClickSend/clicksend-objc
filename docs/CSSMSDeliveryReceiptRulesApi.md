# CSSMSDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsDeliveryReceiptAutomationDelete**](CSSMSDeliveryReceiptRulesApi.md#smsdeliveryreceiptautomationdelete) | **DELETE** /automations/sms/receipts/{receipt_rule_id} | Delete sms delivery receipt automation
[**smsDeliveryReceiptAutomationGet**](CSSMSDeliveryReceiptRulesApi.md#smsdeliveryreceiptautomationget) | **GET** /automations/sms/receipts/{receipt_rule_id} | Get specific sms delivery receipt automation
[**smsDeliveryReceiptAutomationPost**](CSSMSDeliveryReceiptRulesApi.md#smsdeliveryreceiptautomationpost) | **POST** /automations/sms/receipts | Create sms delivery receipt automations
[**smsDeliveryReceiptAutomationPut**](CSSMSDeliveryReceiptRulesApi.md#smsdeliveryreceiptautomationput) | **PUT** /automations/sms/receipts/{receipt_rule_id} | Update sms delivery receipt automation
[**smsDeliveryReceiptAutomationsGet**](CSSMSDeliveryReceiptRulesApi.md#smsdeliveryreceiptautomationsget) | **GET** /automations/sms/receipts | Get all sms delivery receipt automations


# **smsDeliveryReceiptAutomationDelete**
```objc
-(NSURLSessionTask*) smsDeliveryReceiptAutomationDeleteWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete sms delivery receipt automation

Delete sms delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

CSSMSDeliveryReceiptRulesApi*apiInstance = [[CSSMSDeliveryReceiptRulesApi alloc] init];

// Delete sms delivery receipt automation
[apiInstance smsDeliveryReceiptAutomationDeleteWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSDeliveryReceiptRulesApi->smsDeliveryReceiptAutomationDelete: %@", error);
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

# **smsDeliveryReceiptAutomationGet**
```objc
-(NSURLSessionTask*) smsDeliveryReceiptAutomationGetWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific sms delivery receipt automation

Get specific sms delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

CSSMSDeliveryReceiptRulesApi*apiInstance = [[CSSMSDeliveryReceiptRulesApi alloc] init];

// Get specific sms delivery receipt automation
[apiInstance smsDeliveryReceiptAutomationGetWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSDeliveryReceiptRulesApi->smsDeliveryReceiptAutomationGet: %@", error);
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

# **smsDeliveryReceiptAutomationPost**
```objc
-(NSURLSessionTask*) smsDeliveryReceiptAutomationPostWithDeliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create sms delivery receipt automations

Create sms delivery receipt automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSDeliveryReceiptRule* deliveryReceiptRule = [[CSDeliveryReceiptRule alloc] init]; // sms delivery receipt rule model

CSSMSDeliveryReceiptRulesApi*apiInstance = [[CSSMSDeliveryReceiptRulesApi alloc] init];

// Create sms delivery receipt automations
[apiInstance smsDeliveryReceiptAutomationPostWithDeliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSDeliveryReceiptRulesApi->smsDeliveryReceiptAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryReceiptRule** | [**CSDeliveryReceiptRule***](CSDeliveryReceiptRule.md)| sms delivery receipt rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsDeliveryReceiptAutomationPut**
```objc
-(NSURLSessionTask*) smsDeliveryReceiptAutomationPutWithReceiptRuleId: (NSNumber*) receiptRuleId
    deliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update sms delivery receipt automation

Update sms delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id
CSDeliveryReceiptRule* deliveryReceiptRule = [[CSDeliveryReceiptRule alloc] init]; // Delivery receipt rule model

CSSMSDeliveryReceiptRulesApi*apiInstance = [[CSSMSDeliveryReceiptRulesApi alloc] init];

// Update sms delivery receipt automation
[apiInstance smsDeliveryReceiptAutomationPutWithReceiptRuleId:receiptRuleId
              deliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSDeliveryReceiptRulesApi->smsDeliveryReceiptAutomationPut: %@", error);
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

# **smsDeliveryReceiptAutomationsGet**
```objc
-(NSURLSessionTask*) smsDeliveryReceiptAutomationsGetWithQ: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all sms delivery receipt automations

Get all sms delivery receipt automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Your keyword or query. (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSSMSDeliveryReceiptRulesApi*apiInstance = [[CSSMSDeliveryReceiptRulesApi alloc] init];

// Get all sms delivery receipt automations
[apiInstance smsDeliveryReceiptAutomationsGetWithQ:q
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSDeliveryReceiptRulesApi->smsDeliveryReceiptAutomationsGet: %@", error);
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

