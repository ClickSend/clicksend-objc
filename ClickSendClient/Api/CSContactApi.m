#import "CSContactApi.h"
#import "CSQueryParamCollection.h"
#import "CSApiClient.h"
#import "CSContact.h"


@interface CSContactApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CSContactApi

NSString* kCSContactApiErrorDomain = @"CSContactApiErrorDomain";
NSInteger kCSContactApiMissingParamErrorCode = 234513;

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
/// Delete a contact
/// Delete a contact
///  @param listId List ID 
///
///  @param contactId Contact ID 
///
///  @returns NSString*
///
-(NSURLSessionTask*) listsContactsByListIdAndContactIdDeleteWithListId: (NSNumber*) listId
    contactId: (NSNumber*) contactId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'listId' is set
    if (listId == nil) {
        NSParameterAssert(listId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contactId' is set
    if (contactId == nil) {
        NSParameterAssert(contactId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contactId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/lists/{list_id}/contacts/{contact_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (listId != nil) {
        pathParams[@"list_id"] = listId;
    }
    if (contactId != nil) {
        pathParams[@"contact_id"] = contactId;
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
/// Get a specific contact
/// Get a specific contact
///  @param listId Your contact list id you want to access. 
///
///  @param contactId Your contact id you want to access. 
///
///  @returns NSString*
///
-(NSURLSessionTask*) listsContactsByListIdAndContactIdGetWithListId: (NSNumber*) listId
    contactId: (NSNumber*) contactId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'listId' is set
    if (listId == nil) {
        NSParameterAssert(listId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contactId' is set
    if (contactId == nil) {
        NSParameterAssert(contactId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contactId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/lists/{list_id}/contacts/{contact_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (listId != nil) {
        pathParams[@"list_id"] = listId;
    }
    if (contactId != nil) {
        pathParams[@"contact_id"] = contactId;
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
/// Update specific contact
/// Update specific contact
///  @param listId Contact list id 
///
///  @param contactId Contact ID 
///
///  @param contact Contact model 
///
///  @returns NSString*
///
-(NSURLSessionTask*) listsContactsByListIdAndContactIdPutWithListId: (NSNumber*) listId
    contactId: (NSNumber*) contactId
    contact: (CSContact*) contact
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'listId' is set
    if (listId == nil) {
        NSParameterAssert(listId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contactId' is set
    if (contactId == nil) {
        NSParameterAssert(contactId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contactId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contact' is set
    if (contact == nil) {
        NSParameterAssert(contact);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contact"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/lists/{list_id}/contacts/{contact_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (listId != nil) {
        pathParams[@"list_id"] = listId;
    }
    if (contactId != nil) {
        pathParams[@"contact_id"] = contactId;
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
    bodyParam = contact;

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
/// Get all contacts in a list
/// Get all contacts in a list
///  @param listId Contact list ID 
///
///  @param page Page number (optional, default to 1)
///
///  @param limit Number of records per page (optional, default to 10)
///
///  @returns NSString*
///
-(NSURLSessionTask*) listsContactsByListIdGetWithListId: (NSNumber*) listId
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'listId' is set
    if (listId == nil) {
        NSParameterAssert(listId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/lists/{list_id}/contacts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (listId != nil) {
        pathParams[@"list_id"] = listId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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

///
/// Create new contact
/// Create new contact
///  @param contact Contact model 
///
///  @param listId List id 
///
///  @param page Page number (optional, default to 1)
///
///  @param limit Number of records per page (optional, default to 10)
///
///  @returns NSString*
///
-(NSURLSessionTask*) listsContactsByListIdPostWithContact: (CSContact*) contact
    listId: (NSNumber*) listId
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'contact' is set
    if (contact == nil) {
        NSParameterAssert(contact);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contact"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'listId' is set
    if (listId == nil) {
        NSParameterAssert(listId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/lists/{list_id}/contacts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (listId != nil) {
        pathParams[@"list_id"] = listId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    bodyParam = contact;

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
/// Remove all opted out contacts
/// Remove all opted out contacts
///  @param listId Your list id 
///
///  @param optOutListId Your opt out list id 
///
///  @returns NSString*
///
-(NSURLSessionTask*) listsRemoveOptedOutContactsByListIdAndOptOutListIdPutWithListId: (NSNumber*) listId
    optOutListId: (NSNumber*) optOutListId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'listId' is set
    if (listId == nil) {
        NSParameterAssert(listId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'optOutListId' is set
    if (optOutListId == nil) {
        NSParameterAssert(optOutListId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"optOutListId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/lists/{list_id}/remove-opted-out-contacts/{opt_out_list_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (listId != nil) {
        pathParams[@"list_id"] = listId;
    }
    if (optOutListId != nil) {
        pathParams[@"opt_out_list_id"] = optOutListId;
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
/// Transfer contact to another list
/// Transfer contact to another list
///  @param fromListId List ID for list that contains contact. 
///
///  @param contactId Contact ID 
///
///  @param toListId List ID for list you want to transfer contact to. 
///
///  @returns NSString*
///
-(NSURLSessionTask*) listsTransferContactPutWithFromListId: (NSNumber*) fromListId
    contactId: (NSNumber*) contactId
    toListId: (NSNumber*) toListId
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'fromListId' is set
    if (fromListId == nil) {
        NSParameterAssert(fromListId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fromListId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contactId' is set
    if (contactId == nil) {
        NSParameterAssert(contactId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contactId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'toListId' is set
    if (toListId == nil) {
        NSParameterAssert(toListId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"toListId"] };
            NSError* error = [NSError errorWithDomain:kCSContactApiErrorDomain code:kCSContactApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/lists/{from_list_id}/contacts/{contact_id}/transfer/{to_list_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (fromListId != nil) {
        pathParams[@"from_list_id"] = fromListId;
    }
    if (contactId != nil) {
        pathParams[@"contact_id"] = contactId;
    }
    if (toListId != nil) {
        pathParams[@"to_list_id"] = toListId;
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



@end
