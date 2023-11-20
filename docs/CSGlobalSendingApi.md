# CSGlobalSendingApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCountriesGet**](CSGlobalSendingApi.md#listcountriesget) | **GET** /country-list | List of countries
[**userCountriesAgreePost**](CSGlobalSendingApi.md#usercountriesagreepost) | **POST** /user-countries/agree | Agree to rules and regulation
[**userCountriesGet**](CSGlobalSendingApi.md#usercountriesget) | **GET** /user-countries | Get Countries for Global Sending
[**userCountriesPost**](CSGlobalSendingApi.md#usercountriespost) | **POST** /user-countries | Select Countries for Global Sending


# **listCountriesGet**
```objc
-(NSURLSessionTask*) listCountriesGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

List of countries

List of countries with IDs that can be used in selecting countries for Global sending.

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSGlobalSendingApi*apiInstance = [[CSGlobalSendingApi alloc] init];

// List of countries
[apiInstance listCountriesGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSGlobalSendingApi->listCountriesGet: %@", error);
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

# **userCountriesAgreePost**
```objc
-(NSURLSessionTask*) userCountriesAgreePostWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Agree to rules and regulation

To agree on rules and regulations of selected countries and confirm selection.

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSGlobalSendingApi*apiInstance = [[CSGlobalSendingApi alloc] init];

// Agree to rules and regulation
[apiInstance userCountriesAgreePostWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSGlobalSendingApi->userCountriesAgreePost: %@", error);
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

# **userCountriesGet**
```objc
-(NSURLSessionTask*) userCountriesGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get Countries for Global Sending

Get the list of selected countries.

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSGlobalSendingApi*apiInstance = [[CSGlobalSendingApi alloc] init];

// Get Countries for Global Sending
[apiInstance userCountriesGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSGlobalSendingApi->userCountriesGet: %@", error);
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

# **userCountriesPost**
```objc
-(NSURLSessionTask*) userCountriesPostWithCountryListIds: (CSCountryListIds*) countryListIds
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Select Countries for Global Sending

Use this endpoint to select countries that you intend to send sms / mms to. To remove / unselect a country, just remove the country id from the array in the payload.

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSCountryListIds* countryListIds = [[CSCountryListIds alloc] init]; // Id of countr(ies) you want to select, you can get them from GET /country-list response

CSGlobalSendingApi*apiInstance = [[CSGlobalSendingApi alloc] init];

// Select Countries for Global Sending
[apiInstance userCountriesPostWithCountryListIds:countryListIds
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSGlobalSendingApi->userCountriesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryListIds** | [**CSCountryListIds***](CSCountryListIds.md)| Id of countr(ies) you want to select, you can get them from GET /country-list response | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

