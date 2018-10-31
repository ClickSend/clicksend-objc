# SWGResellerAccountApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resellerAccountsByClientUserIdGet**](SWGResellerAccountApi.md#reselleraccountsbyclientuseridget) | **GET** /reseller/accounts/{client_user_id} | Get Reseller clients Account
[**resellerAccountsByClientUserIdPut**](SWGResellerAccountApi.md#reselleraccountsbyclientuseridput) | **PUT** /reseller/accounts/{client_user_id} | Update Reseller clients Account
[**resellerAccountsGet**](SWGResellerAccountApi.md#reselleraccountsget) | **GET** /reseller/accounts | Get list of reseller accounts
[**resellerAccountsPost**](SWGResellerAccountApi.md#reselleraccountspost) | **POST** /reseller/accounts | Create reseller account


# **resellerAccountsByClientUserIdGet**
```objc
-(NSURLSessionTask*) resellerAccountsByClientUserIdGetWithClientUserId: (NSNumber*) clientUserId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get Reseller clients Account

Get Reseller clients Account

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* clientUserId = @56; // User ID of client

SWGResellerAccountApi*apiInstance = [[SWGResellerAccountApi alloc] init];

// Get Reseller clients Account
[apiInstance resellerAccountsByClientUserIdGetWithClientUserId:clientUserId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGResellerAccountApi->resellerAccountsByClientUserIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientUserId** | **NSNumber***| User ID of client | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resellerAccountsByClientUserIdPut**
```objc
-(NSURLSessionTask*) resellerAccountsByClientUserIdPutWithClientUserId: (NSNumber*) clientUserId
    resellerAccount: (SWGResellerAccount*) resellerAccount
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update Reseller clients Account

Update Reseller clients Account

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* clientUserId = @56; // User ID of client
SWGResellerAccount* resellerAccount = [[SWGResellerAccount alloc] init]; // ResellerAccount model

SWGResellerAccountApi*apiInstance = [[SWGResellerAccountApi alloc] init];

// Update Reseller clients Account
[apiInstance resellerAccountsByClientUserIdPutWithClientUserId:clientUserId
              resellerAccount:resellerAccount
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGResellerAccountApi->resellerAccountsByClientUserIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientUserId** | **NSNumber***| User ID of client | 
 **resellerAccount** | [**SWGResellerAccount***](SWGResellerAccount.md)| ResellerAccount model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resellerAccountsGet**
```objc
-(NSURLSessionTask*) resellerAccountsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get list of reseller accounts

Get list of reseller accounts

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGResellerAccountApi*apiInstance = [[SWGResellerAccountApi alloc] init];

// Get list of reseller accounts
[apiInstance resellerAccountsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGResellerAccountApi->resellerAccountsGet: %@", error);
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

# **resellerAccountsPost**
```objc
-(NSURLSessionTask*) resellerAccountsPostWithResellerAccount: (SWGResellerAccount*) resellerAccount
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create reseller account

Create reseller account

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGResellerAccount* resellerAccount = [[SWGResellerAccount alloc] init]; // ResellerAccount model

SWGResellerAccountApi*apiInstance = [[SWGResellerAccountApi alloc] init];

// Create reseller account
[apiInstance resellerAccountsPostWithResellerAccount:resellerAccount
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGResellerAccountApi->resellerAccountsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resellerAccount** | [**SWGResellerAccount***](SWGResellerAccount.md)| ResellerAccount model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

