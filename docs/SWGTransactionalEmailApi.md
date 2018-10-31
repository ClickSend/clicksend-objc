# SWGTransactionalEmailApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailHistoryExportGet**](SWGTransactionalEmailApi.md#emailhistoryexportget) | **GET** /email/history/export | Export all Transactional Email history
[**emailHistoryGet**](SWGTransactionalEmailApi.md#emailhistoryget) | **GET** /email/history | Get all transactional email history
[**emailPricePost**](SWGTransactionalEmailApi.md#emailpricepost) | **POST** /email/price | Get transactional email price
[**emailSendPost**](SWGTransactionalEmailApi.md#emailsendpost) | **POST** /email/send | Send transactional email


# **emailHistoryExportGet**
```objc
-(NSURLSessionTask*) emailHistoryExportGetWithFilename: (NSString*) filename
    dateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Export all Transactional Email history

Export all Transactional Email history

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* filename = @"filename_example"; // Filename to download history as
NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)

SWGTransactionalEmailApi*apiInstance = [[SWGTransactionalEmailApi alloc] init];

// Export all Transactional Email history
[apiInstance emailHistoryExportGetWithFilename:filename
              dateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTransactionalEmailApi->emailHistoryExportGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **NSString***| Filename to download history as | 
 **dateFrom** | **NSNumber***| Start date | [optional] 
 **dateTo** | **NSNumber***| End date | [optional] 

### Return type

**NSURL***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailHistoryGet**
```objc
-(NSURLSessionTask*) emailHistoryGetWithDateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all transactional email history

Get all transactional email history

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGTransactionalEmailApi*apiInstance = [[SWGTransactionalEmailApi alloc] init];

// Get all transactional email history
[apiInstance emailHistoryGetWithDateFrom:dateFrom
              dateTo:dateTo
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTransactionalEmailApi->emailHistoryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateFrom** | **NSNumber***| Start date | [optional] 
 **dateTo** | **NSNumber***| End date | [optional] 
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

# **emailPricePost**
```objc
-(NSURLSessionTask*) emailPricePostWithEmail: (SWGEmail*) email
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get transactional email price

Get transactional email price

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGEmail* email = [[SWGEmail alloc] init]; // Email model

SWGTransactionalEmailApi*apiInstance = [[SWGTransactionalEmailApi alloc] init];

// Get transactional email price
[apiInstance emailPricePostWithEmail:email
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTransactionalEmailApi->emailPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**SWGEmail***](SWGEmail.md)| Email model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailSendPost**
```objc
-(NSURLSessionTask*) emailSendPostWithEmail: (SWGEmail*) email
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send transactional email

Send transactional email

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGEmail* email = [[SWGEmail alloc] init]; // Email model

SWGTransactionalEmailApi*apiInstance = [[SWGTransactionalEmailApi alloc] init];

// Send transactional email
[apiInstance emailSendPostWithEmail:email
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTransactionalEmailApi->emailSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**SWGEmail***](SWGEmail.md)| Email model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

