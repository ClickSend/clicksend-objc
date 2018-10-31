# SWGStatisticsApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statisticsMmsGet**](SWGStatisticsApi.md#statisticsmmsget) | **GET** /statistics/mms | Get mms statistics
[**statisticsSmsGet**](SWGStatisticsApi.md#statisticssmsget) | **GET** /statistics/sms | Get sms statistics
[**statisticsVoiceGet**](SWGStatisticsApi.md#statisticsvoiceget) | **GET** /statistics/voice | Get voice statistics


# **statisticsMmsGet**
```objc
-(NSURLSessionTask*) statisticsMmsGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get mms statistics

Get mms statistics

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



SWGStatisticsApi*apiInstance = [[SWGStatisticsApi alloc] init];

// Get mms statistics
[apiInstance statisticsMmsGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStatisticsApi->statisticsMmsGet: %@", error);
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

# **statisticsSmsGet**
```objc
-(NSURLSessionTask*) statisticsSmsGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get sms statistics

Get sms statistics

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



SWGStatisticsApi*apiInstance = [[SWGStatisticsApi alloc] init];

// Get sms statistics
[apiInstance statisticsSmsGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStatisticsApi->statisticsSmsGet: %@", error);
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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



SWGStatisticsApi*apiInstance = [[SWGStatisticsApi alloc] init];

// Get voice statistics
[apiInstance statisticsVoiceGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGStatisticsApi->statisticsVoiceGet: %@", error);
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

