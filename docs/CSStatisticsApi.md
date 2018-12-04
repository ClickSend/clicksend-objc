# CSStatisticsApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statisticsSmsGet**](CSStatisticsApi.md#statisticssmsget) | **GET** /statistics/sms | Get sms statistics
[**statisticsVoiceGet**](CSStatisticsApi.md#statisticsvoiceget) | **GET** /statistics/voice | Get voice statistics


# **statisticsSmsGet**
```objc
-(NSURLSessionTask*) statisticsSmsGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get sms statistics

Get sms statistics

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSStatisticsApi*apiInstance = [[CSStatisticsApi alloc] init];

// Get sms statistics
[apiInstance statisticsSmsGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSStatisticsApi->statisticsSmsGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statisticsVoiceGet**
```objc
-(NSURLSessionTask*) statisticsVoiceGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get voice statistics

Get voice statistics

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSStatisticsApi*apiInstance = [[CSStatisticsApi alloc] init];

// Get voice statistics
[apiInstance statisticsVoiceGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSStatisticsApi->statisticsVoiceGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

