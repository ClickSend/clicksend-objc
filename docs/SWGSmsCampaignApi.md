# SWGSmsCampaignApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**smsCampaignBySmsCampaignIdGet**](SWGSmsCampaignApi.md#smscampaignbysmscampaignidget) | **GET** /sms-campaign/{sms_campaign_id} | Get specific sms campaign
[**smsCampaignsBySmsCampaignIdPut**](SWGSmsCampaignApi.md#smscampaignsbysmscampaignidput) | **PUT** /sms-campaigns/{sms_campaign_id} | Update sms campaign
[**smsCampaignsCancelBySmsCampaignIdPut**](SWGSmsCampaignApi.md#smscampaignscancelbysmscampaignidput) | **PUT** /sms-campaigns/{sms_campaign_id}/cancel | Cancel sms campaign
[**smsCampaignsGet**](SWGSmsCampaignApi.md#smscampaignsget) | **GET** /sms-campaigns | Get list of sms campaigns
[**smsCampaignsPricePost**](SWGSmsCampaignApi.md#smscampaignspricepost) | **POST** /sms-campaigns/price | Calculate price for sms campaign
[**smsCampaignsSendPost**](SWGSmsCampaignApi.md#smscampaignssendpost) | **POST** /sms-campaigns/send | Create sms campaign


# **smsCampaignBySmsCampaignIdGet**
```objc
-(NSURLSessionTask*) smsCampaignBySmsCampaignIdGetWithSmsCampaignId: (NSNumber*) smsCampaignId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific sms campaign

Get specific sms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* smsCampaignId = @56; // ID of SMS campaign to retrieve

SWGSmsCampaignApi*apiInstance = [[SWGSmsCampaignApi alloc] init];

// Get specific sms campaign
[apiInstance smsCampaignBySmsCampaignIdGetWithSmsCampaignId:smsCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsCampaignApi->smsCampaignBySmsCampaignIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsCampaignId** | **NSNumber***| ID of SMS campaign to retrieve | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsCampaignsBySmsCampaignIdPut**
```objc
-(NSURLSessionTask*) smsCampaignsBySmsCampaignIdPutWithSmsCampaignId: (NSNumber*) smsCampaignId
    campaign: (SWGSmsCampaign*) campaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update sms campaign

Update sms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* smsCampaignId = @56; // ID of SMS campaign to update
SWGSmsCampaign* campaign = [[SWGSmsCampaign alloc] init]; // SmsCampaign model

SWGSmsCampaignApi*apiInstance = [[SWGSmsCampaignApi alloc] init];

// Update sms campaign
[apiInstance smsCampaignsBySmsCampaignIdPutWithSmsCampaignId:smsCampaignId
              campaign:campaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsCampaignApi->smsCampaignsBySmsCampaignIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsCampaignId** | **NSNumber***| ID of SMS campaign to update | 
 **campaign** | [**SWGSmsCampaign***](SWGSmsCampaign.md)| SmsCampaign model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsCampaignsCancelBySmsCampaignIdPut**
```objc
-(NSURLSessionTask*) smsCampaignsCancelBySmsCampaignIdPutWithSmsCampaignId: (NSNumber*) smsCampaignId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Cancel sms campaign

Cancel sms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* smsCampaignId = @56; // ID of SMS Campaign to cancel

SWGSmsCampaignApi*apiInstance = [[SWGSmsCampaignApi alloc] init];

// Cancel sms campaign
[apiInstance smsCampaignsCancelBySmsCampaignIdPutWithSmsCampaignId:smsCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsCampaignApi->smsCampaignsCancelBySmsCampaignIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smsCampaignId** | **NSNumber***| ID of SMS Campaign to cancel | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsCampaignsGet**
```objc
-(NSURLSessionTask*) smsCampaignsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get list of sms campaigns

Get list of sms campaigns

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGSmsCampaignApi*apiInstance = [[SWGSmsCampaignApi alloc] init];

// Get list of sms campaigns
[apiInstance smsCampaignsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsCampaignApi->smsCampaignsGet: %@", error);
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

# **smsCampaignsPricePost**
```objc
-(NSURLSessionTask*) smsCampaignsPricePostWithCampaign: (SWGSmsCampaign*) campaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate price for sms campaign

Calculate price for sms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGSmsCampaign* campaign = [[SWGSmsCampaign alloc] init]; // SmsCampaign model

SWGSmsCampaignApi*apiInstance = [[SWGSmsCampaignApi alloc] init];

// Calculate price for sms campaign
[apiInstance smsCampaignsPricePostWithCampaign:campaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsCampaignApi->smsCampaignsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**SWGSmsCampaign***](SWGSmsCampaign.md)| SmsCampaign model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **smsCampaignsSendPost**
```objc
-(NSURLSessionTask*) smsCampaignsSendPostWithCampaign: (SWGSmsCampaign*) campaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create sms campaign

Create sms campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGSmsCampaign* campaign = [[SWGSmsCampaign alloc] init]; // SmsCampaign model

SWGSmsCampaignApi*apiInstance = [[SWGSmsCampaignApi alloc] init];

// Create sms campaign
[apiInstance smsCampaignsSendPostWithCampaign:campaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsCampaignApi->smsCampaignsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**SWGSmsCampaign***](SWGSmsCampaign.md)| SmsCampaign model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

