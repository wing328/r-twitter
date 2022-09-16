# twitter::TweetCreateRequestReply

Tweet information of the Tweet being replied to.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exclude_reply_user_ids** | **array[character]** | A list of User Ids to be excluded from the reply Tweet. | [optional] 
**in_reply_to_tweet_id** | **character** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [Pattern: ^[0-9]{1,19}$] 


