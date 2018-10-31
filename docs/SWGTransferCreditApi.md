# SWGTransferCreditApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resellerTransferCreditPut**](SWGTransferCreditApi.md#resellertransfercreditput) | **PUT** /reseller/transfer-credit | Transfer Credit


# **resellerTransferCreditPut**
```objc
-(NSURLSessionTask*) resellerTransferCreditPutWithResellerAccountTransferCredit: (SWGResellerAccountTransferCredit*) resellerAccountTransferCredit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Transfer Credit

Transfer Credit

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGResellerAccountTransferCredit* resellerAccountTransferCredit = [[SWGResellerAccountTransferCredit alloc] init]; // ResellerAccountTransferCredit model

SWGTransferCreditApi*apiInstance = [[SWGTransferCreditApi alloc] init];

// Transfer Credit
[apiInstance resellerTransferCreditPutWithResellerAccountTransferCredit:resellerAccountTransferCredit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTransferCreditApi->resellerTransferCreditPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resellerAccountTransferCredit** | [**SWGResellerAccountTransferCredit***](SWGResellerAccountTransferCredit.md)| ResellerAccountTransferCredit model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

