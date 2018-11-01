# The official objc library for ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'SwaggerClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/SwaggerClient) and then add the following to the Podfile:

```ruby
pod 'SwaggerClient', :path => 'Vendor/SwaggerClient'
```

### Usage

Import the following:

```objc
#import <SwaggerClient/SWGApiClient.h>
#import <SwaggerClient/SWGDefaultConfiguration.h>
// load models
#import <SwaggerClient/SWGAccount.h>
#import <SwaggerClient/SWGAccountForgotPasswordVerify.h>
#import <SwaggerClient/SWGAccountVerify.h>
#import <SwaggerClient/SWGAddress.h>
#import <SwaggerClient/SWGAttachment.h>
#import <SwaggerClient/SWGContact.h>
#import <SwaggerClient/SWGContactListImport.h>
#import <SwaggerClient/SWGCreditCard.h>
#import <SwaggerClient/SWGDeliveryIssue.h>
#import <SwaggerClient/SWGDeliveryReceiptRule.h>
#import <SwaggerClient/SWGEmail.h>
#import <SwaggerClient/SWGEmailCampaign.h>
#import <SwaggerClient/SWGEmailFrom.h>
#import <SwaggerClient/SWGEmailRecipient.h>
#import <SwaggerClient/SWGEmailSMSAddress.h>
#import <SwaggerClient/SWGEmailTemplateNew.h>
#import <SwaggerClient/SWGEmailTemplateUpdate.h>
#import <SwaggerClient/SWGFaxMessage.h>
#import <SwaggerClient/SWGFaxMessageCollection.h>
#import <SwaggerClient/SWGInboundFAXRule.h>
#import <SwaggerClient/SWGInboundSMSRule.h>
#import <SwaggerClient/SWGMmsCampaign.h>
#import <SwaggerClient/SWGMmsMessage.h>
#import <SwaggerClient/SWGMmsMessageCollection.h>
#import <SwaggerClient/SWGPostDirectMail.h>
#import <SwaggerClient/SWGPostDirectMailArea.h>
#import <SwaggerClient/SWGPostLetter.h>
#import <SwaggerClient/SWGPostPostcard.h>
#import <SwaggerClient/SWGPostRecipient.h>
#import <SwaggerClient/SWGResellerAccount.h>
#import <SwaggerClient/SWGResellerAccountTransferCredit.h>
#import <SwaggerClient/SWGSmsCampaign.h>
#import <SwaggerClient/SWGSmsMessage.h>
#import <SwaggerClient/SWGSmsMessageCollection.h>
#import <SwaggerClient/SWGSmsTemplate.h>
#import <SwaggerClient/SWGSubaccount.h>
#import <SwaggerClient/SWGVoiceMessage.h>
#import <SwaggerClient/SWGVoiceMessageCollection.h>
// load API classes for accessing endpoints
#import <SwaggerClient/SWGAccountApi.h>
#import <SwaggerClient/SWGAccountRechargeApi.h>
#import <SwaggerClient/SWGContactApi.h>
#import <SwaggerClient/SWGContactListApi.h>
#import <SwaggerClient/SWGCountriesApi.h>
#import <SwaggerClient/SWGDeliveryIssuesApi.h>
#import <SwaggerClient/SWGDetectAddressApi.h>
#import <SwaggerClient/SWGEmailDeliveryReceiptRulesApi.h>
#import <SwaggerClient/SWGEmailMarketingApi.h>
#import <SwaggerClient/SWGEmailToSmsApi.h>
#import <SwaggerClient/SWGFAXDeliveryReceiptRulesApi.h>
#import <SwaggerClient/SWGFaxApi.h>
#import <SwaggerClient/SWGInboundFAXRulesApi.h>
#import <SwaggerClient/SWGInboundSMSRulesApi.h>
#import <SwaggerClient/SWGMMSApi.h>
#import <SwaggerClient/SWGMasterEmailTemplatesApi.h>
#import <SwaggerClient/SWGMmsCampaignApi.h>
#import <SwaggerClient/SWGNumberApi.h>
#import <SwaggerClient/SWGPostDirectMailApi.h>
#import <SwaggerClient/SWGPostLetterApi.h>
#import <SwaggerClient/SWGPostPostcardApi.h>
#import <SwaggerClient/SWGPostReturnAddressApi.h>
#import <SwaggerClient/SWGReferralAccountApi.h>
#import <SwaggerClient/SWGResellerAccountApi.h>
#import <SwaggerClient/SWGSMSApi.h>
#import <SwaggerClient/SWGSMSDeliveryReceiptRulesApi.h>
#import <SwaggerClient/SWGSearchApi.h>
#import <SwaggerClient/SWGSmsCampaignApi.h>
#import <SwaggerClient/SWGStatisticsApi.h>
#import <SwaggerClient/SWGSubaccountApi.h>
#import <SwaggerClient/SWGTimezonesApi.h>
#import <SwaggerClient/SWGTransactionalEmailApi.h>
#import <SwaggerClient/SWGTransferCreditApi.h>
#import <SwaggerClient/SWGUploadApi.h>
#import <SwaggerClient/SWGUserEmailTemplatesApi.h>
#import <SwaggerClient/SWGVoiceApi.h>
#import <SwaggerClient/SWGVoiceDeliveryReceiptRulesApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

SWGDefaultConfiguration *apiConfig = [SWGDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



SWGAccountApi *apiInstance = [[SWGAccountApi alloc] init];

// Get account information
[apiInstance accountGetWithCompletionHandler: 
              ^(NSString* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints and Models

Documentation can be found here: [ClickSend API Docs](https://developers.clicksend.com/docs/)

## Documentation For Authorization


## BasicAuth

- **Type**: HTTP basic authentication


## Author

support@clicksend.com


