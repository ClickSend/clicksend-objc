# SWGMMSApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mmsPricePost**](SWGMMSApi.md#mmspricepost) | **POST** /mms/price | Get Price for MMS sent
[**mmsSendPost**](SWGMMSApi.md#mmssendpost) | **POST** /mms/send | Send MMS


# **mmsPricePost**
```objc
-(NSURLSessionTask*) mmsPricePostWithMmsMessages: (SWGMmsMessageCollection*) mmsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get Price for MMS sent

Get Price for MMS sent

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGMmsMessageCollection* mmsMessages = [[SWGMmsMessageCollection alloc] init]; // MmsMessageCollection model

SWGMMSApi*apiInstance = [[SWGMMSApi alloc] init];

// Get Price for MMS sent
[apiInstance mmsPricePostWithMmsMessages:mmsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMMSApi->mmsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsMessages** | [**SWGMmsMessageCollection***](SWGMmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmsSendPost**
```objc
-(NSURLSessionTask*) mmsSendPostWithMmsMessages: (SWGMmsMessageCollection*) mmsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send MMS

Send MMS

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGMmsMessageCollection* mmsMessages = [[SWGMmsMessageCollection alloc] init]; // MmsMessageCollection model

SWGMMSApi*apiInstance = [[SWGMMSApi alloc] init];

// Send MMS
[apiInstance mmsSendPostWithMmsMessages:mmsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMMSApi->mmsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsMessages** | [**SWGMmsMessageCollection***](SWGMmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

