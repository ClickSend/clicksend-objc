# SWGNumberApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**numbersBuyByDedicatedNumberPost**](SWGNumberApi.md#numbersbuybydedicatednumberpost) | **POST** /numbers/buy/{dedicated_number} | Buy dedicated number
[**numbersGet**](SWGNumberApi.md#numbersget) | **GET** /numbers | Get all availible dedicated numbers
[**numbersSearchByCountryGet**](SWGNumberApi.md#numberssearchbycountryget) | **GET** /numbers/search/{country} | Get all dedicated numbers by country


# **numbersBuyByDedicatedNumberPost**
```objc
-(NSURLSessionTask*) numbersBuyByDedicatedNumberPostWithDedicatedNumber: (NSString*) dedicatedNumber
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Buy dedicated number

Buy dedicated number

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* dedicatedNumber = @"dedicatedNumber_example"; // Phone number to purchase

SWGNumberApi*apiInstance = [[SWGNumberApi alloc] init];

// Buy dedicated number
[apiInstance numbersBuyByDedicatedNumberPostWithDedicatedNumber:dedicatedNumber
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNumberApi->numbersBuyByDedicatedNumberPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dedicatedNumber** | **NSString***| Phone number to purchase | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **numbersGet**
```objc
-(NSURLSessionTask*) numbersGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all availible dedicated numbers

Get all availible dedicated numbers

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGNumberApi*apiInstance = [[SWGNumberApi alloc] init];

// Get all availible dedicated numbers
[apiInstance numbersGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNumberApi->numbersGet: %@", error);
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

# **numbersSearchByCountryGet**
```objc
-(NSURLSessionTask*) numbersSearchByCountryGetWithCountry: (NSString*) country
    search: (NSString*) search
    searchType: (NSNumber*) searchType
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all dedicated numbers by country

Get all dedicated numbers by country

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* country = @"country_example"; // Country code to search
NSString* search = @"search_example"; // Your search pattern or query. (optional)
NSNumber* searchType = @56; // Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with. (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGNumberApi*apiInstance = [[SWGNumberApi alloc] init];

// Get all dedicated numbers by country
[apiInstance numbersSearchByCountryGetWithCountry:country
              search:search
              searchType:searchType
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNumberApi->numbersSearchByCountryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **NSString***| Country code to search | 
 **search** | **NSString***| Your search pattern or query. | [optional] 
 **searchType** | **NSNumber***| Your strategy for searching, 0 &#x3D; starts with, 1 &#x3D; anywhere, 2 &#x3D; ends with. | [optional] 
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

