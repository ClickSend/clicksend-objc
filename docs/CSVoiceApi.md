# CSVoiceApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**voiceCancelAllPut**](CSVoiceApi.md#voicecancelallput) | **PUT** /voice/cancel-all | Update all voice messages as cancelled
[**voiceCancelByMessageIdPut**](CSVoiceApi.md#voicecancelbymessageidput) | **PUT** /voice/{message_id}/cancel | Update voice message status as cancelled
[**voiceHistoryExportGet**](CSVoiceApi.md#voicehistoryexportget) | **GET** /voice/history/export | Export voice history
[**voiceHistoryGet**](CSVoiceApi.md#voicehistoryget) | **GET** /voice/history | Get all voice history
[**voiceLangGet**](CSVoiceApi.md#voicelangget) | **GET** /voice/lang | Get all voice languages
[**voicePricePost**](CSVoiceApi.md#voicepricepost) | **POST** /voice/price | Calculate voice price
[**voiceReceiptsGet**](CSVoiceApi.md#voicereceiptsget) | **GET** /voice/receipts | Get all voice receipts
[**voiceSendPost**](CSVoiceApi.md#voicesendpost) | **POST** /voice/send | Send voice message(s)


# **voiceCancelAllPut**
```objc
-(NSURLSessionTask*) voiceCancelAllPutWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Update all voice messages as cancelled

Update all voice messages as cancelled

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSVoiceApi*apiInstance = [[CSVoiceApi alloc] init];

// Update all voice messages as cancelled
[apiInstance voiceCancelAllPutWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceApi->voiceCancelAllPut: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voiceCancelByMessageIdPut**
```objc
-(NSURLSessionTask*) voiceCancelByMessageIdPutWithMessageId: (NSString*) messageId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update voice message status as cancelled

Update voice message status as cancelled

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* messageId = @"messageId_example"; // Your voice message id

CSVoiceApi*apiInstance = [[CSVoiceApi alloc] init];

// Update voice message status as cancelled
[apiInstance voiceCancelByMessageIdPutWithMessageId:messageId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceApi->voiceCancelByMessageIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **NSString***| Your voice message id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voiceHistoryExportGet**
```objc
-(NSURLSessionTask*) voiceHistoryExportGetWithFilename: (NSString*) filename
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Export voice history

Export voice history

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* filename = @"filename_example"; // Filename to export to

CSVoiceApi*apiInstance = [[CSVoiceApi alloc] init];

// Export voice history
[apiInstance voiceHistoryExportGetWithFilename:filename
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceApi->voiceHistoryExportGet: %@", error);
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

# **voiceHistoryGet**
```objc
-(NSURLSessionTask*) voiceHistoryGetWithDateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all voice history

Get all voice history

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* dateFrom = @56; // Timestamp (from) used to show records by date. (optional)
NSNumber* dateTo = @56; // Timestamp (to) used to show records by date (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSVoiceApi*apiInstance = [[CSVoiceApi alloc] init];

// Get all voice history
[apiInstance voiceHistoryGetWithDateFrom:dateFrom
              dateTo:dateTo
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceApi->voiceHistoryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateFrom** | **NSNumber***| Timestamp (from) used to show records by date. | [optional] 
 **dateTo** | **NSNumber***| Timestamp (to) used to show records by date | [optional] 
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

# **voiceLangGet**
```objc
-(NSURLSessionTask*) voiceLangGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get all voice languages

Get all voice languages

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSVoiceApi*apiInstance = [[CSVoiceApi alloc] init];

// Get all voice languages
[apiInstance voiceLangGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceApi->voiceLangGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voicePricePost**
```objc
-(NSURLSessionTask*) voicePricePostWithVoiceMessages: (CSVoiceMessageCollection*) voiceMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate voice price

Calculate voice price

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSVoiceMessageCollection* voiceMessages = [[CSVoiceMessageCollection alloc] init]; // VoiceMessageCollection model

CSVoiceApi*apiInstance = [[CSVoiceApi alloc] init];

// Calculate voice price
[apiInstance voicePricePostWithVoiceMessages:voiceMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceApi->voicePricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voiceMessages** | [**CSVoiceMessageCollection***](CSVoiceMessageCollection.md)| VoiceMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voiceReceiptsGet**
```objc
-(NSURLSessionTask*) voiceReceiptsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all voice receipts

Get all voice receipts

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSVoiceApi*apiInstance = [[CSVoiceApi alloc] init];

// Get all voice receipts
[apiInstance voiceReceiptsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceApi->voiceReceiptsGet: %@", error);
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

# **voiceSendPost**
```objc
-(NSURLSessionTask*) voiceSendPostWithVoiceMessages: (CSVoiceMessageCollection*) voiceMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send voice message(s)

Send a voice call

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSVoiceMessageCollection* voiceMessages = [[CSVoiceMessageCollection alloc] init]; // VoiceMessageCollection model

CSVoiceApi*apiInstance = [[CSVoiceApi alloc] init];

// Send voice message(s)
[apiInstance voiceSendPostWithVoiceMessages:voiceMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSVoiceApi->voiceSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voiceMessages** | [**CSVoiceMessageCollection***](CSVoiceMessageCollection.md)| VoiceMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

