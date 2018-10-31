# SWGUserEmailTemplatesApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailTemplateDelete**](SWGUserEmailTemplatesApi.md#emailtemplatedelete) | **DELETE** /email/templates/{template_id} | Delete user email template
[**emailTemplateGet**](SWGUserEmailTemplatesApi.md#emailtemplateget) | **GET** /email/templates/{template_id} | Get specific user email template
[**emailTemplatePost**](SWGUserEmailTemplatesApi.md#emailtemplatepost) | **POST** /email/templates | Create email template
[**emailTemplatePut**](SWGUserEmailTemplatesApi.md#emailtemplateput) | **POST** /email/templates/{template_id} | Update email template
[**emailTemplatesGet**](SWGUserEmailTemplatesApi.md#emailtemplatesget) | **GET** /email/templates | Get all user email templates


# **emailTemplateDelete**
```objc
-(NSURLSessionTask*) emailTemplateDeleteWithTemplateId: (NSNumber*) templateId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete user email template

Delete user email template

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* templateId = @56; // Email template id

SWGUserEmailTemplatesApi*apiInstance = [[SWGUserEmailTemplatesApi alloc] init];

// Delete user email template
[apiInstance emailTemplateDeleteWithTemplateId:templateId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserEmailTemplatesApi->emailTemplateDelete: %@", error);
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

# **emailTemplateGet**
```objc
-(NSURLSessionTask*) emailTemplateGetWithTemplateId: (NSNumber*) templateId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific user email template

Get specific user email templates

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* templateId = @56; // Email template id

SWGUserEmailTemplatesApi*apiInstance = [[SWGUserEmailTemplatesApi alloc] init];

// Get specific user email template
[apiInstance emailTemplateGetWithTemplateId:templateId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserEmailTemplatesApi->emailTemplateGet: %@", error);
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

# **emailTemplatePost**
```objc
-(NSURLSessionTask*) emailTemplatePostWithEmailTemplate: (SWGEmailTemplateNew*) emailTemplate
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create email template

Create email template

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGEmailTemplateNew* emailTemplate = [[SWGEmailTemplateNew alloc] init]; // Email template model

SWGUserEmailTemplatesApi*apiInstance = [[SWGUserEmailTemplatesApi alloc] init];

// Create email template
[apiInstance emailTemplatePostWithEmailTemplate:emailTemplate
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserEmailTemplatesApi->emailTemplatePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTemplate** | [**SWGEmailTemplateNew***](SWGEmailTemplateNew.md)| Email template model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailTemplatePut**
```objc
-(NSURLSessionTask*) emailTemplatePutWithTemplateId: (NSNumber*) templateId
    emailTemplate: (SWGEmailTemplateUpdate*) emailTemplate
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Update email template

Update email template

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* templateId = @56; // Email template id
SWGEmailTemplateUpdate* emailTemplate = [[SWGEmailTemplateUpdate alloc] init]; // Email template model

SWGUserEmailTemplatesApi*apiInstance = [[SWGUserEmailTemplatesApi alloc] init];

// Update email template
[apiInstance emailTemplatePutWithTemplateId:templateId
              emailTemplate:emailTemplate
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserEmailTemplatesApi->emailTemplatePut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **NSNumber***| Email template id | 
 **emailTemplate** | [**SWGEmailTemplateUpdate***](SWGEmailTemplateUpdate.md)| Email template model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailTemplatesGet**
```objc
-(NSURLSessionTask*) emailTemplatesGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all user email templates

Get all user email templates

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGUserEmailTemplatesApi*apiInstance = [[SWGUserEmailTemplatesApi alloc] init];

// Get all user email templates
[apiInstance emailTemplatesGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserEmailTemplatesApi->emailTemplatesGet: %@", error);
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

