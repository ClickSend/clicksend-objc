# SWGContactListApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listsByListIdDelete**](SWGContactListApi.md#listsbylistiddelete) | **DELETE** /lists/{list_id} | ListsByListIdDelete
[**listsByListIdGet**](SWGContactListApi.md#listsbylistidget) | **GET** /lists/{list_id} | Get specific contact list
[**listsByListIdPut**](SWGContactListApi.md#listsbylistidput) | **PUT** /lists/{list_id} | Update specific contact list
[**listsGet**](SWGContactListApi.md#listsget) | **GET** /lists | Get all contact lists
[**listsImportByListIdPost**](SWGContactListApi.md#listsimportbylistidpost) | **POST** /lists/{list_id}/import | Import contacts to list
[**listsPost**](SWGContactListApi.md#listspost) | **POST** /lists | Create new contact list
[**listsRemoveDuplicatesByListIdPut**](SWGContactListApi.md#listsremoveduplicatesbylistidput) | **PUT** /lists/{list_id}/remove-duplicates | Remove duplicate contacts


# **listsByListIdDelete**
```objc
-(NSURLSessionTask*) listsByListIdDeleteWithListId: (NSNumber*) listId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

ListsByListIdDelete

Delete a specific contact list

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // List ID

SWGContactListApi*apiInstance = [[SWGContactListApi alloc] init];

// ListsByListIdDelete
[apiInstance listsByListIdDeleteWithListId:listId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGContactListApi->listsByListIdDelete: %@", error);
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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // List ID

SWGContactListApi*apiInstance = [[SWGContactListApi alloc] init];

// Get specific contact list
[apiInstance listsByListIdGetWithListId:listId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGContactListApi->listsByListIdGet: %@", error);
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
    listName: (NSString*) listName
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update specific contact list

Update specific contact list

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Your list id
NSString* listName = listName_example; // Your new list name

SWGContactListApi*apiInstance = [[SWGContactListApi alloc] init];

// Update specific contact list
[apiInstance listsByListIdPutWithListId:listId
              listName:listName
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGContactListApi->listsByListIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Your list id | 
 **listName** | **NSString***| Your new list name | 

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
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGContactListApi*apiInstance = [[SWGContactListApi alloc] init];

// Get all contact lists
[apiInstance listsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGContactListApi->listsGet: %@", error);
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
    file: (SWGContactListImport*) file
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Import contacts to list

Import contacts to list

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Your contact list id you want to access.
SWGContactListImport* file = [[SWGContactListImport alloc] init]; // ContactListImport model

SWGContactListApi*apiInstance = [[SWGContactListApi alloc] init];

// Import contacts to list
[apiInstance listsImportByListIdPostWithListId:listId
              file:file
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGContactListApi->listsImportByListIdPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Your contact list id you want to access. | 
 **file** | [**SWGContactListImport***](SWGContactListImport.md)| ContactListImport model | 

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
-(NSURLSessionTask*) listsPostWithListName: (NSString*) listName
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new contact list

Create new contact list

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* listName = listName_example; // Your contact list name

SWGContactListApi*apiInstance = [[SWGContactListApi alloc] init];

// Create new contact list
[apiInstance listsPostWithListName:listName
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGContactListApi->listsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listName** | **NSString***| Your contact list name | 

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
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Remove duplicate contacts

Remove duplicate contacts

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Your list id

SWGContactListApi*apiInstance = [[SWGContactListApi alloc] init];

// Remove duplicate contacts
[apiInstance listsRemoveDuplicatesByListIdPutWithListId:listId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGContactListApi->listsRemoveDuplicatesByListIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Your list id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

