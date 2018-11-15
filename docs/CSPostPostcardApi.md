# CSPostPostcardApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postPostcardsHistoryExportGet**](CSPostPostcardApi.md#postpostcardshistoryexportget) | **GET** /post/postcards/history/export | Export postcard history to a CSV file
[**postPostcardsHistoryGet**](CSPostPostcardApi.md#postpostcardshistoryget) | **GET** /post/postcards/history | Retrieve the history of postcards sent or scheduled
[**postPostcardsPricePost**](CSPostPostcardApi.md#postpostcardspricepost) | **POST** /post/postcards/price | Calculate price for sending one or more postcards
[**postPostcardsSendPost**](CSPostPostcardApi.md#postpostcardssendpost) | **POST** /post/postcards/send | Send one or more postcards


# **postPostcardsHistoryExportGet**
```objc
-(NSURLSessionTask*) postPostcardsHistoryExportGetWithFilename: (NSString*) filename
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Export postcard history to a CSV file

Export postcard history to a CSV file

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* filename = @"filename_example"; // Filename to export to

CSPostPostcardApi*apiInstance = [[CSPostPostcardApi alloc] init];

// Export postcard history to a CSV file
[apiInstance postPostcardsHistoryExportGetWithFilename:filename
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostPostcardApi->postPostcardsHistoryExportGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **NSString***| Filename to export to | 

### Return type

**NSURL***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPostcardsHistoryGet**
```objc
-(NSURLSessionTask*) postPostcardsHistoryGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Retrieve the history of postcards sent or scheduled

Retrieve the history of postcards sent or scheduled

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSPostPostcardApi*apiInstance = [[CSPostPostcardApi alloc] init];

// Retrieve the history of postcards sent or scheduled
[apiInstance postPostcardsHistoryGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostPostcardApi->postPostcardsHistoryGet: %@", error);
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

# **postPostcardsPricePost**
```objc
-(NSURLSessionTask*) postPostcardsPricePostWithPostPostcards: (CSPostPostcard*) postPostcards
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate price for sending one or more postcards

Calculate price for sending one or more postcards

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSPostPostcard* postPostcards = [[CSPostPostcard alloc] init]; // PostPostcard model

CSPostPostcardApi*apiInstance = [[CSPostPostcardApi alloc] init];

// Calculate price for sending one or more postcards
[apiInstance postPostcardsPricePostWithPostPostcards:postPostcards
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostPostcardApi->postPostcardsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postPostcards** | [**CSPostPostcard***](CSPostPostcard.md)| PostPostcard model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPostcardsSendPost**
```objc
-(NSURLSessionTask*) postPostcardsSendPostWithPostPostcards: (CSPostPostcard*) postPostcards
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send one or more postcards

Send one or more postcards

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSPostPostcard* postPostcards = [[CSPostPostcard alloc] init]; // PostPostcard model

CSPostPostcardApi*apiInstance = [[CSPostPostcardApi alloc] init];

// Send one or more postcards
[apiInstance postPostcardsSendPostWithPostPostcards:postPostcards
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostPostcardApi->postPostcardsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postPostcards** | [**CSPostPostcard***](CSPostPostcard.md)| PostPostcard model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

