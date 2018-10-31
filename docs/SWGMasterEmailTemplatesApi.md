# SWGMasterEmailTemplatesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**masterEmailTemplateCategoriesGet**](SWGMasterEmailTemplatesApi.md#masteremailtemplatecategoriesget) | **GET** /email/master-templates-categories | Get all master email template categories
[**masterEmailTemplateCategoryGet**](SWGMasterEmailTemplatesApi.md#masteremailtemplatecategoryget) | **GET** /email/master-templates-categories/{category_id} | Get specific master email template category
[**masterEmailTemplateGet**](SWGMasterEmailTemplatesApi.md#masteremailtemplateget) | **GET** /email/master-templates/{template_id} | Get specific master email template
[**masterEmailTemplatesGet**](SWGMasterEmailTemplatesApi.md#masteremailtemplatesget) | **GET** /email/master-templates | Get all master email templates
[**masterEmailTemplatesInCategoryGet**](SWGMasterEmailTemplatesApi.md#masteremailtemplatesincategoryget) | **GET** /email/master-templates-categories/{category_id}/master-templates | Get all master email templates in a category


# **masterEmailTemplateCategoriesGet**
```objc
-(NSURLSessionTask*) masterEmailTemplateCategoriesGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all master email template categories

Get all master email template categories

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGMasterEmailTemplatesApi*apiInstance = [[SWGMasterEmailTemplatesApi alloc] init];

// Get all master email template categories
[apiInstance masterEmailTemplateCategoriesGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMasterEmailTemplatesApi->masterEmailTemplateCategoriesGet: %@", error);
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

# **masterEmailTemplateCategoryGet**
```objc
-(NSURLSessionTask*) masterEmailTemplateCategoryGetWithCategoryId: (NSNumber*) categoryId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific master email template category

Get specific master email template category

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* categoryId = @56; // Email category id

SWGMasterEmailTemplatesApi*apiInstance = [[SWGMasterEmailTemplatesApi alloc] init];

// Get specific master email template category
[apiInstance masterEmailTemplateCategoryGetWithCategoryId:categoryId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMasterEmailTemplatesApi->masterEmailTemplateCategoryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **NSNumber***| Email category id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **masterEmailTemplateGet**
```objc
-(NSURLSessionTask*) masterEmailTemplateGetWithTemplateId: (NSNumber*) templateId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific master email template

Get specific master email template

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* templateId = @56; // Email template id

SWGMasterEmailTemplatesApi*apiInstance = [[SWGMasterEmailTemplatesApi alloc] init];

// Get specific master email template
[apiInstance masterEmailTemplateGetWithTemplateId:templateId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMasterEmailTemplatesApi->masterEmailTemplateGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **NSNumber***| Email template id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **masterEmailTemplatesGet**
```objc
-(NSURLSessionTask*) masterEmailTemplatesGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all master email templates

Get all master email templates

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGMasterEmailTemplatesApi*apiInstance = [[SWGMasterEmailTemplatesApi alloc] init];

// Get all master email templates
[apiInstance masterEmailTemplatesGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMasterEmailTemplatesApi->masterEmailTemplatesGet: %@", error);
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

# **masterEmailTemplatesInCategoryGet**
```objc
-(NSURLSessionTask*) masterEmailTemplatesInCategoryGetWithCategoryId: (NSNumber*) categoryId
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all master email templates in a category

Get all master email templates in a category

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* categoryId = @56; // Email category id
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGMasterEmailTemplatesApi*apiInstance = [[SWGMasterEmailTemplatesApi alloc] init];

// Get all master email templates in a category
[apiInstance masterEmailTemplatesInCategoryGetWithCategoryId:categoryId
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGMasterEmailTemplatesApi->masterEmailTemplatesInCategoryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **NSNumber***| Email category id | 
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

