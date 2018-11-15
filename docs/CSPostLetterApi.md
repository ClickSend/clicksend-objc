# CSPostLetterApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postLettersExportGet**](CSPostLetterApi.md#postlettersexportget) | **GET** /post/letters/export | export post letter history
[**postLettersHistoryGet**](CSPostLetterApi.md#postlettershistoryget) | **GET** /post/letters/history | Get all post letter history
[**postLettersPricePost**](CSPostLetterApi.md#postletterspricepost) | **POST** /post/letters/price | Calculate post letter price
[**postLettersSendPost**](CSPostLetterApi.md#postletterssendpost) | **POST** /post/letters/send | Send post letter


# **postLettersExportGet**
```objc
-(NSURLSessionTask*) postLettersExportGetWithFilename: (NSString*) filename
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

export post letter history

export post letter history

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* filename = @"filename_example"; // Filename to export to

CSPostLetterApi*apiInstance = [[CSPostLetterApi alloc] init];

// export post letter history
[apiInstance postLettersExportGetWithFilename:filename
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostLetterApi->postLettersExportGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **NSString***| Filename to export to | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postLettersHistoryGet**
```objc
-(NSURLSessionTask*) postLettersHistoryGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all post letter history

Get all post letter history

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSPostLetterApi*apiInstance = [[CSPostLetterApi alloc] init];

// Get all post letter history
[apiInstance postLettersHistoryGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostLetterApi->postLettersHistoryGet: %@", error);
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

# **postLettersPricePost**
```objc
-(NSURLSessionTask*) postLettersPricePostWithPostLetter: (CSPostLetter*) postLetter
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate post letter price

Calculate post letter price

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSPostLetter* postLetter = [[CSPostLetter alloc] init]; // PostLetter model

CSPostLetterApi*apiInstance = [[CSPostLetterApi alloc] init];

// Calculate post letter price
[apiInstance postLettersPricePostWithPostLetter:postLetter
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostLetterApi->postLettersPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLetter** | [**CSPostLetter***](CSPostLetter.md)| PostLetter model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postLettersSendPost**
```objc
-(NSURLSessionTask*) postLettersSendPostWithPostLetter: (CSPostLetter*) postLetter
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send post letter

Send post letter

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSPostLetter* postLetter = [[CSPostLetter alloc] init]; // PostLetter model

CSPostLetterApi*apiInstance = [[CSPostLetterApi alloc] init];

// Send post letter
[apiInstance postLettersSendPostWithPostLetter:postLetter
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostLetterApi->postLettersSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLetter** | [**CSPostLetter***](CSPostLetter.md)| PostLetter model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

