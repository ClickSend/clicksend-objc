# SWGSubaccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**subaccountsBySubaccountIdDelete**](SWGSubaccountApi.md#subaccountsbysubaccountiddelete) | **DELETE** /subaccounts/{subaccount_id} | Delete a subaccount
[**subaccountsBySubaccountIdGet**](SWGSubaccountApi.md#subaccountsbysubaccountidget) | **GET** /subaccounts/{subaccount_id} | Get specific subaccount
[**subaccountsBySubaccountIdPut**](SWGSubaccountApi.md#subaccountsbysubaccountidput) | **PUT** /subaccounts/{subaccount_id} | Update subaccount
[**subaccountsGet**](SWGSubaccountApi.md#subaccountsget) | **GET** /subaccounts | Get all subaccounts
[**subaccountsPost**](SWGSubaccountApi.md#subaccountspost) | **POST** /subaccounts | Create new subaccount
[**subaccountsRegenApiKeyBySubaccountIdPut**](SWGSubaccountApi.md#subaccountsregenapikeybysubaccountidput) | **PUT** /subaccounts/{subaccount_id}/regen-api-key | Regenerate an API Key


# **subaccountsBySubaccountIdDelete**
```objc
-(NSURLSessionTask*) subaccountsBySubaccountIdDeleteWithSubaccountId: (NSNumber*) subaccountId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete a subaccount

Delete a subaccount

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* subaccountId = @56; // ID of subaccount to delete

SWGSubaccountApi*apiInstance = [[SWGSubaccountApi alloc] init];

// Delete a subaccount
[apiInstance subaccountsBySubaccountIdDeleteWithSubaccountId:subaccountId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountApi->subaccountsBySubaccountIdDelete: %@", error);
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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* subaccountId = @56; // ID of subaccount to get

SWGSubaccountApi*apiInstance = [[SWGSubaccountApi alloc] init];

// Get specific subaccount
[apiInstance subaccountsBySubaccountIdGetWithSubaccountId:subaccountId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountApi->subaccountsBySubaccountIdGet: %@", error);
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
    subaccount: (SWGSubaccount*) subaccount
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update subaccount

Update subaccount

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* subaccountId = @56; // ID of subaccount to update
SWGSubaccount* subaccount = [[SWGSubaccount alloc] init]; // Subaccount model

SWGSubaccountApi*apiInstance = [[SWGSubaccountApi alloc] init];

// Update subaccount
[apiInstance subaccountsBySubaccountIdPutWithSubaccountId:subaccountId
              subaccount:subaccount
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountApi->subaccountsBySubaccountIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccountId** | **NSNumber***| ID of subaccount to update | 
 **subaccount** | [**SWGSubaccount***](SWGSubaccount.md)| Subaccount model | 

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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGSubaccountApi*apiInstance = [[SWGSubaccountApi alloc] init];

// Get all subaccounts
[apiInstance subaccountsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountApi->subaccountsGet: %@", error);
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
-(NSURLSessionTask*) subaccountsPostWithSubaccount: (SWGSubaccount*) subaccount
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new subaccount

Create new subaccount

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGSubaccount* subaccount = [[SWGSubaccount alloc] init]; // Subaccount model

SWGSubaccountApi*apiInstance = [[SWGSubaccountApi alloc] init];

// Create new subaccount
[apiInstance subaccountsPostWithSubaccount:subaccount
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountApi->subaccountsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subaccount** | [**SWGSubaccount***](SWGSubaccount.md)| Subaccount model | 

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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* subaccountId = @56; // ID of subaccount to regenerate API key for

SWGSubaccountApi*apiInstance = [[SWGSubaccountApi alloc] init];

// Regenerate an API Key
[apiInstance subaccountsRegenApiKeyBySubaccountIdPutWithSubaccountId:subaccountId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSubaccountApi->subaccountsRegenApiKeyBySubaccountIdPut: %@", error);
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

