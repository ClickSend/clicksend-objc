# CSPostDirectMailApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postDirectMailCampaignsGet**](CSPostDirectMailApi.md#postdirectmailcampaignsget) | **GET** /post/direct-mail/campaigns | Get direct mail campaigns
[**postDirectMailCampaignsPricePost**](CSPostDirectMailApi.md#postdirectmailcampaignspricepost) | **POST** /post/direct-mail/campaigns/price | Calculate direct mail campaign price
[**postDirectMailCampaignsSendPost**](CSPostDirectMailApi.md#postdirectmailcampaignssendpost) | **POST** /post/direct-mail/campaigns/send | Send direct mail campaign
[**postDirectMailLocationsSearchByCountryGet**](CSPostDirectMailApi.md#postdirectmaillocationssearchbycountryget) | **GET** /post/direct-mail/locations/search/{country} | Search for a location


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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSPostDirectMailApi*apiInstance = [[CSPostDirectMailApi alloc] init];

// Get direct mail campaigns
[apiInstance postDirectMailCampaignsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostDirectMailApi->postDirectMailCampaignsGet: %@", error);
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
-(NSURLSessionTask*) postDirectMailCampaignsPricePostWithPostDirectMail: (CSPostDirectMail*) postDirectMail
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate direct mail campaign price

Calculate direct mail campaign price

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSPostDirectMail* postDirectMail = [[CSPostDirectMail alloc] init]; // PostDirectMail model

CSPostDirectMailApi*apiInstance = [[CSPostDirectMailApi alloc] init];

// Calculate direct mail campaign price
[apiInstance postDirectMailCampaignsPricePostWithPostDirectMail:postDirectMail
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostDirectMailApi->postDirectMailCampaignsPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postDirectMail** | [**CSPostDirectMail***](CSPostDirectMail.md)| PostDirectMail model | 

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
-(NSURLSessionTask*) postDirectMailCampaignsSendPostWithPostDirectMail: (CSPostDirectMail*) postDirectMail
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send direct mail campaign

Send direct mail campaign

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSPostDirectMail* postDirectMail = [[CSPostDirectMail alloc] init]; // PostDirectMail model

CSPostDirectMailApi*apiInstance = [[CSPostDirectMailApi alloc] init];

// Send direct mail campaign
[apiInstance postDirectMailCampaignsSendPostWithPostDirectMail:postDirectMail
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostDirectMailApi->postDirectMailCampaignsSendPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postDirectMail** | [**CSPostDirectMail***](CSPostDirectMail.md)| PostDirectMail model | 

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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* country = @"country_example"; // Country Code to search
NSString* q = @"q_example"; // Search term (e.g. post code, city name)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSPostDirectMailApi*apiInstance = [[CSPostDirectMailApi alloc] init];

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
                            NSLog(@"Error calling CSPostDirectMailApi->postDirectMailLocationsSearchByCountryGet: %@", error);
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

