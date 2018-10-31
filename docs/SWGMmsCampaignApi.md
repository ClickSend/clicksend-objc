# SWGMmsCampaignApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mmsCampaignByMmsCampaignIdGet**](SWGMmsCampaignApi.md#mmscampaignbymmscampaignidget) | **GET** /mms-campaign/{mms_campaign_id} | Get specific mms campaign
[**mmsCampaignsByMmsCampaignIdPut**](SWGMmsCampaignApi.md#mmscampaignsbymmscampaignidput) | **PUT** /mms-campaigns/{mms_campaign_id} | Update mms campaign
[**mmsCampaignsCancelByMmsCampaignIdPut**](SWGMmsCampaignApi.md#mmscampaignscancelbymmscampaignidput) | **PUT** /mms-campaigns/{mms_campaign_id}/cancel | Cancel mms campaign
[**mmsCampaignsGet**](SWGMmsCampaignApi.md#mmscampaignsget) | **GET** /mms-campaigns | Get list of mms campaigns
[**mmsCampaignsPricePost**](SWGMmsCampaignApi.md#mmscampaignspricepost) | **POST** /mms-campaigns/price | Calculate price for mms campaign
[**mmsCampaignsSendPost**](SWGMmsCampaignApi.md#mmscampaignssendpost) | **POST** /mms-campaigns/send | Create mms campaign


# **mmsCampaignByMmsCampaignIdGet**
```objc
-(NSURLSessionTask*) mmsCampaignByMmsCampaignIdGetWithMmsCampaignId: (NSNumber*) mmsCampaignId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific mms campaign

Get specific mms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* mmsCampaignId = @56; // ID of MMS campaign to retrieve

SWGMmsCampaignApi*apiInstance = [[SWGMmsCampaignApi alloc] init];

// Get specific mms campaign
[apiInstance mmsCampaignByMmsCampaignIdGetWithMmsCampaignId:mmsCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMmsCampaignApi->mmsCampaignByMmsCampaignIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsCampaignId** | **NSNumber***| ID of MMS campaign to retrieve | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmsCampaignsByMmsCampaignIdPut**
```objc
-(NSURLSessionTask*) mmsCampaignsByMmsCampaignIdPutWithMmsCampaignId: (NSNumber*) mmsCampaignId
    campaign: (SWGMmsCampaign*) campaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update mms campaign

Update mms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* mmsCampaignId = @56; // ID of MMS campaign to update
SWGMmsCampaign* campaign = [[SWGMmsCampaign alloc] init]; // MmsCampaign model

SWGMmsCampaignApi*apiInstance = [[SWGMmsCampaignApi alloc] init];

// Update mms campaign
[apiInstance mmsCampaignsByMmsCampaignIdPutWithMmsCampaignId:mmsCampaignId
              campaign:campaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMmsCampaignApi->mmsCampaignsByMmsCampaignIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsCampaignId** | **NSNumber***| ID of MMS campaign to update | 
 **campaign** | [**SWGMmsCampaign***](SWGMmsCampaign.md)| MmsCampaign model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmsCampaignsCancelByMmsCampaignIdPut**
```objc
-(NSURLSessionTask*) mmsCampaignsCancelByMmsCampaignIdPutWithMmsCampaignId: (NSNumber*) mmsCampaignId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Cancel mms campaign

Cancel sms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* mmsCampaignId = @56; // ID of MMS Campaign to cancel

SWGMmsCampaignApi*apiInstance = [[SWGMmsCampaignApi alloc] init];

// Cancel mms campaign
[apiInstance mmsCampaignsCancelByMmsCampaignIdPutWithMmsCampaignId:mmsCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMmsCampaignApi->mmsCampaignsCancelByMmsCampaignIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mmsCampaignId** | **NSNumber***| ID of MMS Campaign to cancel | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmsCampaignsGet**
```objc
-(NSURLSessionTask*) mmsCampaignsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get list of mms campaigns

Get list of mms campaigns

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGMmsCampaignApi*apiInstance = [[SWGMmsCampaignApi alloc] init];

// Get list of mms campaigns
[apiInstance mmsCampaignsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMmsCampaignApi->mmsCampaignsGet: %@", error);
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

# **mmsCampaignsPricePost**
```objc
-(NSURLSessionTask*) mmsCampaignsPricePostWithCampaign: (SWGMmsCampaign*) campaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate price for mms campaign

Calculate price for sms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGMmsCampaign* campaign = [[SWGMmsCampaign alloc] init]; // MmsCampaign model

SWGMmsCampaignApi*apiInstance = [[SWGMmsCampaignApi alloc] init];

// Calculate price for mms campaign
[apiInstance mmsCampaignsPricePostWithCampaign:campaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMmsCampaignApi->mmsCampaignsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**SWGMmsCampaign***](SWGMmsCampaign.md)| MmsCampaign model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmsCampaignsSendPost**
```objc
-(NSURLSessionTask*) mmsCampaignsSendPostWithCampaign: (SWGMmsCampaign*) campaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create mms campaign

Create mms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGMmsCampaign* campaign = [[SWGMmsCampaign alloc] init]; // MmsCampaign model

SWGMmsCampaignApi*apiInstance = [[SWGMmsCampaignApi alloc] init];

// Create mms campaign
[apiInstance mmsCampaignsSendPostWithCampaign:campaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMmsCampaignApi->mmsCampaignsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**SWGMmsCampaign***](SWGMmsCampaign.md)| MmsCampaign model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

