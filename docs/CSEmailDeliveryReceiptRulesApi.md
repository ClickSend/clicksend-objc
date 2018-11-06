# CSEmailDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailDeliveryReceiptAutomationDelete**](CSEmailDeliveryReceiptRulesApi.md#emaildeliveryreceiptautomationdelete) | **DELETE** /automations/email/receipts/{receipt_rule_id} | Delete email delivery receipt automation
[**emailDeliveryReceiptAutomationGet**](CSEmailDeliveryReceiptRulesApi.md#emaildeliveryreceiptautomationget) | **GET** /automations/email/receipts/{receipt_rule_id} | Get specific email delivery receipt automation
[**emailDeliveryReceiptAutomationPost**](CSEmailDeliveryReceiptRulesApi.md#emaildeliveryreceiptautomationpost) | **POST** /automations/email/receipts | Create email delivery receipt automations
[**emailDeliveryReceiptAutomationPut**](CSEmailDeliveryReceiptRulesApi.md#emaildeliveryreceiptautomationput) | **PUT** /automations/email/receipts/{receipt_rule_id} | Update email delivery receipt automation
[**emailDeliveryReceiptAutomationsGet**](CSEmailDeliveryReceiptRulesApi.md#emaildeliveryreceiptautomationsget) | **GET** /automations/email/receipts | Get all email delivery receipt automations


# **emailDeliveryReceiptAutomationDelete**
```objc
-(NSURLSessionTask*) emailDeliveryReceiptAutomationDeleteWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete email delivery receipt automation

Delete email delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

CSEmailDeliveryReceiptRulesApi*apiInstance = [[CSEmailDeliveryReceiptRulesApi alloc] init];

// Delete email delivery receipt automation
[apiInstance emailDeliveryReceiptAutomationDeleteWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailDeliveryReceiptRulesApi->emailDeliveryReceiptAutomationDelete: %@", error);
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

# **emailDeliveryReceiptAutomationGet**
```objc
-(NSURLSessionTask*) emailDeliveryReceiptAutomationGetWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific email delivery receipt automation

Get specific email delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

CSEmailDeliveryReceiptRulesApi*apiInstance = [[CSEmailDeliveryReceiptRulesApi alloc] init];

// Get specific email delivery receipt automation
[apiInstance emailDeliveryReceiptAutomationGetWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailDeliveryReceiptRulesApi->emailDeliveryReceiptAutomationGet: %@", error);
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

# **emailDeliveryReceiptAutomationPost**
```objc
-(NSURLSessionTask*) emailDeliveryReceiptAutomationPostWithDeliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create email delivery receipt automations

Create email delivery receipt automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSDeliveryReceiptRule* deliveryReceiptRule = [[CSDeliveryReceiptRule alloc] init]; // Email delivery receipt rule model

CSEmailDeliveryReceiptRulesApi*apiInstance = [[CSEmailDeliveryReceiptRulesApi alloc] init];

// Create email delivery receipt automations
[apiInstance emailDeliveryReceiptAutomationPostWithDeliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailDeliveryReceiptRulesApi->emailDeliveryReceiptAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryReceiptRule** | [**CSDeliveryReceiptRule***](CSDeliveryReceiptRule.md)| Email delivery receipt rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailDeliveryReceiptAutomationPut**
```objc
-(NSURLSessionTask*) emailDeliveryReceiptAutomationPutWithReceiptRuleId: (NSNumber*) receiptRuleId
    deliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update email delivery receipt automation

Update email delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id
CSDeliveryReceiptRule* deliveryReceiptRule = [[CSDeliveryReceiptRule alloc] init]; // Delivery receipt rule model

CSEmailDeliveryReceiptRulesApi*apiInstance = [[CSEmailDeliveryReceiptRulesApi alloc] init];

// Update email delivery receipt automation
[apiInstance emailDeliveryReceiptAutomationPutWithReceiptRuleId:receiptRuleId
              deliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailDeliveryReceiptRulesApi->emailDeliveryReceiptAutomationPut: %@", error);
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

# **emailDeliveryReceiptAutomationsGet**
```objc
-(NSURLSessionTask*) emailDeliveryReceiptAutomationsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all email delivery receipt automations

Get all email delivery receipt automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSEmailDeliveryReceiptRulesApi*apiInstance = [[CSEmailDeliveryReceiptRulesApi alloc] init];

// Get all email delivery receipt automations
[apiInstance emailDeliveryReceiptAutomationsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailDeliveryReceiptRulesApi->emailDeliveryReceiptAutomationsGet: %@", error);
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

