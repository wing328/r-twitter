# twitter::TweetComplianceSchema


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_at** | **character** | Event time. | 
**quote_tweet_id** | **character** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] [Pattern: ^[0-9]{1,19}$] 
**tweet** | [**TweetComplianceSchemaTweet**](TweetComplianceSchema_tweet.md) |  | 


