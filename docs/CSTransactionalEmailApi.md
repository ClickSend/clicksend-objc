# CSTransactionalEmailApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailHistoryExportGet**](CSTransactionalEmailApi.md#emailhistoryexportget) | **GET** /email/history/export | Export all Transactional Email history
[**emailHistoryGet**](CSTransactionalEmailApi.md#emailhistoryget) | **GET** /email/history | Get all transactional email history
[**emailPricePost**](CSTransactionalEmailApi.md#emailpricepost) | **POST** /email/price | Get transactional email price
[**emailSendPost**](CSTransactionalEmailApi.md#emailsendpost) | **POST** /email/send | Send transactional email


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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* filename = @"filename_example"; // Filename to download history as
NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)

CSTransactionalEmailApi*apiInstance = [[CSTransactionalEmailApi alloc] init];

// Export all Transactional Email history
[apiInstance emailHistoryExportGetWithFilename:filename
              dateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSTransactionalEmailApi->emailHistoryExportGet: %@", error);
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
 - **Accept**: application/json

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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSTransactionalEmailApi*apiInstance = [[CSTransactionalEmailApi alloc] init];

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
                            NSLog(@"Error calling CSTransactionalEmailApi->emailHistoryGet: %@", error);
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
-(NSURLSessionTask*) emailPricePostWithEmail: (CSEmail*) email
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get transactional email price

Get transactional email price

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSEmail* email = [[CSEmail alloc] init]; // Email model

CSTransactionalEmailApi*apiInstance = [[CSTransactionalEmailApi alloc] init];

// Get transactional email price
[apiInstance emailPricePostWithEmail:email
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSTransactionalEmailApi->emailPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**CSEmail***](CSEmail.md)| Email model | 

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
-(NSURLSessionTask*) emailSendPostWithEmail: (CSEmail*) email
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send transactional email

Send transactional email

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSEmail* email = [[CSEmail alloc] init]; // Email model

CSTransactionalEmailApi*apiInstance = [[CSTransactionalEmailApi alloc] init];

// Send transactional email
[apiInstance emailSendPostWithEmail:email
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSTransactionalEmailApi->emailSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | [**CSEmail***](CSEmail.md)| Email model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

