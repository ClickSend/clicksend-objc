# CSEmailMarketingApi

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**allowedEmailAddressGet**](CSEmailMarketingApi.md#allowedemailaddressget) | **GET** /email/addresses | Get all email addresses
[**allowedEmailAddressPost**](CSEmailMarketingApi.md#allowedemailaddresspost) | **POST** /email/addresses | Create allowed Email Address
[**cancelEmailCampaignPut**](CSEmailMarketingApi.md#cancelemailcampaignput) | **PUT** /email-campaigns/{email_campaign_id}/cancel | Cancel email campaign
[**emailCampaignGet**](CSEmailMarketingApi.md#emailcampaignget) | **GET** /email-campaigns/{email_campaign_id} | Get specific email campaign
[**emailCampaignHistoryExportGet**](CSEmailMarketingApi.md#emailcampaignhistoryexportget) | **GET** /email-campaigns/{email_campaign_id}/history/export | Export specific email campaign history
[**emailCampaignHistoryGet**](CSEmailMarketingApi.md#emailcampaignhistoryget) | **GET** /email-campaigns/{email_campaign_id}/history | Get specific email campaign history
[**emailCampaignPost**](CSEmailMarketingApi.md#emailcampaignpost) | **POST** /email-campaigns/send | Send email campaign
[**emailCampaignPricePost**](CSEmailMarketingApi.md#emailcampaignpricepost) | **POST** /email-campaigns/price | Calculate email campaign price
[**emailCampaignPut**](CSEmailMarketingApi.md#emailcampaignput) | **PUT** /email-campaigns/{email_campaign_id} | Edit email campaign
[**emailCampaignsGet**](CSEmailMarketingApi.md#emailcampaignsget) | **GET** /email-campaigns | Get all email campaigns
[**sendVerificationTokenGet**](CSEmailMarketingApi.md#sendverificationtokenget) | **PUT** /email/address-verify/{email_address_id}/send | Send verification token
[**specificAllowedEmailAddressDelete**](CSEmailMarketingApi.md#specificallowedemailaddressdelete) | **DELETE** /email/addresses/{email_address_id} | Delete specific email address
[**specificAllowedEmailAddressGet**](CSEmailMarketingApi.md#specificallowedemailaddressget) | **GET** /email/addresses/{email_address_id} | Get specific email address
[**verifyAllowedEmailAddressGet**](CSEmailMarketingApi.md#verifyallowedemailaddressget) | **PUT** /email/address-verify/{email_address_id}/verify/{activation_token} | Verify email address using verification token


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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Get all email addresses
[apiInstance allowedEmailAddressGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->allowedEmailAddressGet: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* emailAddress = emailAddress_example; // Email to be allowed.

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Create allowed Email Address
[apiInstance allowedEmailAddressPostWithEmailAddress:emailAddress
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->allowedEmailAddressPost: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Cancel email campaign
[apiInstance cancelEmailCampaignPutWithEmailCampaignId:emailCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->cancelEmailCampaignPut: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Get specific email campaign
[apiInstance emailCampaignGetWithEmailCampaignId:emailCampaignId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->emailCampaignGet: %@", error);
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
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Export specific email campaign history

Export specific email campaign history

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id
NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Export specific email campaign history
[apiInstance emailCampaignHistoryExportGetWithEmailCampaignId:emailCampaignId
              dateFrom:dateFrom
              dateTo:dateTo
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->emailCampaignHistoryExportGet: %@", error);
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

**NSString***

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id
NSNumber* dateFrom = @56; // Start date (optional)
NSNumber* dateTo = @56; // End date (optional)
NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

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
                            NSLog(@"Error calling CSEmailMarketingApi->emailCampaignHistoryGet: %@", error);
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
-(NSURLSessionTask*) emailCampaignPostWithEmailCampaign: (CSEmailCampaign*) emailCampaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Send email campaign

Send email campaign

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSEmailCampaign* emailCampaign = [[CSEmailCampaign alloc] init]; // Email model

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Send email campaign
[apiInstance emailCampaignPostWithEmailCampaign:emailCampaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->emailCampaignPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaign** | [**CSEmailCampaign***](CSEmailCampaign.md)| Email model | 

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
-(NSURLSessionTask*) emailCampaignPricePostWithEmailCampaign: (CSEmailCampaign*) emailCampaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Calculate email campaign price

Calculate email campaign price

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


CSEmailCampaign* emailCampaign = [[CSEmailCampaign alloc] init]; // Email model

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Calculate email campaign price
[apiInstance emailCampaignPricePostWithEmailCampaign:emailCampaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->emailCampaignPricePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaign** | [**CSEmailCampaign***](CSEmailCampaign.md)| Email model | 

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
    emailCampaign: (CSEmailCampaign*) emailCampaign
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Edit email campaign

Edit email campaign

### Example 
```objc
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailCampaignId = @56; // Allowed email campaign id
CSEmailCampaign* emailCampaign = [[CSEmailCampaign alloc] init]; // Email model

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Edit email campaign
[apiInstance emailCampaignPutWithEmailCampaignId:emailCampaignId
              emailCampaign:emailCampaign
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->emailCampaignPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCampaignId** | **NSNumber***| Allowed email campaign id | 
 **emailCampaign** | [**CSEmailCampaign***](CSEmailCampaign.md)| Email model | 

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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* page = @1; // Page number (optional) (default to 1)
NSNumber* limit = @10; // Number of records per page (optional) (default to 10)

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Get all email campaigns
[apiInstance emailCampaignsGetWithPage:page
              limit:limit
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->emailCampaignsGet: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailAddressId = @56; // Allowed email address id

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Send verification token
[apiInstance sendVerificationTokenGetWithEmailAddressId:emailAddressId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->sendVerificationTokenGet: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailAddressId = @56; // Allowed email address id

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Delete specific email address
[apiInstance specificAllowedEmailAddressDeleteWithEmailAddressId:emailAddressId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->specificAllowedEmailAddressDelete: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailAddressId = @56; // Allowed email address id

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Get specific email address
[apiInstance specificAllowedEmailAddressGetWithEmailAddressId:emailAddressId
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->specificAllowedEmailAddressGet: %@", error);
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
CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSNumber* emailAddressId = @56; // Allowed email address id
NSString* activationToken = @"activationToken_example"; // Your activation token.

CSEmailMarketingApi*apiInstance = [[CSEmailMarketingApi alloc] init];

// Verify email address using verification token
[apiInstance verifyAllowedEmailAddressGetWithEmailAddressId:emailAddressId
              activationToken:activationToken
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CSEmailMarketingApi->verifyAllowedEmailAddressGet: %@", error);
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

