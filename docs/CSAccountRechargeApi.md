# CSAccountRechargeApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rechargeCreditCardGet**](CSAccountRechargeApi.md#rechargecreditcardget) | **GET** /recharge/credit-card | Get Credit Card info
[**rechargeCreditCardPut**](CSAccountRechargeApi.md#rechargecreditcardput) | **PUT** /recharge/credit-card | Update credit card info
[**rechargePackagesGet**](CSAccountRechargeApi.md#rechargepackagesget) | **GET** /recharge/packages | Get list of all packages
[**rechargePurchaseByPackageIdPut**](CSAccountRechargeApi.md#rechargepurchasebypackageidput) | **PUT** /recharge/purchase/{package_id} | Purchase a package
[**rechargeTransactionsByTransactionIdGet**](CSAccountRechargeApi.md#rechargetransactionsbytransactionidget) | **GET** /recharge/transactions/{transaction_id} | Get specific Transaction
[**rechargeTransactionsGet**](CSAccountRechargeApi.md#rechargetransactionsget) | **GET** /recharge/transactions | Purchase a package


# **rechargeCreditCardGet**
```objc
-(NSURLSessionTask*) rechargeCreditCardGetWithCompletionHandler: 
        (void (^)(NSString* output, NSError* error)) handler;
```

Get Credit Card info

Get Credit Card info

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSAccountRechargeApi*apiInstance = [[CSAccountRechargeApi alloc] init];

// Get Credit Card info
[apiInstance rechargeCreditCardGetWithCompletionHandler: 
          ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountRechargeApi->rechargeCreditCardGet: %@", error);
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

# **rechargeCreditCardPut**
```objc
-(NSURLSessionTask*) rechargeCreditCardPutWithCreditCard: (CSCreditCard*) creditCard
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update credit card info

Update credit card info

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSCreditCard* creditCard = [[CSCreditCard alloc] init]; // CreditCard model

CSAccountRechargeApi*apiInstance = [[CSAccountRechargeApi alloc] init];

// Update credit card info
[apiInstance rechargeCreditCardPutWithCreditCard:creditCard
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountRechargeApi->rechargeCreditCardPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditCard** | [**CSCreditCard***](CSCreditCard.md)| CreditCard model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rechargePackagesGet**
```objc
-(NSURLSessionTask*) rechargePackagesGetWithCountry: (NSString*) country
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get list of all packages

Get list of all packages

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* country = @"country_example"; // Country code (optional)

CSAccountRechargeApi*apiInstance = [[CSAccountRechargeApi alloc] init];

// Get list of all packages
[apiInstance rechargePackagesGetWithCountry:country
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountRechargeApi->rechargePackagesGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **NSString***| Country code | [optional] 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rechargePurchaseByPackageIdPut**
```objc
-(NSURLSessionTask*) rechargePurchaseByPackageIdPutWithPackageId: (NSNumber*) packageId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Purchase a package

Purchase a package

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* packageId = @56; // ID of package to purchase

CSAccountRechargeApi*apiInstance = [[CSAccountRechargeApi alloc] init];

// Purchase a package
[apiInstance rechargePurchaseByPackageIdPutWithPackageId:packageId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountRechargeApi->rechargePurchaseByPackageIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **NSNumber***| ID of package to purchase | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rechargeTransactionsByTransactionIdGet**
```objc
-(NSURLSessionTask*) rechargeTransactionsByTransactionIdGetWithTransactionId: (NSString*) transactionId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific Transaction

Get specific Transaction

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* transactionId = @"transactionId_example"; // ID of transaction to retrieve

CSAccountRechargeApi*apiInstance = [[CSAccountRechargeApi alloc] init];

// Get specific Transaction
[apiInstance rechargeTransactionsByTransactionIdGetWithTransactionId:transactionId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountRechargeApi->rechargeTransactionsByTransactionIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionId** | **NSString***| ID of transaction to retrieve | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rechargeTransactionsGet**
```objc
-(NSURLSessionTask*) rechargeTransactionsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Purchase a package

Get all transactions

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSAccountRechargeApi*apiInstance = [[CSAccountRechargeApi alloc] init];

// Purchase a package
[apiInstance rechargeTransactionsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSAccountRechargeApi->rechargeTransactionsGet: %@", error);
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

