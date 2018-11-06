# CSTransferCreditApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resellerTransferCreditPut**](CSTransferCreditApi.md#resellertransfercreditput) | **PUT** /reseller/transfer-credit | Transfer Credit


# **resellerTransferCreditPut**
```objc
-(NSURLSessionTask*) resellerTransferCreditPutWithResellerAccountTransferCredit: (CSResellerAccountTransferCredit*) resellerAccountTransferCredit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Transfer Credit

Transfer Credit

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSResellerAccountTransferCredit* resellerAccountTransferCredit = [[CSResellerAccountTransferCredit alloc] init]; // ResellerAccountTransferCredit model

CSTransferCreditApi*apiInstance = [[CSTransferCreditApi alloc] init];

// Transfer Credit
[apiInstance resellerTransferCreditPutWithResellerAccountTransferCredit:resellerAccountTransferCredit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSTransferCreditApi->resellerTransferCreditPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resellerAccountTransferCredit** | [**CSResellerAccountTransferCredit***](CSResellerAccountTransferCredit.md)| ResellerAccountTransferCredit model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

