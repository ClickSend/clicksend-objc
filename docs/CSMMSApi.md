# CSMMSApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mmsHistoryExportGet**](CSMMSApi.md#mmshistoryexportget) | **GET** /mms/history/export | Export all mms history
[**mmsHistoryGet**](CSMMSApi.md#mmshistoryget) | **GET** /mms/history | Get all mms history
[**mmsPricePost**](CSMMSApi.md#mmspricepost) | **POST** /mms/price | Get Price for MMS sent
[**mmsReceiptsGet**](CSMMSApi.md#mmsreceiptsget) | **GET** /mms/receipts | Get all delivery receipts
[**mmsReceiptsReadPut**](CSMMSApi.md#mmsreceiptsreadput) | **PUT** /mms/receipts-read | Mark delivery receipts as read
[**mmsSendPost**](CSMMSApi.md#mmssendpost) | **POST** /mms/send | Send MMS


# **mmsHistoryExportGet**
```objc
-(NSURLSessionTask*) mmsHistoryExportGetWithFilename: (NSString*) filename
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Export all mms history

Export all mms history

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* filename = @"filename_example"; // Filename to download history as

CSMMSApi*apiInstance = [[CSMMSApi alloc] init];

// Export all mms history
[apiInstance mmsHistoryExportGetWithFilename:filename
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSMMSApi->mmsHistoryExportGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **NSString***| Filename to download history as | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmsHistoryGet**
```objc
-(NSURLSessionTask*) mmsHistoryGetWithQ: (NSString*) q
    dateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all mms history

Get all mms history

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Custom query Example: from:{number},status_code:201. (optional)
NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSMMSApi*apiInstance = [[CSMMSApi alloc] init];

// Get all mms history
[apiInstance mmsHistoryGetWithQ:q
              dateFrom:dateFrom
              dateTo:dateTo
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSMMSApi->mmsHistoryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Custom query Example: from:{number},status_code:201. | [optional] 
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

# **mmsPricePost**
```objc
-(NSURLSessionTask*) mmsPricePostWithMmsMessages: (CSMmsMessageCollection*) mmsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get Price for MMS sent

Get Price for MMS sent

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSMmsMessageCollection* mmsMessages = [[CSMmsMessageCollection alloc] init]; // MmsMessageCollection model

CSMMSApi*apiInstance = [[CSMMSApi alloc] init];

// Get Price for MMS sent
[apiInstance mmsPricePostWithMmsMessages:mmsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSMMSApi->mmsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsMessages** | [**CSMmsMessageCollection***](CSMmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmsReceiptsGet**
```objc
-(NSURLSessionTask*) mmsReceiptsGetWithPage: (NSNumber*) page
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

CSMMSApi*apiInstance = [[CSMMSApi alloc] init];

// Get all delivery receipts
[apiInstance mmsReceiptsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSMMSApi->mmsReceiptsGet: %@", error);
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

# **mmsReceiptsReadPut**
```objc
-(NSURLSessionTask*) mmsReceiptsReadPutWithDateBefore: (CSDateBefore*) dateBefore
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

CSMMSApi*apiInstance = [[CSMMSApi alloc] init];

// Mark delivery receipts as read
[apiInstance mmsReceiptsReadPutWithDateBefore:dateBefore
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSMMSApi->mmsReceiptsReadPut: %@", error);
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

# **mmsSendPost**
```objc
-(NSURLSessionTask*) mmsSendPostWithMmsMessages: (CSMmsMessageCollection*) mmsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send MMS

Send MMS

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSMmsMessageCollection* mmsMessages = [[CSMmsMessageCollection alloc] init]; // MmsMessageCollection model

CSMMSApi*apiInstance = [[CSMMSApi alloc] init];

// Send MMS
[apiInstance mmsSendPostWithMmsMessages:mmsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSMMSApi->mmsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsMessages** | [**CSMmsMessageCollection***](CSMmsMessageCollection.md)| MmsMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

