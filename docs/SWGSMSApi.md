# SWGSMSApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsCancelAllPut**](SWGSMSApi.md#smscancelallput) | **PUT** /sms/cancel-all | Update all scheduled message as cancelled
[**smsCancelByMessageIdPut**](SWGSMSApi.md#smscancelbymessageidput) | **PUT** /sms/{message_id}/cancel | Update scheduled message as cancelled
[**smsHistoryExportGet**](SWGSMSApi.md#smshistoryexportget) | **GET** /sms/history/export | Export all sms history
[**smsHistoryGet**](SWGSMSApi.md#smshistoryget) | **GET** /sms/history | Get all sms history
[**smsInboundGet**](SWGSMSApi.md#smsinboundget) | **GET** /sms/inbound | Get all inbound sms
[**smsInboundPost**](SWGSMSApi.md#smsinboundpost) | **POST** /sms/inbound | Create inbound sms
[**smsInboundReadPut**](SWGSMSApi.md#smsinboundreadput) | **PUT** /sms/inbound-read | Mark inbound SMS as read
[**smsPricePost**](SWGSMSApi.md#smspricepost) | **POST** /sms/price | Calculate sms price
[**smsReceiptsByMessageIdGet**](SWGSMSApi.md#smsreceiptsbymessageidget) | **GET** /sms/receipts/{message_id} | Get a Specific Delivery Receipt
[**smsReceiptsGet**](SWGSMSApi.md#smsreceiptsget) | **GET** /sms/receipts | Get all delivery receipts
[**smsReceiptsPost**](SWGSMSApi.md#smsreceiptspost) | **POST** /sms/receipts | Add a delivery receipt
[**smsReceiptsReadPut**](SWGSMSApi.md#smsreceiptsreadput) | **PUT** /sms/receipts-read | Mark delivery receipts as read
[**smsSendPost**](SWGSMSApi.md#smssendpost) | **POST** /sms/send | Send sms message(s)
[**smsTemplatesByTemplateIdDelete**](SWGSMSApi.md#smstemplatesbytemplateiddelete) | **DELETE** /sms/templates/{template_id} | Delete sms template
[**smsTemplatesByTemplateIdPut**](SWGSMSApi.md#smstemplatesbytemplateidput) | **PUT** /sms/templates/{template_id} | Update sms template
[**smsTemplatesGet**](SWGSMSApi.md#smstemplatesget) | **GET** /sms/templates | Get lists of all sms templates
[**smsTemplatesPost**](SWGSMSApi.md#smstemplatespost) | **POST** /sms/templates | Create sms template


# **smsCancelAllPut**
```objc
-(NSURLSessionTask*) smsCancelAllPutWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Update all scheduled message as cancelled

Update all scheduled message as cancelled

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Update all scheduled message as cancelled
[apiInstance smsCancelAllPutWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsCancelAllPut: %@", error);
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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* messageId = @"messageId_example"; // The message ID you want to cancel

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Update scheduled message as cancelled
[apiInstance smsCancelByMessageIdPutWithMessageId:messageId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsCancelByMessageIdPut: %@", error);
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
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Export all sms history

Export all sms history

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* filename = @"filename_example"; // Filename to download history as

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Export all sms history
[apiInstance smsHistoryExportGetWithFilename:filename
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsHistoryExportGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **NSString***| Filename to download history as | 

### Return type

**NSURL***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/csv

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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

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
                            NSLog(@"Error calling SWGSMSApi->smsHistoryGet: %@", error);
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
-(NSURLSessionTask*) smsInboundGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all inbound sms

Get all inbound sms

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Get all inbound sms
[apiInstance smsInboundGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsInboundGet: %@", error);
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

# **smsInboundPost**
```objc
-(NSURLSessionTask*) smsInboundPostWithUrl: (NSString*) url
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create inbound sms

Create inbound sms

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* url = url_example; // Your url

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Create inbound sms
[apiInstance smsInboundPostWithUrl:url
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsInboundPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| Your url | 

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
-(NSURLSessionTask*) smsInboundReadPutWithDateBefore: (NSString*) dateBefore
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Mark inbound SMS as read

Mark all inbound SMS as read optionally before a certain date

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* dateBefore = dateBefore_example; // An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read. (optional)

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Mark inbound SMS as read
[apiInstance smsInboundReadPutWithDateBefore:dateBefore
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsInboundReadPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateBefore** | **NSString***| An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read. | [optional] 

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
-(NSURLSessionTask*) smsPricePostWithSmsMessages: (SWGSmsMessageCollection*) smsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate sms price

Calculate sms price

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGSmsMessageCollection* smsMessages = [[SWGSmsMessageCollection alloc] init]; // SmsMessageCollection model

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Calculate sms price
[apiInstance smsPricePostWithSmsMessages:smsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsMessages** | [**SWGSmsMessageCollection***](SWGSmsMessageCollection.md)| SmsMessageCollection model | 

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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* messageId = @"messageId_example"; // Message ID

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Get a Specific Delivery Receipt
[apiInstance smsReceiptsByMessageIdGetWithMessageId:messageId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsReceiptsByMessageIdGet: %@", error);
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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Get all delivery receipts
[apiInstance smsReceiptsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsReceiptsGet: %@", error);
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
-(NSURLSessionTask*) smsReceiptsPostWithUrl: (NSString*) url
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Add a delivery receipt

Add a delivery receipt

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* url = url_example; // Your url

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Add a delivery receipt
[apiInstance smsReceiptsPostWithUrl:url
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsReceiptsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **NSString***| Your url | 

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
-(NSURLSessionTask*) smsReceiptsReadPutWithDateBefore: (NSString*) dateBefore
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Mark delivery receipts as read

Mark delivery receipts as read

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* dateBefore = dateBefore_example; // Mark all as read before this timestamp (optional)

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Mark delivery receipts as read
[apiInstance smsReceiptsReadPutWithDateBefore:dateBefore
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsReceiptsReadPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dateBefore** | **NSString***| Mark all as read before this timestamp | [optional] 

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
-(NSURLSessionTask*) smsSendPostWithSmsMessages: (SWGSmsMessageCollection*) smsMessages
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send sms message(s)

 # Send one or more SMS messages  You can post up to 1000 messages with each API call. You can send to a mix of contacts and contact lists, as long as the total number of recipients is up to 1000.  The response contains status and details for each recipient.  *Refer to [Application Status Codes](https://dashboard.clicksend.com/#/signup/step1/) for the possible response message status strings.* 

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGSmsMessageCollection* smsMessages = [[SWGSmsMessageCollection alloc] init]; // SmsMessageCollection model

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Send sms message(s)
[apiInstance smsSendPostWithSmsMessages:smsMessages
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsMessages** | [**SWGSmsMessageCollection***](SWGSmsMessageCollection.md)| SmsMessageCollection model | 

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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* templateId = @56; // Template id

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Delete sms template
[apiInstance smsTemplatesByTemplateIdDeleteWithTemplateId:templateId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsTemplatesByTemplateIdDelete: %@", error);
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
    smsTemplate: (SWGSmsTemplate*) smsTemplate
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update sms template

Update sms template

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* templateId = @56; // Template id
SWGSmsTemplate* smsTemplate = [[SWGSmsTemplate alloc] init]; // Template item

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Update sms template
[apiInstance smsTemplatesByTemplateIdPutWithTemplateId:templateId
              smsTemplate:smsTemplate
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsTemplatesByTemplateIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **NSNumber***| Template id | 
 **smsTemplate** | [**SWGSmsTemplate***](SWGSmsTemplate.md)| Template item | 

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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Get lists of all sms templates
[apiInstance smsTemplatesGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsTemplatesGet: %@", error);
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
-(NSURLSessionTask*) smsTemplatesPostWithSmsTemplate: (SWGSmsTemplate*) smsTemplate
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create sms template

Create sms template

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGSmsTemplate* smsTemplate = [[SWGSmsTemplate alloc] init]; // SmsTemplate model

SWGSMSApi*apiInstance = [[SWGSMSApi alloc] init];

// Create sms template
[apiInstance smsTemplatesPostWithSmsTemplate:smsTemplate
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSMSApi->smsTemplatesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsTemplate** | [**SWGSmsTemplate***](SWGSmsTemplate.md)| SmsTemplate model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

