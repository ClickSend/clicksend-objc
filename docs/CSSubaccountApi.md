# CSSubaccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subaccountsBySubaccountIdDelete**](CSSubaccountApi.md#subaccountsbysubaccountiddelete) | **DELETE** /subaccounts/{subaccount_id} | Delete a subaccount
[**subaccountsBySubaccountIdGet**](CSSubaccountApi.md#subaccountsbysubaccountidget) | **GET** /subaccounts/{subaccount_id} | Get specific subaccount
[**subaccountsBySubaccountIdPut**](CSSubaccountApi.md#subaccountsbysubaccountidput) | **PUT** /subaccounts/{subaccount_id} | Update subaccount
[**subaccountsGet**](CSSubaccountApi.md#subaccountsget) | **GET** /subaccounts | Get all subaccounts
[**subaccountsPost**](CSSubaccountApi.md#subaccountspost) | **POST** /subaccounts | Create new subaccount
[**subaccountsRegenApiKeyBySubaccountIdPut**](CSSubaccountApi.md#subaccountsregenapikeybysubaccountidput) | **PUT** /subaccounts/{subaccount_id}/regen-api-key | Regenerate an API Key


# **subaccountsBySubaccountIdDelete**
```objc
-(NSURLSessionTask*) subaccountsBySubaccountIdDeleteWithSubaccountId: (NSNumber*) subaccountId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete a subaccount

Delete a subaccount

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* subaccountId = @56; // ID of subaccount to delete

CSSubaccountApi*apiInstance = [[CSSubaccountApi alloc] init];

// Delete a subaccount
[apiInstance subaccountsBySubaccountIdDeleteWithSubaccountId:subaccountId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSubaccountApi->subaccountsBySubaccountIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccountId** | **NSNumber***| ID of subaccount to delete | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subaccountsBySubaccountIdGet**
```objc
-(NSURLSessionTask*) subaccountsBySubaccountIdGetWithSubaccountId: (NSNumber*) subaccountId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific subaccount

Get specific subaccount

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* subaccountId = @56; // ID of subaccount to get

CSSubaccountApi*apiInstance = [[CSSubaccountApi alloc] init];

// Get specific subaccount
[apiInstance subaccountsBySubaccountIdGetWithSubaccountId:subaccountId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSubaccountApi->subaccountsBySubaccountIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccountId** | **NSNumber***| ID of subaccount to get | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subaccountsBySubaccountIdPut**
```objc
-(NSURLSessionTask*) subaccountsBySubaccountIdPutWithSubaccountId: (NSNumber*) subaccountId
    subaccount: (CSSubaccount*) subaccount
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update subaccount

Update subaccount

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* subaccountId = @56; // ID of subaccount to update
CSSubaccount* subaccount = [[CSSubaccount alloc] init]; // Subaccount model

CSSubaccountApi*apiInstance = [[CSSubaccountApi alloc] init];

// Update subaccount
[apiInstance subaccountsBySubaccountIdPutWithSubaccountId:subaccountId
              subaccount:subaccount
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSubaccountApi->subaccountsBySubaccountIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccountId** | **NSNumber***| ID of subaccount to update | 
 **subaccount** | [**CSSubaccount***](CSSubaccount.md)| Subaccount model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subaccountsGet**
```objc
-(NSURLSessionTask*) subaccountsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all subaccounts

Get all subaccounts

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSSubaccountApi*apiInstance = [[CSSubaccountApi alloc] init];

// Get all subaccounts
[apiInstance subaccountsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSubaccountApi->subaccountsGet: %@", error);
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

# **subaccountsPost**
```objc
-(NSURLSessionTask*) subaccountsPostWithSubaccount: (CSSubaccount*) subaccount
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new subaccount

Create new subaccount

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSSubaccount* subaccount = [[CSSubaccount alloc] init]; // Subaccount model

CSSubaccountApi*apiInstance = [[CSSubaccountApi alloc] init];

// Create new subaccount
[apiInstance subaccountsPostWithSubaccount:subaccount
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSubaccountApi->subaccountsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount** | [**CSSubaccount***](CSSubaccount.md)| Subaccount model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subaccountsRegenApiKeyBySubaccountIdPut**
```objc
-(NSURLSessionTask*) subaccountsRegenApiKeyBySubaccountIdPutWithSubaccountId: (NSNumber*) subaccountId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Regenerate an API Key

Regenerate an API Key

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* subaccountId = @56; // ID of subaccount to regenerate API key for

CSSubaccountApi*apiInstance = [[CSSubaccountApi alloc] init];

// Regenerate an API Key
[apiInstance subaccountsRegenApiKeyBySubaccountIdPutWithSubaccountId:subaccountId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSSubaccountApi->subaccountsRegenApiKeyBySubaccountIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccountId** | **NSNumber***| ID of subaccount to regenerate API key for | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

