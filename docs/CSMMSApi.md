# CSMMSApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mmsPricePost**](CSMMSApi.md#mmspricepost) | **POST** /mms/price | Get Price for MMS sent
[**mmsSendPost**](CSMMSApi.md#mmssendpost) | **POST** /mms/send | Send MMS


# **mmsPricePost**
```objc
-(NSURLSessionTask*) mmsPricePostWithMmsMessages: (CSMmsMessageCollection*) mmsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get Price for MMS sent

Get Price for MMS sent

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSMmsMessageCollection* mmsMessages = [[CSMmsMessageCollection alloc] init]; // MmsMessageCollection model

CSMMSApi*apiInstance = [[CSMMSApi alloc] init];

// Get Price for MMS sent
[apiInstance mmsPricePostWithMmsMessages:mmsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSMMSApi->mmsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsMessages** | [**CSMmsMessageCollection***](CSMmsMessageCollection.md)| MmsMessageCollection model | 

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
-(NSURLSessionTask*) mmsSendPostWithMmsMessages: (CSMmsMessageCollection*) mmsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send MMS

Send MMS

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSMmsMessageCollection* mmsMessages = [[CSMmsMessageCollection alloc] init]; // MmsMessageCollection model

CSMMSApi*apiInstance = [[CSMMSApi alloc] init];

// Send MMS
[apiInstance mmsSendPostWithMmsMessages:mmsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSMMSApi->mmsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsMessages** | [**CSMmsMessageCollection***](CSMmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

