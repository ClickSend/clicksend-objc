# CSDetectAddressApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**detectAddressPost**](CSDetectAddressApi.md#detectaddresspost) | **POST** /post/letters/detect-address | Detects address in uploaded file.


# **detectAddressPost**
```objc
-(NSURLSessionTask*) detectAddressPostWithUploadFile: (CSUploadFile*) uploadFile
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Detects address in uploaded file.

Detects address in uploaded file.

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSUploadFile* uploadFile = [[CSUploadFile alloc] init]; // Your file to be uploaded

CSDetectAddressApi*apiInstance = [[CSDetectAddressApi alloc] init];

// Detects address in uploaded file.
[apiInstance detectAddressPostWithUploadFile:uploadFile
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSDetectAddressApi->detectAddressPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadFile** | [**CSUploadFile***](CSUploadFile.md)| Your file to be uploaded | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

