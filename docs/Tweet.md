# twitter::Tweet


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | [**TweetAttachments**](Tweet_attachments.md) |  | [optional] 
**author_id** | **character** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**context_annotations** | [**array[ContextAnnotation]**](ContextAnnotation.md) |  | [optional] 
**conversation_id** | **character** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**created_at** | **character** | Creation time of the Tweet. | [optional] 
**entities** | [**FullTextEntities**](FullTextEntities.md) |  | [optional] 
**geo** | [**TweetGeo**](Tweet_geo.md) |  | [optional] 
**id** | **character** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | 
**in_reply_to_user_id** | **character** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**lang** | **character** | Language of the Tweet, if detected by Twitter. Returned as a BCP47 language tag. | [optional] 
**non_public_metrics** | [**TweetNonPublicMetrics**](Tweet_non_public_metrics.md) |  | [optional] 
**organic_metrics** | [**TweetOrganicMetrics**](Tweet_organic_metrics.md) |  | [optional] 
**possibly_sensitive** | **character** | Indicates if this Tweet contains URLs marked as sensitive, for example content suitable for mature audiences. | [optional] 
**promoted_metrics** | [**TweetPromotedMetrics**](Tweet_promoted_metrics.md) |  | [optional] 
**public_metrics** | [**TweetPublicMetrics**](Tweet_public_metrics.md) |  | [optional] 
**referenced_tweets** | [**array[TweetReferencedTweetsInner]**](Tweet_referenced_tweets_inner.md) | A list of Tweets this Tweet refers to. For example, if the parent Tweet is a Retweet, a Quoted Tweet or a Reply, it will include the related Tweet referenced to by its parent. | [optional] 
**reply_settings** | [**ReplySettings**](ReplySettings.md) |  | [optional] 
**source** | **character** | The name of the app the user Tweeted from. | [optional] 
**text** | **character** | The content of the Tweet. | 
**withheld** | [**TweetWithheld**](TweetWithheld.md) |  | [optional] 


