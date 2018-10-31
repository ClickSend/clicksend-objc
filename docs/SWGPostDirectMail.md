# SWGPostDirectMail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **NSString*** | Campaign name | 
**fileUrls** | **NSArray&lt;NSString*&gt;*** | Campaign file URLs (maximum 2) | 
**size** | **NSString*** | Document size - A5 or DL | 
**areas** | [**NSArray&lt;SWGPostDirectMailArea&gt;***](SWGPostDirectMailArea.md) | PostDirectMailArea model | 
**schedule** | **NSNumber*** | Leave blank for immediate delivery. Your schedule time in unix format. | [optional] [default to @0]
**source** | **NSString*** | Your method of sending e.g. &#39;wordpress&#39;, &#39;php&#39;, &#39;c#&#39;. | [optional] [default to @"sdk"]
**customString** | **NSString*** | A custom string for your own reference | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


