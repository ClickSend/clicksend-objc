#import "CSEmailDeliveryReceiptRulesApi.h"
#import "CSQueryParamCollection.h"
#import "CSApiClient.h"
#import "CSDeliveryReceiptRule.h"


@interface CSEmailDeliveryReceiptRulesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CSEmailDeliveryReceiptRulesApi

NSString* kCSEmailDeliveryReceiptRulesApiErrorDomain = @"CSEmailDeliveryReceiptRulesApiErrorDomain";
NSInteger kCSEmailDeliveryReceiptRulesApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CSApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CSApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Delete email delivery receipt automation
/// Delete email delivery receipt automation
///  @param receiptRuleId Receipt rule id 
///
///  @returns NSString*
///
-(NSURLSessionTask*) emailDeliveryReceiptAutomationDeleteWithReceiptRuleId: (NSNumber*) receiptRuleId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'receiptRuleId' is set
    if (receiptRuleId == nil) {
        NSParameterAssert(receiptRuleId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"receiptRuleId"] };
            NSError* error = [NSError errorWithDomain:kCSEmailDeliveryReceiptRulesApiErrorDomain code:kCSEmailDeliveryReceiptRulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/automations/email/receipts/{receipt_rule_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (receiptRuleId != nil) {
        pathParams[@"receipt_rule_id"] = receiptRuleId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"BasicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Get specific email delivery receipt automation
/// Get specific email delivery receipt automation
///  @param receiptRuleId Receipt rule id 
///
///  @returns NSString*
///
-(NSURLSessionTask*) emailDeliveryReceiptAutomationGetWithReceiptRuleId: (NSNumber*) receiptRuleId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'receiptRuleId' is set
    if (receiptRuleId == nil) {
        NSParameterAssert(receiptRuleId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"receiptRuleId"] };
            NSError* error = [NSError errorWithDomain:kCSEmailDeliveryReceiptRulesApiErrorDomain code:kCSEmailDeliveryReceiptRulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/automations/email/receipts/{receipt_rule_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (receiptRuleId != nil) {
        pathParams[@"receipt_rule_id"] = receiptRuleId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"BasicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Create email delivery receipt automations
/// Create email delivery receipt automations
///  @param deliveryReceiptRule Email delivery receipt rule model 
///
///  @returns NSString*
///
-(NSURLSessionTask*) emailDeliveryReceiptAutomationPostWithDeliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'deliveryReceiptRule' is set
    if (deliveryReceiptRule == nil) {
        NSParameterAssert(deliveryReceiptRule);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryReceiptRule"] };
            NSError* error = [NSError errorWithDomain:kCSEmailDeliveryReceiptRulesApiErrorDomain code:kCSEmailDeliveryReceiptRulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/automations/email/receipts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"BasicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deliveryReceiptRule;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Update email delivery receipt automation
/// Update email delivery receipt automation
///  @param receiptRuleId Receipt rule id 
///
///  @param deliveryReceiptRule Delivery receipt rule model 
///
///  @returns NSString*
///
-(NSURLSessionTask*) emailDeliveryReceiptAutomationPutWithReceiptRuleId: (NSNumber*) receiptRuleId
    deliveryReceiptRule: (CSDeliveryReceiptRule*) deliveryReceiptRule
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'receiptRuleId' is set
    if (receiptRuleId == nil) {
        NSParameterAssert(receiptRuleId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"receiptRuleId"] };
            NSError* error = [NSError errorWithDomain:kCSEmailDeliveryReceiptRulesApiErrorDomain code:kCSEmailDeliveryReceiptRulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deliveryReceiptRule' is set
    if (deliveryReceiptRule == nil) {
        NSParameterAssert(deliveryReceiptRule);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deliveryReceiptRule"] };
            NSError* error = [NSError errorWithDomain:kCSEmailDeliveryReceiptRulesApiErrorDomain code:kCSEmailDeliveryReceiptRulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/automations/email/receipts/{receipt_rule_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (receiptRuleId != nil) {
        pathParams[@"receipt_rule_id"] = receiptRuleId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"BasicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deliveryReceiptRule;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Get all email delivery receipt automations
/// Get all email delivery receipt automations
///  @param q Your keyword or query. 
///
///  @param page Page number (optional, default to 1)
///
///  @param limit Number of records per page (optional, default to 10)
///
///  @returns NSString*
///
-(NSURLSessionTask*) emailDeliveryReceiptAutomationsGetWithQ: (NSString*) q
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'q' is set
    if (q == nil) {
        NSParameterAssert(q);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"q"] };
            NSError* error = [NSError errorWithDomain:kCSEmailDeliveryReceiptRulesApiErrorDomain code:kCSEmailDeliveryReceiptRulesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/automations/email/receipts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"BasicAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}



@end
