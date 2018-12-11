# CSFAXApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faxHistoryGet**](CSFAXApi.md#faxhistoryget) | **GET** /fax/history | Get a list of Fax History.
[**faxPricePost**](CSFAXApi.md#faxpricepost) | **POST** /fax/price | Calculate Total Price for Fax Messages sent
[**faxReceiptsByMessageIdGet**](CSFAXApi.md#faxreceiptsbymessageidget) | **GET** /fax/receipts/{message_id} | Get a single fax receipt based on message id.
[**faxReceiptsGet**](CSFAXApi.md#faxreceiptsget) | **GET** /fax/receipts | Get all delivery receipts
[**faxReceiptsPost**](CSFAXApi.md#faxreceiptspost) | **POST** /fax/receipts | Add a delivery receipt
[**faxReceiptsReadPut**](CSFAXApi.md#faxreceiptsreadput) | **PUT** /fax/receipts-read | Mark delivery receipts as read
[**faxSendPost**](CSFAXApi.md#faxsendpost) | **POST** /fax/send | Send a fax using supplied supported file-types.


# **faxHistoryGet**
```objc
-(NSURLSessionTask*) faxHistoryGetWithDateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
    q: (NSString*) q
    order: (NSString*) order
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get a list of Fax History.

Get a list of Fax History.

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* dateFrom = @56; // Customize result by setting from date (timestsamp) Example: 1457572619. (optional)
NSNumber* dateTo = @56; // Customize result by setting to date (timestamp) Example: 1457573000. (optional)
NSString* q = @"q_example"; // Custom query Example: status:Sent,status_code:201. (optional)
NSString* order = @"order_example"; // Order result by Example: date_added:desc,list_id:desc. (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSFAXApi*apiInstance = [[CSFAXApi alloc] init];

// Get a list of Fax History.
[apiInstance faxHistoryGetWithDateFrom:dateFrom
              dateTo:dateTo
              q:q
              order:order
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXApi->faxHistoryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateFrom** | **NSNumber***| Customize result by setting from date (timestsamp) Example: 1457572619. | [optional] 
 **dateTo** | **NSNumber***| Customize result by setting to date (timestamp) Example: 1457573000. | [optional] 
 **q** | **NSString***| Custom query Example: status:Sent,status_code:201. | [optional] 
 **order** | **NSString***| Order result by Example: date_added:desc,list_id:desc. | [optional] 
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

# **faxPricePost**
```objc
-(NSURLSessionTask*) faxPricePostWithFaxMessage: (CSFaxMessageCollection*) faxMessage
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate Total Price for Fax Messages sent

Calculate Total Price for Fax Messages sent

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSFaxMessageCollection* faxMessage = [[CSFaxMessageCollection alloc] init]; // FaxMessageCollection model

CSFAXApi*apiInstance = [[CSFAXApi alloc] init];

// Calculate Total Price for Fax Messages sent
[apiInstance faxPricePostWithFaxMessage:faxMessage
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXApi->faxPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **faxMessage** | [**CSFaxMessageCollection***](CSFaxMessageCollection.md)| FaxMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faxReceiptsByMessageIdGet**
```objc
-(NSURLSessionTask*) faxReceiptsByMessageIdGetWithMessageId: (NSString*) messageId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get a single fax receipt based on message id.

Get a single fax receipt based on message id.

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* messageId = @"messageId_example"; // ID of the message receipt to retrieve

CSFAXApi*apiInstance = [[CSFAXApi alloc] init];

// Get a single fax receipt based on message id.
[apiInstance faxReceiptsByMessageIdGetWithMessageId:messageId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXApi->faxReceiptsByMessageIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **NSString***| ID of the message receipt to retrieve | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **faxSendPost**
```objc
-(NSURLSessionTask*) faxSendPostWithFaxMessage: (CSFaxMessageCollection*) faxMessage
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send a fax using supplied supported file-types.

Send a fax using supplied supported file-types.

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSFaxMessageCollection* faxMessage = [[CSFaxMessageCollection alloc] init]; // FaxMessageCollection model

CSFAXApi*apiInstance = [[CSFAXApi alloc] init];

// Send a fax using supplied supported file-types.
[apiInstance faxSendPostWithFaxMessage:faxMessage
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSFAXApi->faxSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **faxMessage** | [**CSFaxMessageCollection***](CSFaxMessageCollection.md)| FaxMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

