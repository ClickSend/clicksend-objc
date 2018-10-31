# SWGFaxMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **NSString*** | Your method of sending e.g. &#39;wordpress&#39;, &#39;php&#39;, &#39;c#&#39;. | [optional] [default to @"sdk"]
**to** | **NSString*** | Recipient fax number in E.164 format. | 
**listId** | **NSNumber*** | Your list ID if sending to a whole list. Can be used instead of &#39;to&#39;. | [optional] 
**from** | **NSString*** | Your sender id. Must be a valid fax number. | [optional] 
**schedule** | **NSNumber*** | Leave blank for immediate delivery. Your schedule time in unix format http://help.clicksend.com/what-is-a-unix-timestamp | [optional] 
**customString** | **NSString*** | Your reference. Will be passed back with all replies and delivery reports. | [optional] 
**country** | **NSString*** | Recipient country. | [optional] 
**fromEmail** | **NSString*** | An email address where the reply should be emailed to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


