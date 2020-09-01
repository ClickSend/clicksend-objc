# CSInboundSMSRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dedicatedNumber** | **NSString*** | Dedicated Number. Can be &#39;*&#39; to apply to all numbers. | 
**ruleName** | **NSString*** | Rule Name. | 
**messageSearchType** | **NSNumber*** | Message Search Type: 0&#x3D;Any message, 1&#x3D;starts with, 2&#x3D;contains, 3&#x3D;does not contain. | 
**messageSearchTerm** | **NSString*** | Message search term. | 
**action** | **NSString*** | Action to be taken (AUTO_REPLY, EMAIL_USER, EMAIL_FIXED, URL, SMS, POLL, GROUP_SMS, MOVE_CONTACT, CREATE_CONTACT, CREATE_CONTACT_PLUS_EMAIL, CREATE_CONTACT_PLUS_NAME_EMAIL CREATE_CONTACT_PLUS_NAME, SMPP, NONE). | 
**actionAddress** | **NSString*** | Action address. | 
**enabled** | **NSNumber*** | Enabled: Disabled&#x3D;0 or Enabled&#x3D;1. | 
**webhookType** | **NSString*** | post, get, or json. post by default | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


