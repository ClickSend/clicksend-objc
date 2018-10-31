# SWGDeliveryIssuesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deliveryIssuesGet**](SWGDeliveryIssuesApi.md#deliveryissuesget) | **GET** /delivery-issues | Get all delivery issues
[**deliveryIssuesPost**](SWGDeliveryIssuesApi.md#deliveryissuespost) | **POST** /delivery-issues | Create delivery Issue


# **deliveryIssuesGet**
```objc
-(NSURLSessionTask*) deliveryIssuesGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all delivery issues

Get all delivery issues

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGDeliveryIssuesApi*apiInstance = [[SWGDeliveryIssuesApi alloc] init];

// Get all delivery issues
[apiInstance deliveryIssuesGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDeliveryIssuesApi->deliveryIssuesGet: %@", error);
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

# **deliveryIssuesPost**
```objc
-(NSURLSessionTask*) deliveryIssuesPostWithDeliveryIssue: (SWGDeliveryIssue*) deliveryIssue
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create delivery Issue

Create delivery Issue

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGDeliveryIssue* deliveryIssue = [[SWGDeliveryIssue alloc] init]; // DeliveryIssue model

SWGDeliveryIssuesApi*apiInstance = [[SWGDeliveryIssuesApi alloc] init];

// Create delivery Issue
[apiInstance deliveryIssuesPostWithDeliveryIssue:deliveryIssue
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDeliveryIssuesApi->deliveryIssuesPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryIssue** | [**SWGDeliveryIssue***](SWGDeliveryIssue.md)| DeliveryIssue model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

