# SWGPostDirectMailApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postDirectMailCampaignsGet**](SWGPostDirectMailApi.md#postdirectmailcampaignsget) | **GET** /post/direct-mail/campaigns | Get direct mail campaigns
[**postDirectMailCampaignsPricePost**](SWGPostDirectMailApi.md#postdirectmailcampaignspricepost) | **POST** /post/direct-mail/campaigns/price | Calculate direct mail campaign price
[**postDirectMailCampaignsSendPost**](SWGPostDirectMailApi.md#postdirectmailcampaignssendpost) | **POST** /post/direct-mail/campaigns/send | Send direct mail campaign
[**postDirectMailLocationsSearchByCountryGet**](SWGPostDirectMailApi.md#postdirectmaillocationssearchbycountryget) | **GET** /post/direct-mail/locations/search/{country} | Search for a location


# **postDirectMailCampaignsGet**
```objc
-(NSURLSessionTask*) postDirectMailCampaignsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get direct mail campaigns

Get direct mail campaigns

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGPostDirectMailApi*apiInstance = [[SWGPostDirectMailApi alloc] init];

// Get direct mail campaigns
[apiInstance postDirectMailCampaignsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPostDirectMailApi->postDirectMailCampaignsGet: %@", error);
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

# **postDirectMailCampaignsPricePost**
```objc
-(NSURLSessionTask*) postDirectMailCampaignsPricePostWithPostDirectMail: (SWGPostDirectMail*) postDirectMail
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate direct mail campaign price

Calculate direct mail campaign price

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGPostDirectMail* postDirectMail = [[SWGPostDirectMail alloc] init]; // PostDirectMail model

SWGPostDirectMailApi*apiInstance = [[SWGPostDirectMailApi alloc] init];

// Calculate direct mail campaign price
[apiInstance postDirectMailCampaignsPricePostWithPostDirectMail:postDirectMail
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPostDirectMailApi->postDirectMailCampaignsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postDirectMail** | [**SWGPostDirectMail***](SWGPostDirectMail.md)| PostDirectMail model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDirectMailCampaignsSendPost**
```objc
-(NSURLSessionTask*) postDirectMailCampaignsSendPostWithPostDirectMail: (SWGPostDirectMail*) postDirectMail
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send direct mail campaign

Send direct mail campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGPostDirectMail* postDirectMail = [[SWGPostDirectMail alloc] init]; // PostDirectMail model

SWGPostDirectMailApi*apiInstance = [[SWGPostDirectMailApi alloc] init];

// Send direct mail campaign
[apiInstance postDirectMailCampaignsSendPostWithPostDirectMail:postDirectMail
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPostDirectMailApi->postDirectMailCampaignsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postDirectMail** | [**SWGPostDirectMail***](SWGPostDirectMail.md)| PostDirectMail model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDirectMailLocationsSearchByCountryGet**
```objc
-(NSURLSessionTask*) postDirectMailLocationsSearchByCountryGetWithCountry: (NSString*) country
    q: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Search for a location

Search for a location

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* country = @"country_example"; // Country Code to search
NSString* q = @"q_example"; // Search term (e.g. post code, city name)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGPostDirectMailApi*apiInstance = [[SWGPostDirectMailApi alloc] init];

// Search for a location
[apiInstance postDirectMailLocationsSearchByCountryGetWithCountry:country
              q:q
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPostDirectMailApi->postDirectMailLocationsSearchByCountryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **NSString***| Country Code to search | 
 **q** | **NSString***| Search term (e.g. post code, city name) | 
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

