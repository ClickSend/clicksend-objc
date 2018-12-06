# CSSMSApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsCancelAllPut**](CSSMSApi.md#smscancelallput) | **PUT** /sms/cancel-all | Update all scheduled message as cancelled
[**smsCancelByMessageIdPut**](CSSMSApi.md#smscancelbymessageidput) | **PUT** /sms/{message_id}/cancel | Update scheduled message as cancelled
[**smsHistoryExportGet**](CSSMSApi.md#smshistoryexportget) | **GET** /sms/history/export | Export all sms history
[**smsHistoryGet**](CSSMSApi.md#smshistoryget) | **GET** /sms/history | Get all sms history
[**smsInboundGet**](CSSMSApi.md#smsinboundget) | **GET** /sms/inbound | Get all inbound sms
[**smsInboundPost**](CSSMSApi.md#smsinboundpost) | **POST** /sms/inbound | Create inbound sms
[**smsInboundReadByMessageIdPut**](CSSMSApi.md#smsinboundreadbymessageidput) | **PUT** /sms/inbound-read/{message_id} | Mark inbound SMS as read
[**smsInboundReadPut**](CSSMSApi.md#smsinboundreadput) | **PUT** /sms/inbound-read | Mark inbound SMS as read
[**smsPricePost**](CSSMSApi.md#smspricepost) | **POST** /sms/price | Calculate sms price
[**smsReceiptsByMessageIdGet**](CSSMSApi.md#smsreceiptsbymessageidget) | **GET** /sms/receipts/{message_id} | Get a Specific Delivery Receipt
[**smsReceiptsGet**](CSSMSApi.md#smsreceiptsget) | **GET** /sms/receipts | Get all delivery receipts
[**smsReceiptsPost**](CSSMSApi.md#smsreceiptspost) | **POST** /sms/receipts | Add a delivery receipt
[**smsReceiptsReadPut**](CSSMSApi.md#smsreceiptsreadput) | **PUT** /sms/receipts-read | Mark delivery receipts as read
[**smsSendPost**](CSSMSApi.md#smssendpost) | **POST** /sms/send | Send sms message(s)
[**smsTemplatesByTemplateIdDelete**](CSSMSApi.md#smstemplatesbytemplateiddelete) | **DELETE** /sms/templates/{template_id} | Delete sms template
[**smsTemplatesByTemplateIdPut**](CSSMSApi.md#smstemplatesbytemplateidput) | **PUT** /sms/templates/{template_id} | Update sms template
[**smsTemplatesGet**](CSSMSApi.md#smstemplatesget) | **GET** /sms/templates | Get lists of all sms templates
[**smsTemplatesPost**](CSSMSApi.md#smstemplatespost) | **POST** /sms/templates | Create sms template


# **smsCancelAllPut**
```objc
-(NSURLSessionTask*) smsCancelAllPutWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Update all scheduled message as cancelled

Update all scheduled message as cancelled

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Update all scheduled message as cancelled
[apiInstance smsCancelAllPutWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsCancelAllPut: %@", error);
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

# **smsCancelByMessageIdPut**
```objc
-(NSURLSessionTask*) smsCancelByMessageIdPutWithMessageId: (NSString*) messageId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update scheduled message as cancelled

Update scheduled message as cancelled

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* messageId = @"messageId_example"; // The message ID you want to cancel

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Update scheduled message as cancelled
[apiInstance smsCancelByMessageIdPutWithMessageId:messageId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsCancelByMessageIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **NSString***| The message ID you want to cancel | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsHistoryExportGet**
```objc
-(NSURLSessionTask*) smsHistoryExportGetWithFilename: (NSString*) filename
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Export all sms history

Export all sms history

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* filename = @"filename_example"; // Filename to download history as

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Export all sms history
[apiInstance smsHistoryExportGetWithFilename:filename
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsHistoryExportGet: %@", error);
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

# **smsHistoryGet**
```objc
-(NSURLSessionTask*) smsHistoryGetWithDateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all sms history

Get all sms history

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

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Get all sms history
[apiInstance smsHistoryGetWithDateFrom:dateFrom
              dateTo:dateTo
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsHistoryGet: %@", error);
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

# **smsInboundGet**
```objc
-(NSURLSessionTask*) smsInboundGetWithQ: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all inbound sms

Get all inbound sms

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* q = @"q_example"; // Your keyword or query. (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Get all inbound sms
[apiInstance smsInboundGetWithQ:q
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsInboundGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Your keyword or query. | [optional] 
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

# **smsInboundPost**
```objc
-(NSURLSessionTask*) smsInboundPostWithUrl: (CSUrl*) url
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create inbound sms

Create inbound sms

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSUrl* url = [[CSUrl alloc] init]; // Url model

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Create inbound sms
[apiInstance smsInboundPostWithUrl:url
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsInboundPost: %@", error);
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

# **smsInboundReadByMessageIdPut**
```objc
-(NSURLSessionTask*) smsInboundReadByMessageIdPutWithMessageId: (NSString*) messageId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Mark inbound SMS as read

Mark specific inbound SMS as read

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* messageId = @"messageId_example"; // Message ID

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Mark inbound SMS as read
[apiInstance smsInboundReadByMessageIdPutWithMessageId:messageId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsInboundReadByMessageIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **NSString***| Message ID | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsInboundReadPut**
```objc
-(NSURLSessionTask*) smsInboundReadPutWithDateBefore: (CSDateBefore*) dateBefore
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Mark inbound SMS as read

Mark all inbound SMS as read optionally before a certain date

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSDateBefore* dateBefore = [[CSDateBefore alloc] init]; // DateBefore model (optional)

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Mark inbound SMS as read
[apiInstance smsInboundReadPutWithDateBefore:dateBefore
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsInboundReadPut: %@", error);
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

# **smsPricePost**
```objc
-(NSURLSessionTask*) smsPricePostWithSmsMessages: (CSSmsMessageCollection*) smsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate sms price

Calculate sms price

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSSmsMessageCollection* smsMessages = [[CSSmsMessageCollection alloc] init]; // SmsMessageCollection model

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Calculate sms price
[apiInstance smsPricePostWithSmsMessages:smsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsMessages** | [**CSSmsMessageCollection***](CSSmsMessageCollection.md)| SmsMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsReceiptsByMessageIdGet**
```objc
-(NSURLSessionTask*) smsReceiptsByMessageIdGetWithMessageId: (NSString*) messageId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get a Specific Delivery Receipt

Get a Specific Delivery Receipt

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* messageId = @"messageId_example"; // Message ID

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Get a Specific Delivery Receipt
[apiInstance smsReceiptsByMessageIdGetWithMessageId:messageId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsReceiptsByMessageIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **NSString***| Message ID | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsReceiptsGet**
```objc
-(NSURLSessionTask*) smsReceiptsGetWithPage: (NSNumber*) page
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

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Get all delivery receipts
[apiInstance smsReceiptsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsReceiptsGet: %@", error);
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

# **smsReceiptsPost**
```objc
-(NSURLSessionTask*) smsReceiptsPostWithUrl: (CSUrl*) url
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

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Add a delivery receipt
[apiInstance smsReceiptsPostWithUrl:url
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsReceiptsPost: %@", error);
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

# **smsReceiptsReadPut**
```objc
-(NSURLSessionTask*) smsReceiptsReadPutWithDateBefore: (CSDateBefore*) dateBefore
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

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Mark delivery receipts as read
[apiInstance smsReceiptsReadPutWithDateBefore:dateBefore
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsReceiptsReadPut: %@", error);
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

# **smsSendPost**
```objc
-(NSURLSessionTask*) smsSendPostWithSmsMessages: (CSSmsMessageCollection*) smsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send sms message(s)

 # Send one or more SMS messages  You can post up to 1000 messages with each API call. You can send to a mix of contacts and contact lists, as long as the total number of recipients is up to 1000.  The response contains status and details for each recipient.  *Refer to [Application Status Codes](https://dashboard.clicksend.com/#/signup/step1/) for the possible response message status strings.* 

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSSmsMessageCollection* smsMessages = [[CSSmsMessageCollection alloc] init]; // SmsMessageCollection model

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Send sms message(s)
[apiInstance smsSendPostWithSmsMessages:smsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsMessages** | [**CSSmsMessageCollection***](CSSmsMessageCollection.md)| SmsMessageCollection model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsTemplatesByTemplateIdDelete**
```objc
-(NSURLSessionTask*) smsTemplatesByTemplateIdDeleteWithTemplateId: (NSNumber*) templateId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete sms template

Delete sms template

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* templateId = @56; // Template id

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Delete sms template
[apiInstance smsTemplatesByTemplateIdDeleteWithTemplateId:templateId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsTemplatesByTemplateIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **NSNumber***| Template id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsTemplatesByTemplateIdPut**
```objc
-(NSURLSessionTask*) smsTemplatesByTemplateIdPutWithTemplateId: (NSNumber*) templateId
    smsTemplate: (CSSmsTemplate*) smsTemplate
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update sms template

Update sms template

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* templateId = @56; // Template id
CSSmsTemplate* smsTemplate = [[CSSmsTemplate alloc] init]; // Template item

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Update sms template
[apiInstance smsTemplatesByTemplateIdPutWithTemplateId:templateId
              smsTemplate:smsTemplate
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsTemplatesByTemplateIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **NSNumber***| Template id | 
 **smsTemplate** | [**CSSmsTemplate***](CSSmsTemplate.md)| Template item | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsTemplatesGet**
```objc
-(NSURLSessionTask*) smsTemplatesGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get lists of all sms templates

Get lists of all sms templates

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Get lists of all sms templates
[apiInstance smsTemplatesGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsTemplatesGet: %@", error);
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

# **smsTemplatesPost**
```objc
-(NSURLSessionTask*) smsTemplatesPostWithSmsTemplate: (CSSmsTemplate*) smsTemplate
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create sms template

Create sms template

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSSmsTemplate* smsTemplate = [[CSSmsTemplate alloc] init]; // SmsTemplate model

CSSMSApi*apiInstance = [[CSSMSApi alloc] init];

// Create sms template
[apiInstance smsTemplatesPostWithSmsTemplate:smsTemplate
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSMSApi->smsTemplatesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsTemplate** | [**CSSmsTemplate***](CSSmsTemplate.md)| SmsTemplate model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

