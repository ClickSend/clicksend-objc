# CSUploadApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadsPost**](CSUploadApi.md#uploadspost) | **POST** /uploads | Upload File


# **uploadsPost**
```objc
-(NSURLSessionTask*) uploadsPostWithConvert: (NSString*) convert
    uploadFile: (CSUploadFile*) uploadFile
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


NSString* convert = @"convert_example"; // 
CSUploadFile* uploadFile = [[CSUploadFile alloc] init]; //  (optional)

CSUploadApi*apiInstance = [[CSUploadApi alloc] init];

// Upload File
[apiInstance uploadsPostWithConvert:convert
              uploadFile:uploadFile
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
 **convert** | **NSString***|  | 
 **uploadFile** | [**CSUploadFile***](CSUploadFile.md)|  | [optional] 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

