# twitter::User

The Twitter User object.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **character** | Creation time of this User. | [optional] 
**description** | **character** | The text of this User&#39;s profile description (also known as bio), if the User provided one. | [optional] 
**entities** | [**UserEntities**](User_entities.md) |  | [optional] 
**id** | **character** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [Pattern: ^[0-9]{1,19}$] 
**location** | **character** | The location specified in the User&#39;s profile, if the User provided one. As this is a freeform value, it may not indicate a valid location, but it may be fuzzily evaluated when performing searches with location queries. | [optional] 
**name** | **character** | The friendly name of this User, as shown on their profile. | 
**pinned_tweet_id** | **character** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] [Pattern: ^[0-9]{1,19}$] 
**profile_image_url** | **character** | The URL to the profile image for this User. | [optional] 
**protected** | **character** | Indicates if this User has chosen to protect their Tweets (in other words, if this User&#39;s Tweets are private). | [optional] 
**public_metrics** | [**UserPublicMetrics**](User_public_metrics.md) |  | [optional] 
**url** | **character** | The URL specified in the User&#39;s profile. | [optional] 
**username** | **character** | The Twitter handle (screen name) of this user. | [Pattern: ^[A-Za-z0-9_]{1,15}$] 
**verified** | **character** | Indicate if this User is a verified Twitter User. | [optional] 
**withheld** | [**UserWithheld**](UserWithheld.md) |  | [optional] 


