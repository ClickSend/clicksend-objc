# CSContactListApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listsByListIdDelete**](CSContactListApi.md#listsbylistiddelete) | **DELETE** /lists/{list_id} | ListsByListIdDelete
[**listsByListIdGet**](CSContactListApi.md#listsbylistidget) | **GET** /lists/{list_id} | Get specific contact list
[**listsByListIdPut**](CSContactListApi.md#listsbylistidput) | **PUT** /lists/{list_id} | Update specific contact list
[**listsGet**](CSContactListApi.md#listsget) | **GET** /lists | Get all contact lists
[**listsImportByListIdPost**](CSContactListApi.md#listsimportbylistidpost) | **POST** /lists/{list_id}/import | Import contacts to list
[**listsPost**](CSContactListApi.md#listspost) | **POST** /lists | Create new contact list
[**listsRemoveDuplicatesByListIdPut**](CSContactListApi.md#listsremoveduplicatesbylistidput) | **PUT** /lists/{list_id}/remove-duplicates | Remove duplicate contacts


# **listsByListIdDelete**
```objc
-(NSURLSessionTask*) listsByListIdDeleteWithListId: (NSNumber*) listId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

ListsByListIdDelete

Delete a specific contact list

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // List ID

CSContactListApi*apiInstance = [[CSContactListApi alloc] init];

// ListsByListIdDelete
[apiInstance listsByListIdDeleteWithListId:listId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactListApi->listsByListIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| List ID | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsByListIdGet**
```objc
-(NSURLSessionTask*) listsByListIdGetWithListId: (NSNumber*) listId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific contact list

Get specific contact list

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // List ID

CSContactListApi*apiInstance = [[CSContactListApi alloc] init];

// Get specific contact list
[apiInstance listsByListIdGetWithListId:listId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactListApi->listsByListIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| List ID | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsByListIdPut**
```objc
-(NSURLSessionTask*) listsByListIdPutWithListId: (NSNumber*) listId
    list: (NSArray) list
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update specific contact list

Update specific contact list

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Your list id
NSArray list = [[NSArray alloc] init]; // List model

CSContactListApi*apiInstance = [[CSContactListApi alloc] init];

// Update specific contact list
[apiInstance listsByListIdPutWithListId:listId
              list:list
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactListApi->listsByListIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Your list id | 
 **list** | [**NSArray**](NSArray.md)| List model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsGet**
```objc
-(NSURLSessionTask*) listsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all contact lists

Get all contact lists

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSContactListApi*apiInstance = [[CSContactListApi alloc] init];

// Get all contact lists
[apiInstance listsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactListApi->listsGet: %@", error);
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

# **listsImportByListIdPost**
```objc
-(NSURLSessionTask*) listsImportByListIdPostWithListId: (NSNumber*) listId
    file: (CSContactListImport*) file
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Import contacts to list

Import contacts to list

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Your contact list id you want to access.
CSContactListImport* file = [[CSContactListImport alloc] init]; // ContactListImport model

CSContactListApi*apiInstance = [[CSContactListApi alloc] init];

// Import contacts to list
[apiInstance listsImportByListIdPostWithListId:listId
              file:file
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactListApi->listsImportByListIdPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Your contact list id you want to access. | 
 **file** | [**CSContactListImport***](CSContactListImport.md)| ContactListImport model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsPost**
```objc
-(NSURLSessionTask*) listsPostWithList: (NSArray) list
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new contact list

Create new contact list

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSArray list = [[NSArray alloc] init]; // List model

CSContactListApi*apiInstance = [[CSContactListApi alloc] init];

// Create new contact list
[apiInstance listsPostWithList:list
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactListApi->listsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list** | [**NSArray**](NSArray.md)| List model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsRemoveDuplicatesByListIdPut**
```objc
-(NSURLSessionTask*) listsRemoveDuplicatesByListIdPutWithListId: (NSNumber*) listId
    fields: (CSFields*) fields
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Remove duplicate contacts

Remove duplicate contacts

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Your list id
CSFields* fields = [[CSFields alloc] init]; // Fields model

CSContactListApi*apiInstance = [[CSContactListApi alloc] init];

// Remove duplicate contacts
[apiInstance listsRemoveDuplicatesByListIdPutWithListId:listId
              fields:fields
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactListApi->listsRemoveDuplicatesByListIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Your list id | 
 **fields** | [**CSFields***](CSFields.md)| Fields model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

