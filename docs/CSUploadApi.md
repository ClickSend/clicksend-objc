# CSUploadApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadsPost**](CSUploadApi.md#uploadspost) | **POST** /uploads | Upload File


# **uploadsPost**
```objc
-(NSURLSessionTask*) uploadsPostWithContent: (NSString*) content
    convert: (NSString*) convert
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Upload File

Upload File

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* content = content_example; // Base64-encoded file contents
NSString* convert = @"convert_example"; // 

CSUploadApi*apiInstance = [[CSUploadApi alloc] init];

// Upload File
[apiInstance uploadsPostWithContent:content
              convert:convert
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSUploadApi->uploadsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content** | **NSString***| Base64-encoded file contents | 
 **convert** | **NSString***|  | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

