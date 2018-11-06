# CSCountriesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countriesGet**](CSCountriesApi.md#countriesget) | **GET** /countries | Get all country codes


# **countriesGet**
```objc
-(NSURLSessionTask*) countriesGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get all country codes

Get all countries

### Example 
```objc


CSCountriesApi*apiInstance = [[CSCountriesApi alloc] init];

// Get all country codes
[apiInstance countriesGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSCountriesApi->countriesGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

