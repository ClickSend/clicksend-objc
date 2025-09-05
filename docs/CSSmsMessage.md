# CSSmsMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **NSString*** | Your sender id - more info: http://help.clicksend.com/SMS/what-is-a-sender-id-or-sender-number. | [optional] 
**body** | **NSString*** | Your message. | 
**to** | **NSString*** | Recipient phone number in E.164 format. | [optional] 
**source** | **NSString*** | Your method of sending e.g. &#39;wordpress&#39;, &#39;php&#39;, &#39;c#&#39;. | [optional] [default to @"sdk"]
**schedule** | **NSNumber*** | Leave blank for immediate delivery. Your schedule time in unix format http://help.clicksend.com/what-is-a-unix-timestamp | [optional] [default to @0]
**customString** | **NSString*** | Your reference. Will be passed back with all replies and delivery reports. | [optional] 
**listId** | **NSNumber*** | Your list ID if sending to a whole list. Can be used instead of &#39;to&#39;. | [optional] 
**country** | **NSString*** | Recipient country. | [optional] 
**fromEmail** | **NSString*** | An email address where the reply should be emailed to. If omitted, the reply will be emailed back to the user who sent the outgoing SMS. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


