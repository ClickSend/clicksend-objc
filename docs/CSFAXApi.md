# CSFAXApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faxReceiptsGet**](CSFAXApi.md#faxreceiptsget) | **GET** /fax/receipts | Get all delivery receipts
[**faxReceiptsPost**](CSFAXApi.md#faxreceiptspost) | **POST** /fax/receipts | Add a delivery receipt
[**faxReceiptsReadPut**](CSFAXApi.md#faxreceiptsreadput) | **PUT** /fax/receipts-read | Mark delivery receipts as read


# **faxReceiptsGet**
```objc
-(NSURLSessionTask*) faxReceiptsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all delivery receipts

Get all delivery receipts

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSFAXApi*apiInstance = [[CSFAXApi alloc] init];

// Get all delivery receipts
[apiInstance faxReceiptsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXApi->faxReceiptsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| Page number | [optional] [default to 1]
 **limit** | **NSNumber***| Number of records per page | [optional] [default to 10]

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faxReceiptsPost**
```objc
-(NSURLSessionTask*) faxReceiptsPostWithUrl: (CSUrl*) url
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Add a delivery receipt

Add a delivery receipt

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSUrl* url = [[CSUrl alloc] init]; // Url model

CSFAXApi*apiInstance = [[CSFAXApi alloc] init];

// Add a delivery receipt
[apiInstance faxReceiptsPostWithUrl:url
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXApi->faxReceiptsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | [**CSUrl***](CSUrl.md)| Url model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faxReceiptsReadPut**
```objc
-(NSURLSessionTask*) faxReceiptsReadPutWithDateBefore: (CSDateBefore*) dateBefore
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Mark delivery receipts as read

Mark delivery receipts as read

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSDateBefore* dateBefore = [[CSDateBefore alloc] init]; // DateBefore model (optional)

CSFAXApi*apiInstance = [[CSFAXApi alloc] init];

// Mark delivery receipts as read
[apiInstance faxReceiptsReadPutWithDateBefore:dateBefore
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXApi->faxReceiptsReadPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateBefore** | [**CSDateBefore***](CSDateBefore.md)| DateBefore model | [optional] 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

