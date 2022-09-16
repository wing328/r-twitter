# twitter::TweetCreateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**direct_message_deep_link** | **character** | Link to take the conversation from the public timeline to a private Direct Message. | [optional] 
**for_super_followers_only** | **character** | Exclusive Tweet for super followers. | [optional] [default to FALSE] 
**geo** | [**TweetCreateRequestGeo**](TweetCreateRequest_geo.md) |  | [optional] 
**media** | [**TweetCreateRequestMedia**](TweetCreateRequest_media.md) |  | [optional] 
**poll** | [**TweetCreateRequestPoll**](TweetCreateRequest_poll.md) |  | [optional] 
**quote_tweet_id** | **character** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] [Pattern: ^[0-9]{1,19}$] 
**reply** | [**TweetCreateRequestReply**](TweetCreateRequest_reply.md) |  | [optional] 
**reply_settings** | **character** | Settings to indicate who can reply to the Tweet. | [optional] [Enum: [following, mentionedUsers]] 
**text** | **character** | The content of the Tweet. | [optional] 


