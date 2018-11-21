# The official objc library for ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'ClickSendClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/ClickSendClient) and then add the following to the Podfile:

```ruby
pod 'ClickSendClient', :path => 'Vendor/ClickSendClient'
```

### Usage

Import the following:

```objc
#import <ClickSendClient/CSApiClient.h>
#import <ClickSendClient/CSDefaultConfiguration.h>
// load models
#import <ClickSendClient/CSAccount.h>
#import <ClickSendClient/CSAccountForgotPasswordVerify.h>
#import <ClickSendClient/CSAccountVerify.h>
#import <ClickSendClient/CSAddress.h>
#import <ClickSendClient/CSAttachment.h>
#import <ClickSendClient/CSContact.h>
#import <ClickSendClient/CSContactListImport.h>
#import <ClickSendClient/CSCreditCard.h>
#import <ClickSendClient/CSDeliveryIssue.h>
#import <ClickSendClient/CSDeliveryReceiptRule.h>
#import <ClickSendClient/CSEmail.h>
#import <ClickSendClient/CSEmailCampaign.h>
#import <ClickSendClient/CSEmailFrom.h>
#import <ClickSendClient/CSEmailRecipient.h>
#import <ClickSendClient/CSEmailSMSAddress.h>
#import <ClickSendClient/CSEmailTemplateNew.h>
#import <ClickSendClient/CSEmailTemplateUpdate.h>
#import <ClickSendClient/CSFaxMessage.h>
#import <ClickSendClient/CSFaxMessageCollection.h>
#import <ClickSendClient/CSFields.h>
#import <ClickSendClient/CSInboundFAXRule.h>
#import <ClickSendClient/CSInboundSMSRule.h>
#import <ClickSendClient/CSMmsCampaign.h>
#import <ClickSendClient/CSMmsMessage.h>
#import <ClickSendClient/CSMmsMessageCollection.h>
#import <ClickSendClient/CSPostDirectMail.h>
#import <ClickSendClient/CSPostDirectMailArea.h>
#import <ClickSendClient/CSPostLetter.h>
#import <ClickSendClient/CSPostPostcard.h>
#import <ClickSendClient/CSPostRecipient.h>
#import <ClickSendClient/CSResellerAccount.h>
#import <ClickSendClient/CSResellerAccountTransferCredit.h>
#import <ClickSendClient/CSSmsCampaign.h>
#import <ClickSendClient/CSSmsMessage.h>
#import <ClickSendClient/CSSmsMessageCollection.h>
#import <ClickSendClient/CSSmsTemplate.h>
#import <ClickSendClient/CSSubaccount.h>
#import <ClickSendClient/CSVoiceMessage.h>
#import <ClickSendClient/CSVoiceMessageCollection.h>
// load API classes for accessing endpoints
#import <ClickSendClient/CSAccountApi.h>
#import <ClickSendClient/CSAccountRechargeApi.h>
#import <ClickSendClient/CSContactApi.h>
#import <ClickSendClient/CSContactListApi.h>
#import <ClickSendClient/CSCountriesApi.h>
#import <ClickSendClient/CSDeliveryIssuesApi.h>
#import <ClickSendClient/CSDetectAddressApi.h>
#import <ClickSendClient/CSEmailDeliveryReceiptRulesApi.h>
#import <ClickSendClient/CSEmailMarketingApi.h>
#import <ClickSendClient/CSEmailToSmsApi.h>
#import <ClickSendClient/CSFAXDeliveryReceiptRulesApi.h>
#import <ClickSendClient/CSFaxApi.h>
#import <ClickSendClient/CSInboundFAXRulesApi.h>
#import <ClickSendClient/CSInboundSMSRulesApi.h>
#import <ClickSendClient/CSMMSApi.h>
#import <ClickSendClient/CSMasterEmailTemplatesApi.h>
#import <ClickSendClient/CSMmsCampaignApi.h>
#import <ClickSendClient/CSNumberApi.h>
#import <ClickSendClient/CSPostDirectMailApi.h>
#import <ClickSendClient/CSPostLetterApi.h>
#import <ClickSendClient/CSPostPostcardApi.h>
#import <ClickSendClient/CSPostReturnAddressApi.h>
#import <ClickSendClient/CSReferralAccountApi.h>
#import <ClickSendClient/CSResellerAccountApi.h>
#import <ClickSendClient/CSSMSApi.h>
#import <ClickSendClient/CSSMSDeliveryReceiptRulesApi.h>
#import <ClickSendClient/CSSearchApi.h>
#import <ClickSendClient/CSSmsCampaignApi.h>
#import <ClickSendClient/CSStatisticsApi.h>
#import <ClickSendClient/CSSubaccountApi.h>
#import <ClickSendClient/CSTimezonesApi.h>
#import <ClickSendClient/CSTransactionalEmailApi.h>
#import <ClickSendClient/CSTransferCreditApi.h>
#import <ClickSendClient/CSUploadApi.h>
#import <ClickSendClient/CSUserEmailTemplatesApi.h>
#import <ClickSendClient/CSVoiceApi.h>
#import <ClickSendClient/CSVoiceDeliveryReceiptRulesApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

CSDefaultConfiguration *apiConfig = [CSDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: BasicAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



CSAccountApi *apiInstance = [[CSAccountApi alloc] init];

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


