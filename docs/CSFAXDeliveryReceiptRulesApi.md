# CSFAXDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faxDeliveryReceiptAutomationDelete**](CSFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationdelete) | **DELETE** /automations/fax/receipts/{receipt_rule_id} | Delete fax delivery receipt automation
[**faxDeliveryReceiptAutomationGet**](CSFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationget) | **GET** /automations/fax/receipts/{receipt_rule_id} | Get specific fax delivery receipt automation
[**faxDeliveryReceiptAutomationPost**](CSFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationpost) | **POST** /automations/fax/receipts | Create fax delivery receipt automations
[**faxDeliveryReceiptAutomationPut**](CSFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationput) | **PUT** /automations/fax/receipts/{receipt_rule_id} | Update fax delivery receipt automation
[**faxDeliveryReceiptAutomationsGet**](CSFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationsget) | **GET** /automations/fax/receipts | Get all fax delivery receipt automations


# **faxDeliveryReceiptAutomationDelete**
```objc
-(NSURLSessionTask*) faxDeliveryReceiptAutomationDeleteWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete fax delivery receipt automation

Delete fax delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

CSFAXDeliveryReceiptRulesApi*apiInstance = [[CSFAXDeliveryReceiptRulesApi alloc] init];

// Delete fax delivery receipt automation
[apiInstance faxDeliveryReceiptAutomationDeleteWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationDelete: %@", error);
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

# **faxDeliveryReceiptAutomationGet**
```objc
-(NSURLSessionTask*) faxDeliveryReceiptAutomationGetWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific fax delivery receipt automation

Get specific fax delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

CSFAXDeliveryReceiptRulesApi*apiInstance = [[CSFAXDeliveryReceiptRulesApi alloc] init];

// Get specific fax delivery receipt automation
[apiInstance faxDeliveryReceiptAutomationGetWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationGet: %@", error);
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

# **faxDeliveryReceiptAutomationPost**
```objc
-(NSURLSessionTask*) faxDeliveryReceiptAutomationPostWithDeliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create fax delivery receipt automations

Create fax delivery receipt automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSDeliveryReceiptRule* deliveryReceiptRule = [[CSDeliveryReceiptRule alloc] init]; // fax delivery receipt rule model

CSFAXDeliveryReceiptRulesApi*apiInstance = [[CSFAXDeliveryReceiptRulesApi alloc] init];

// Create fax delivery receipt automations
[apiInstance faxDeliveryReceiptAutomationPostWithDeliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryReceiptRule** | [**CSDeliveryReceiptRule***](CSDeliveryReceiptRule.md)| fax delivery receipt rule model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faxDeliveryReceiptAutomationPut**
```objc
-(NSURLSessionTask*) faxDeliveryReceiptAutomationPutWithReceiptRuleId: (NSNumber*) receiptRuleId
    deliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update fax delivery receipt automation

Update fax delivery receipt automation

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id
CSDeliveryReceiptRule* deliveryReceiptRule = [[CSDeliveryReceiptRule alloc] init]; // Delivery receipt rule model

CSFAXDeliveryReceiptRulesApi*apiInstance = [[CSFAXDeliveryReceiptRulesApi alloc] init];

// Update fax delivery receipt automation
[apiInstance faxDeliveryReceiptAutomationPutWithReceiptRuleId:receiptRuleId
              deliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationPut: %@", error);
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

# **faxDeliveryReceiptAutomationsGet**
```objc
-(NSURLSessionTask*) faxDeliveryReceiptAutomationsGetWithQ: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all fax delivery receipt automations

Get all fax delivery receipt automations

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Your keyword or query.
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSFAXDeliveryReceiptRulesApi*apiInstance = [[CSFAXDeliveryReceiptRulesApi alloc] init];

// Get all fax delivery receipt automations
[apiInstance faxDeliveryReceiptAutomationsGetWithQ:q
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationsGet: %@", error);
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

