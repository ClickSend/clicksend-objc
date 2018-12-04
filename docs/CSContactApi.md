# CSContactApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listsContactsByListIdAndContactIdDelete**](CSContactApi.md#listscontactsbylistidandcontactiddelete) | **DELETE** /lists/{list_id}/contacts/{contact_id} | Delete a contact
[**listsContactsByListIdAndContactIdGet**](CSContactApi.md#listscontactsbylistidandcontactidget) | **GET** /lists/{list_id}/contacts/{contact_id} | Get a specific contact
[**listsContactsByListIdAndContactIdPut**](CSContactApi.md#listscontactsbylistidandcontactidput) | **PUT** /lists/{list_id}/contacts/{contact_id} | Update specific contact
[**listsContactsByListIdGet**](CSContactApi.md#listscontactsbylistidget) | **GET** /lists/{list_id}/contacts | Get all contacts in a list
[**listsContactsByListIdPost**](CSContactApi.md#listscontactsbylistidpost) | **POST** /lists/{list_id}/contacts | Create new contact
[**listsRemoveOptedOutContactsByListIdAndOptOutListIdPut**](CSContactApi.md#listsremoveoptedoutcontactsbylistidandoptoutlistidput) | **PUT** /lists/{list_id}/remove-opted-out-contacts/{opt_out_list_id} | Remove all opted out contacts
[**listsTransferContactPut**](CSContactApi.md#liststransfercontactput) | **PUT** /lists/{from_list_id}/contacts/{contact_id}/transfer/{to_list_id} | Transfer contact to another list


# **listsContactsByListIdAndContactIdDelete**
```objc
-(NSURLSessionTask*) listsContactsByListIdAndContactIdDeleteWithListId: (NSNumber*) listId
    contactId: (NSNumber*) contactId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete a contact

Delete a contact

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // List ID
NSNumber* contactId = @56; // Contact ID

CSContactApi*apiInstance = [[CSContactApi alloc] init];

// Delete a contact
[apiInstance listsContactsByListIdAndContactIdDeleteWithListId:listId
              contactId:contactId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactApi->listsContactsByListIdAndContactIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| List ID | 
 **contactId** | **NSNumber***| Contact ID | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsContactsByListIdAndContactIdGet**
```objc
-(NSURLSessionTask*) listsContactsByListIdAndContactIdGetWithListId: (NSNumber*) listId
    contactId: (NSNumber*) contactId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get a specific contact

Get a specific contact

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Your contact list id you want to access.
NSNumber* contactId = @56; // Your contact id you want to access.

CSContactApi*apiInstance = [[CSContactApi alloc] init];

// Get a specific contact
[apiInstance listsContactsByListIdAndContactIdGetWithListId:listId
              contactId:contactId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactApi->listsContactsByListIdAndContactIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Your contact list id you want to access. | 
 **contactId** | **NSNumber***| Your contact id you want to access. | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsContactsByListIdAndContactIdPut**
```objc
-(NSURLSessionTask*) listsContactsByListIdAndContactIdPutWithListId: (NSNumber*) listId
    contactId: (NSNumber*) contactId
    contact: (CSContact*) contact
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update specific contact

Update specific contact

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Contact list id
NSNumber* contactId = @56; // Contact ID
CSContact* contact = [[CSContact alloc] init]; // Contact model

CSContactApi*apiInstance = [[CSContactApi alloc] init];

// Update specific contact
[apiInstance listsContactsByListIdAndContactIdPutWithListId:listId
              contactId:contactId
              contact:contact
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactApi->listsContactsByListIdAndContactIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Contact list id | 
 **contactId** | **NSNumber***| Contact ID | 
 **contact** | [**CSContact***](CSContact.md)| Contact model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsContactsByListIdGet**
```objc
-(NSURLSessionTask*) listsContactsByListIdGetWithListId: (NSNumber*) listId
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all contacts in a list

Get all contacts in a list

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Contact list ID
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSContactApi*apiInstance = [[CSContactApi alloc] init];

// Get all contacts in a list
[apiInstance listsContactsByListIdGetWithListId:listId
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactApi->listsContactsByListIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Contact list ID | 
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

# **listsContactsByListIdPost**
```objc
-(NSURLSessionTask*) listsContactsByListIdPostWithContact: (CSContact*) contact
    listId: (NSNumber*) listId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create new contact

Create new contact

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSContact* contact = [[CSContact alloc] init]; // Contact model
NSNumber* listId = @56; // List id

CSContactApi*apiInstance = [[CSContactApi alloc] init];

// Create new contact
[apiInstance listsContactsByListIdPostWithContact:contact
              listId:listId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactApi->listsContactsByListIdPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact** | [**CSContact***](CSContact.md)| Contact model | 
 **listId** | **NSNumber***| List id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsRemoveOptedOutContactsByListIdAndOptOutListIdPut**
```objc
-(NSURLSessionTask*) listsRemoveOptedOutContactsByListIdAndOptOutListIdPutWithListId: (NSNumber*) listId
    optOutListId: (NSNumber*) optOutListId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Remove all opted out contacts

Remove all opted out contacts

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* listId = @56; // Your list id
NSNumber* optOutListId = @56; // Your opt out list id

CSContactApi*apiInstance = [[CSContactApi alloc] init];

// Remove all opted out contacts
[apiInstance listsRemoveOptedOutContactsByListIdAndOptOutListIdPutWithListId:listId
              optOutListId:optOutListId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactApi->listsRemoveOptedOutContactsByListIdAndOptOutListIdPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **NSNumber***| Your list id | 
 **optOutListId** | **NSNumber***| Your opt out list id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsTransferContactPut**
```objc
-(NSURLSessionTask*) listsTransferContactPutWithFromListId: (NSNumber*) fromListId
    contactId: (NSNumber*) contactId
    toListId: (NSNumber*) toListId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Transfer contact to another list

Transfer contact to another list

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* fromListId = @56; // List ID for list that contains contact.
NSNumber* contactId = @56; // Contact ID
NSNumber* toListId = @56; // List ID for list you want to transfer contact to.

CSContactApi*apiInstance = [[CSContactApi alloc] init];

// Transfer contact to another list
[apiInstance listsTransferContactPutWithFromListId:fromListId
              contactId:contactId
              toListId:toListId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSContactApi->listsTransferContactPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromListId** | **NSNumber***| List ID for list that contains contact. | 
 **contactId** | **NSNumber***| Contact ID | 
 **toListId** | **NSNumber***| List ID for list you want to transfer contact to. | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

