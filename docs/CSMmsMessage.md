# CSMmsMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **NSString*** | Recipient phone number in E.164 format | 
**body** | **NSString*** | Your message | 
**subject** | **NSString*** | Subject line (max 20 characters) | 
**from** | **NSString*** | Your sender ID | [optional] 
**country** | **NSString*** | Recipient country | [optional] 
**source** | **NSString*** | Your method of sending | [optional] [default to @"sdk"]
**listId** | **NSNumber*** | Your list ID if sending to a whole list (can be used instead of &#39;to&#39;) | [optional] 
**schedule** | **NSNumber*** | Schedule time in unix format (leave blank for immediate delivery) | [optional] [default to @0]
**customString** | **NSString*** | Custom string for your reference | [optional] 
**fromEmail** | **NSString*** | Email to send replies to | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


