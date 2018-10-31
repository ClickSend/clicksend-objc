# SWGDetectAddressApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectAddressPost**](SWGDetectAddressApi.md#detectaddresspost) | **POST** /post/letters/detect-address | Detects address in uploaded file.


# **detectAddressPost**
```objc
-(NSURLSessionTask*) detectAddressPostWithContent: (NSString*) content
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Detects address in uploaded file.

Detects address in uploaded file.

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* content = content_example; // Base64-encoded file contents

SWGDetectAddressApi*apiInstance = [[SWGDetectAddressApi alloc] init];

// Detects address in uploaded file.
[apiInstance detectAddressPostWithContent:content
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDetectAddressApi->detectAddressPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content** | **NSString***| Base64-encoded file contents | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

