# SWGEmailMarketingApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**allowedEmailAddressGet**](SWGEmailMarketingApi.md#allowedemailaddressget) | **GET** /email/addresses | Get all email addresses
[**allowedEmailAddressPost**](SWGEmailMarketingApi.md#allowedemailaddresspost) | **POST** /email/addresses | Create allowed Email Address
[**cancelEmailCampaignPut**](SWGEmailMarketingApi.md#cancelemailcampaignput) | **PUT** /email-campaigns/{email_campaign_id}/cancel | Cancel email campaign
[**emailCampaignGet**](SWGEmailMarketingApi.md#emailcampaignget) | **GET** /email-campaigns/{email_campaign_id} | Get specific email campaign
[**emailCampaignHistoryExportGet**](SWGEmailMarketingApi.md#emailcampaignhistoryexportget) | **GET** /email-campaigns/{email_campaign_id}/history/export | Export specific email campaign history
[**emailCampaignHistoryGet**](SWGEmailMarketingApi.md#emailcampaignhistoryget) | **GET** /email-campaigns/{email_campaign_id}/history | Get specific email campaign history
[**emailCampaignPost**](SWGEmailMarketingApi.md#emailcampaignpost) | **POST** /email-campaigns/send | Send email campaign
[**emailCampaignPricePost**](SWGEmailMarketingApi.md#emailcampaignpricepost) | **POST** /email-campaigns/price | Calculate email campaign price
[**emailCampaignPut**](SWGEmailMarketingApi.md#emailcampaignput) | **PUT** /email-campaigns/{email_campaign_id} | Edit email campaign
[**emailCampaignsGet**](SWGEmailMarketingApi.md#emailcampaignsget) | **GET** /email-campaigns | Get all email campaigns
[**sendVerificationTokenGet**](SWGEmailMarketingApi.md#sendverificationtokenget) | **GET** /email/address-verify/{email_address_id}/send | Send verification token
[**specificAllowedEmailAddressDelete**](SWGEmailMarketingApi.md#specificallowedemailaddressdelete) | **DELETE** /email/addresses/{email_address_id} | Delete specific email address
[**specificAllowedEmailAddressGet**](SWGEmailMarketingApi.md#specificallowedemailaddressget) | **GET** /email/addresses/{email_address_id} | Get specific email address
[**verifyAllowedEmailAddressGet**](SWGEmailMarketingApi.md#verifyallowedemailaddressget) | **GET** /email/address-verify/{email_address_id}/verify/{activation_token} | Verify email address using verification token


# **allowedEmailAddressGet**
```objc
-(NSURLSessionTask*) allowedEmailAddressGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all email addresses

Get all email addresses

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Get all email addresses
[apiInstance allowedEmailAddressGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->allowedEmailAddressGet: %@", error);
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

# **allowedEmailAddressPost**
```objc
-(NSURLSessionTask*) allowedEmailAddressPostWithEmailAddress: (NSString*) emailAddress
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Create allowed Email Address

Create allowed Email Address

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* emailAddress = emailAddress_example; // Email to be allowed.

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Create allowed Email Address
[apiInstance allowedEmailAddressPostWithEmailAddress:emailAddress
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->allowedEmailAddressPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **NSString***| Email to be allowed. | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelEmailCampaignPut**
```objc
-(NSURLSessionTask*) cancelEmailCampaignPutWithEmailCampaignId: (NSNumber*) emailCampaignId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Cancel email campaign

Cancel email campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Cancel email campaign
[apiInstance cancelEmailCampaignPutWithEmailCampaignId:emailCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->cancelEmailCampaignPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaignId** | **NSNumber***| Allowed email campaign id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailCampaignGet**
```objc
-(NSURLSessionTask*) emailCampaignGetWithEmailCampaignId: (NSNumber*) emailCampaignId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific email campaign

Get specific email campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Get specific email campaign
[apiInstance emailCampaignGetWithEmailCampaignId:emailCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->emailCampaignGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaignId** | **NSNumber***| Allowed email campaign id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailCampaignHistoryExportGet**
```objc
-(NSURLSessionTask*) emailCampaignHistoryExportGetWithEmailCampaignId: (NSNumber*) emailCampaignId
    dateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Export specific email campaign history

Export specific email campaign history

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id
NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Export specific email campaign history
[apiInstance emailCampaignHistoryExportGetWithEmailCampaignId:emailCampaignId
              dateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->emailCampaignHistoryExportGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaignId** | **NSNumber***| Allowed email campaign id | 
 **dateFrom** | **NSNumber***| Start date | [optional] 
 **dateTo** | **NSNumber***| End date | [optional] 

### Return type

**NSURL***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailCampaignHistoryGet**
```objc
-(NSURLSessionTask*) emailCampaignHistoryGetWithEmailCampaignId: (NSNumber*) emailCampaignId
    dateFrom: (NSNumber*) dateFrom
    dateTo: (NSNumber*) dateTo
    page: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific email campaign history

Get specific email campaign history

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id
NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Get specific email campaign history
[apiInstance emailCampaignHistoryGetWithEmailCampaignId:emailCampaignId
              dateFrom:dateFrom
              dateTo:dateTo
              page:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->emailCampaignHistoryGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaignId** | **NSNumber***| Allowed email campaign id | 
 **dateFrom** | **NSNumber***| Start date | [optional] 
 **dateTo** | **NSNumber***| End date | [optional] 
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

# **emailCampaignPost**
```objc
-(NSURLSessionTask*) emailCampaignPostWithEmailCampaign: (SWGEmailCampaign*) emailCampaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send email campaign

Send email campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGEmailCampaign* emailCampaign = [[SWGEmailCampaign alloc] init]; // Email model

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Send email campaign
[apiInstance emailCampaignPostWithEmailCampaign:emailCampaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->emailCampaignPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaign** | [**SWGEmailCampaign***](SWGEmailCampaign.md)| Email model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailCampaignPricePost**
```objc
-(NSURLSessionTask*) emailCampaignPricePostWithEmailCampaign: (SWGEmailCampaign*) emailCampaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate email campaign price

Calculate email campaign price

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


SWGEmailCampaign* emailCampaign = [[SWGEmailCampaign alloc] init]; // Email model

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Calculate email campaign price
[apiInstance emailCampaignPricePostWithEmailCampaign:emailCampaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->emailCampaignPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaign** | [**SWGEmailCampaign***](SWGEmailCampaign.md)| Email model | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailCampaignPut**
```objc
-(NSURLSessionTask*) emailCampaignPutWithEmailCampaignId: (NSNumber*) emailCampaignId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Edit email campaign

Edit email campaign

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Edit email campaign
[apiInstance emailCampaignPutWithEmailCampaignId:emailCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->emailCampaignPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaignId** | **NSNumber***| Allowed email campaign id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailCampaignsGet**
```objc
-(NSURLSessionTask*) emailCampaignsGetWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get all email campaigns

Get all email campaigns

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Get all email campaigns
[apiInstance emailCampaignsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->emailCampaignsGet: %@", error);
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

# **sendVerificationTokenGet**
```objc
-(NSURLSessionTask*) sendVerificationTokenGetWithEmailAddressId: (NSNumber*) emailAddressId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send verification token

Send verification token

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailAddressId = @56; // Allowed email address id

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Send verification token
[apiInstance sendVerificationTokenGetWithEmailAddressId:emailAddressId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->sendVerificationTokenGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddressId** | **NSNumber***| Allowed email address id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **specificAllowedEmailAddressDelete**
```objc
-(NSURLSessionTask*) specificAllowedEmailAddressDeleteWithEmailAddressId: (NSNumber*) emailAddressId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Delete specific email address

Delete specific email address

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailAddressId = @56; // Allowed email address id

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Delete specific email address
[apiInstance specificAllowedEmailAddressDeleteWithEmailAddressId:emailAddressId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->specificAllowedEmailAddressDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddressId** | **NSNumber***| Allowed email address id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **specificAllowedEmailAddressGet**
```objc
-(NSURLSessionTask*) specificAllowedEmailAddressGetWithEmailAddressId: (NSNumber*) emailAddressId
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Get specific email address

Get specific email address

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailAddressId = @56; // Allowed email address id

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Get specific email address
[apiInstance specificAllowedEmailAddressGetWithEmailAddressId:emailAddressId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->specificAllowedEmailAddressGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddressId** | **NSNumber***| Allowed email address id | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyAllowedEmailAddressGet**
```objc
-(NSURLSessionTask*) verifyAllowedEmailAddressGetWithEmailAddressId: (NSNumber*) emailAddressId
    activationToken: (NSString*) activationToken
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Verify email address using verification token

Verify email address using verification token

### Example 
```objc
SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailAddressId = @56; // Allowed email address id
NSString* activationToken = @"activationToken_example"; // Your activation token.

SWGEmailMarketingApi*apiInstance = [[SWGEmailMarketingApi alloc] init];

// Verify email address using verification token
[apiInstance verifyAllowedEmailAddressGetWithEmailAddressId:emailAddressId
              activationToken:activationToken
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGEmailMarketingApi->verifyAllowedEmailAddressGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddressId** | **NSNumber***| Allowed email address id | 
 **activationToken** | **NSString***| Your activation token. | 

### Return type

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

