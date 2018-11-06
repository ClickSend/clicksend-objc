# CSPostReturnAddressApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postReturnAddressesByReturnAddressIdDelete**](CSPostReturnAddressApi.md#postreturnaddressesbyreturnaddressiddelete) | **DELETE** /post/return-addresses/{return_address_id} | Delete specific post return address
[**postReturnAddressesByReturnAddressIdGet**](CSPostReturnAddressApi.md#postreturnaddressesbyreturnaddressidget) | **GET** /post/return-addresses/{return_address_id} | Get specific post return address
[**postReturnAddressesByReturnAddressIdPut**](CSPostReturnAddressApi.md#postreturnaddressesbyreturnaddressidput) | **PUT** /post/return-addresses/{return_address_id} | Update post return address
[**postReturnAddressesGet**](CSPostReturnAddressApi.md#postreturnaddressesget) | **GET** /post/return-addresses | Get list of post return addresses
[**postReturnAddressesPost**](CSPostReturnAddressApi.md#postreturnaddressespost) | **POST** /post/return-addresses | Create post return address


# **postReturnAddressesByReturnAddressIdDelete**
```objc
-(NSURLSessionTask*) postReturnAddressesByReturnAddressIdDeleteWithReturnAddressId: (NSNumber*) returnAddressId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete specific post return address

Delete specific post return address

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* returnAddressId = @56; // Return address ID

CSPostReturnAddressApi*apiInstance = [[CSPostReturnAddressApi alloc] init];

// Delete specific post return address
[apiInstance postReturnAddressesByReturnAddressIdDeleteWithReturnAddressId:returnAddressId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostReturnAddressApi->postReturnAddressesByReturnAddressIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnAddressId** | **NSNumber***| Return address ID | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postReturnAddressesByReturnAddressIdGet**
```objc
-(NSURLSessionTask*) postReturnAddressesByReturnAddressIdGetWithReturnAddressId: (NSNumber*) returnAddressId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific post return address

Get specific post return address

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* returnAddressId = @56; // Return address ID

CSPostReturnAddressApi*apiInstance = [[CSPostReturnAddressApi alloc] init];

// Get specific post return address
[apiInstance postReturnAddressesByReturnAddressIdGetWithReturnAddressId:returnAddressId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostReturnAddressApi->postReturnAddressesByReturnAddressIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnAddressId** | **NSNumber***| Return address ID | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postReturnAddressesByReturnAddressIdPut**
```objc
-(NSURLSessionTask*) postReturnAddressesByReturnAddressIdPutWithReturnAddressId: (NSNumber*) returnAddressId
    returnAddress: (CSAddress*) returnAddress
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update post return address

Update post return address

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* returnAddressId = @56; // Return address ID
CSAddress* returnAddress = [[CSAddress alloc] init]; // Address model

CSPostReturnAddressApi*apiInstance = [[CSPostReturnAddressApi alloc] init];

// Update post return address
[apiInstance postReturnAddressesByReturnAddressIdPutWithReturnAddressId:returnAddressId
              returnAddress:returnAddress
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostReturnAddressApi->postReturnAddressesByReturnAddressIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnAddressId** | **NSNumber***| Return address ID | 
 **returnAddress** | [**CSAddress***](CSAddress.md)| Address model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postReturnAddressesGet**
```objc
-(NSURLSessionTask*) postReturnAddressesGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get list of post return addresses

Get list of post return addresses

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSPostReturnAddressApi*apiInstance = [[CSPostReturnAddressApi alloc] init];

// Get list of post return addresses
[apiInstance postReturnAddressesGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostReturnAddressApi->postReturnAddressesGet: %@", error);
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

# **postReturnAddressesPost**
```objc
-(NSURLSessionTask*) postReturnAddressesPostWithReturnAddress: (CSAddress*) returnAddress
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create post return address

Create post return address

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSAddress* returnAddress = [[CSAddress alloc] init]; // Address model

CSPostReturnAddressApi*apiInstance = [[CSPostReturnAddressApi alloc] init];

// Create post return address
[apiInstance postReturnAddressesPostWithReturnAddress:returnAddress
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSPostReturnAddressApi->postReturnAddressesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnAddress** | [**CSAddress***](CSAddress.md)| Address model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

