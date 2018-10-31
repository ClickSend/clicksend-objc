# SWGFAXDeliveryReceiptRulesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faxDeliveryReceiptAutomationDelete**](SWGFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationdelete) | **DELETE** /automations/fax/receipts/{receipt_rule_id} | Delete fax delivery receipt automation
[**faxDeliveryReceiptAutomationGet**](SWGFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationget) | **GET** /automations/fax/receipts/{receipt_rule_id} | Get specific fax delivery receipt automation
[**faxDeliveryReceiptAutomationPost**](SWGFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationpost) | **POST** /automations/fax/receipts | Create fax delivery receipt automations
[**faxDeliveryReceiptAutomationPut**](SWGFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationput) | **PUT** /automations/fax/receipts/{receipt_rule_id} | Update fax delivery receipt automation
[**faxDeliveryReceiptAutomationsGet**](SWGFAXDeliveryReceiptRulesApi.md#faxdeliveryreceiptautomationsget) | **GET** /automations/fax/receipts | Get all fax delivery receipt automations


# **faxDeliveryReceiptAutomationDelete**
```objc
-(NSURLSessionTask*) faxDeliveryReceiptAutomationDeleteWithReceiptRuleId: (NSNumber*) receiptRuleId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete fax delivery receipt automation

Delete fax delivery receipt automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

SWGFAXDeliveryReceiptRulesApi*apiInstance = [[SWGFAXDeliveryReceiptRulesApi alloc] init];

// Delete fax delivery receipt automation
[apiInstance faxDeliveryReceiptAutomationDeleteWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationDelete: %@", error);
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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id

SWGFAXDeliveryReceiptRulesApi*apiInstance = [[SWGFAXDeliveryReceiptRulesApi alloc] init];

// Get specific fax delivery receipt automation
[apiInstance faxDeliveryReceiptAutomationGetWithReceiptRuleId:receiptRuleId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationGet: %@", error);
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
-(NSURLSessionTask*) faxDeliveryReceiptAutomationPostWithDeliveryReceiptRule: (SWGDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create fax delivery receipt automations

Create fax delivery receipt automations

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGDeliveryReceiptRule* deliveryReceiptRule = [[SWGDeliveryReceiptRule alloc] init]; // fax delivery receipt rule model

SWGFAXDeliveryReceiptRulesApi*apiInstance = [[SWGFAXDeliveryReceiptRulesApi alloc] init];

// Create fax delivery receipt automations
[apiInstance faxDeliveryReceiptAutomationPostWithDeliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryReceiptRule** | [**SWGDeliveryReceiptRule***](SWGDeliveryReceiptRule.md)| fax delivery receipt rule model | 

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
    deliveryReceiptRule: (SWGDeliveryReceiptRule*) deliveryReceiptRule
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update fax delivery receipt automation

Update fax delivery receipt automation

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* receiptRuleId = @56; // Receipt rule id
SWGDeliveryReceiptRule* deliveryReceiptRule = [[SWGDeliveryReceiptRule alloc] init]; // Delivery receipt rule model

SWGFAXDeliveryReceiptRulesApi*apiInstance = [[SWGFAXDeliveryReceiptRulesApi alloc] init];

// Update fax delivery receipt automation
[apiInstance faxDeliveryReceiptAutomationPutWithReceiptRuleId:receiptRuleId
              deliveryReceiptRule:deliveryReceiptRule
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiptRuleId** | **NSNumber***| Receipt rule id | 
 **deliveryReceiptRule** | [**SWGDeliveryReceiptRule***](SWGDeliveryReceiptRule.md)| Delivery receipt rule model | 

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
-(NSURLSessionTask*) faxDeliveryReceiptAutomationsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all fax delivery receipt automations

Get all fax delivery receipt automations

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGFAXDeliveryReceiptRulesApi*apiInstance = [[SWGFAXDeliveryReceiptRulesApi alloc] init];

// Get all fax delivery receipt automations
[apiInstance faxDeliveryReceiptAutomationsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFAXDeliveryReceiptRulesApi->faxDeliveryReceiptAutomationsGet: %@", error);
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

