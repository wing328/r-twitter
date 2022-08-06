# TweetsApi

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_or_delete_rules**](TweetsApi.md#add_or_delete_rules) | **POST** /2/tweets/search/stream/rules | Add/Delete rules
[**create_tweet**](TweetsApi.md#create_tweet) | **POST** /2/tweets | Creation of a Tweet
[**delete_tweet_by_id**](TweetsApi.md#delete_tweet_by_id) | **DELETE** /2/tweets/{id} | Tweet delete by Tweet ID
[**find_tweet_by_id**](TweetsApi.md#find_tweet_by_id) | **GET** /2/tweets/{id} | Tweet lookup by Tweet ID
[**find_tweets_by_id**](TweetsApi.md#find_tweets_by_id) | **GET** /2/tweets | Tweet lookup by Tweet IDs
[**find_tweets_that_quote_a_tweet**](TweetsApi.md#find_tweets_that_quote_a_tweet) | **GET** /2/tweets/{id}/quote_tweets | Retrieve Tweets that quote a Tweet.
[**get_rules**](TweetsApi.md#get_rules) | **GET** /2/tweets/search/stream/rules | Rules lookup
[**get_tweets_firehose_stream**](TweetsApi.md#get_tweets_firehose_stream) | **GET** /2/tweets/firehose/stream | Firehose stream
[**get_tweets_sample10_stream**](TweetsApi.md#get_tweets_sample10_stream) | **GET** /2/tweets/sample10/stream | Sample 10% stream
[**hide_reply_by_id**](TweetsApi.md#hide_reply_by_id) | **PUT** /2/tweets/{tweet_id}/hidden | Hide replies
[**lists_id_tweets**](TweetsApi.md#lists_id_tweets) | **GET** /2/lists/{id}/tweets | List Tweets timeline by List ID.
[**sample_stream**](TweetsApi.md#sample_stream) | **GET** /2/tweets/sample/stream | Sample stream
[**search_stream**](TweetsApi.md#search_stream) | **GET** /2/tweets/search/stream | Filtered stream
[**space_buyers**](TweetsApi.md#space_buyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of Users who purchased a ticket to the given space
[**space_tweets**](TweetsApi.md#space_tweets) | **GET** /2/spaces/{id}/tweets | Retrieve Tweets from a Space.
[**tweet_counts_full_archive_search**](TweetsApi.md#tweet_counts_full_archive_search) | **GET** /2/tweets/counts/all | Full archive search counts
[**tweet_counts_recent_search**](TweetsApi.md#tweet_counts_recent_search) | **GET** /2/tweets/counts/recent | Recent search counts
[**tweets_fullarchive_search**](TweetsApi.md#tweets_fullarchive_search) | **GET** /2/tweets/search/all | Full-archive search
[**tweets_recent_search**](TweetsApi.md#tweets_recent_search) | **GET** /2/tweets/search/recent | Recent search
[**users_id_like**](TweetsApi.md#users_id_like) | **POST** /2/users/{id}/likes | Causes the User (in the path) to like the specified Tweet
[**users_id_liked_tweets**](TweetsApi.md#users_id_liked_tweets) | **GET** /2/users/{id}/liked_tweets | Returns Tweet objects liked by the provided User ID
[**users_id_mentions**](TweetsApi.md#users_id_mentions) | **GET** /2/users/{id}/mentions | User mention timeline by User ID
[**users_id_retweets**](TweetsApi.md#users_id_retweets) | **POST** /2/users/{id}/retweets | Causes the User (in the path) to retweet the specified Tweet.
[**users_id_timeline**](TweetsApi.md#users_id_timeline) | **GET** /2/users/{id}/timelines/reverse_chronological | User home timeline by User ID
[**users_id_tweets**](TweetsApi.md#users_id_tweets) | **GET** /2/users/{id}/tweets | User Tweets timeline by User ID
[**users_id_unlike**](TweetsApi.md#users_id_unlike) | **DELETE** /2/users/{id}/likes/{tweet_id} | Causes the User (in the path) to unlike the specified Tweet
[**users_id_unretweets**](TweetsApi.md#users_id_unretweets) | **DELETE** /2/users/{id}/retweets/{source_tweet_id} | Causes the User (in the path) to unretweet the specified Tweet


# **add_or_delete_rules**
> AddOrDeleteRulesResponse add_or_delete_rules(add_or_delete_rules_request, dry_run = var.dry_run)

Add/Delete rules

Add or delete rules from a User's active rule set. Users can provide unique, optionally tagged rules to add. Users can delete their entire rule set or a subset specified by rule ids or values.

### Example
```R
library(twitter)

var_add_or_delete_rules_request <- AddOrDeleteRulesRequest$new(list(RuleNoId$new("value_example", "tag_example")), DeleteRulesRequest_delete$new(list("ids_example"), list("values_example"))) # AddOrDeleteRulesRequest | 
var_dry_run <- "dry_run_example" # character | Dry Run can be used with both the add and delete action, with the expected result given, but without actually taking any action in the system (meaning the end state will always be as it was when the request was submitted). This is particularly useful to validate rule changes. (Optional)

#Add/Delete rules
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$add_or_delete_rules(var_add_or_delete_rules_request, dry_run = var_dry_run, data_file = "result.txt"),
             api_instance$add_or_delete_rules(var_add_or_delete_rules_request, dry_run = var_dry_run),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `add_or_delete_rules`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_or_delete_rules_request** | [**AddOrDeleteRulesRequest**](AddOrDeleteRulesRequest.md)|  | 
 **dry_run** | **character**| Dry Run can be used with both the add and delete action, with the expected result given, but without actually taking any action in the system (meaning the end state will always be as it was when the request was submitted). This is particularly useful to validate rule changes. | [optional] 

### Return type

[**AddOrDeleteRulesResponse**](AddOrDeleteRulesResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **create_tweet**
> TweetCreateResponse create_tweet(tweet_create_request)

Creation of a Tweet

Causes the User to create a Tweet under the authorized account.

### Example
```R
library(twitter)

var_tweet_create_request <- TweetCreateRequest$new("direct_message_deep_link_example", "for_super_followers_only_example", TweetCreateRequest_geo$new("place_id_example"), TweetCreateRequest_media$new(list("media_ids_example"), list("tagged_user_ids_example")), TweetCreateRequest_poll$new(123, list("options_example"), "following"), "quote_tweet_id_example", TweetCreateRequest_reply$new("in_reply_to_tweet_id_example", list("exclude_reply_user_ids_example")), "following", "text_example") # TweetCreateRequest | 

#Creation of a Tweet
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$create_tweet(var_tweet_create_request, data_file = "result.txt"),
             api_instance$create_tweet(var_tweet_create_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `create_tweet`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tweet_create_request** | [**TweetCreateRequest**](TweetCreateRequest.md)|  | 

### Return type

[**TweetCreateResponse**](TweetCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **delete_tweet_by_id**
> TweetDeleteResponse delete_tweet_by_id(id)

Tweet delete by Tweet ID

Delete specified Tweet (in the path) by ID.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the Tweet to be deleted.

#Tweet delete by Tweet ID
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$delete_tweet_by_id(var_id, data_file = "result.txt"),
             api_instance$delete_tweet_by_id(var_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `delete_tweet_by_id`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the Tweet to be deleted. | 

### Return type

[**TweetDeleteResponse**](TweetDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **find_tweet_by_id**
> Get2TweetsIdResponse find_tweet_by_id(id, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Tweet lookup by Tweet ID

Returns a variety of information about the Tweet specified by the requested ID.

### Example
```R
library(twitter)

var_id <- "id_example" # character | A single Tweet ID.
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Tweet lookup by Tweet ID
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_tweet_by_id(var_id, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$find_tweet_by_id(var_id, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_tweet_by_id`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| A single Tweet ID. | 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsIdResponse**](Get2TweetsIdResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **find_tweets_by_id**
> Get2TweetsResponse find_tweets_by_id(ids, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Tweet lookup by Tweet IDs

Returns a variety of information about the Tweet specified by the requested ID.

### Example
```R
library(twitter)

var_ids <- list("inner_example") # array[character] | A comma separated list of Tweet IDs. Up to 100 are allowed in a single request.
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Tweet lookup by Tweet IDs
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_tweets_by_id(var_ids, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$find_tweets_by_id(var_ids, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_tweets_by_id`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | list( **character** )| A comma separated list of Tweet IDs. Up to 100 are allowed in a single request. | 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsResponse**](Get2TweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **find_tweets_that_quote_a_tweet**
> Get2TweetsIdQuoteTweetsResponse find_tweets_that_quote_a_tweet(id, max_results = 10, pagination_token = var.pagination_token, exclude = var.exclude, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Retrieve Tweets that quote a Tweet.

Returns a variety of information about each Tweet that quotes the Tweet specified by the requested ID.

### Example
```R
library(twitter)

var_id <- "id_example" # character | A single Tweet ID.
var_max_results <- 10 # integer | The maximum number of results to be returned. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_exclude <- list("replies") # set[character] | The set of entities to exclude (e.g. 'replies' or 'retweets'). (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Retrieve Tweets that quote a Tweet.
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_tweets_that_quote_a_tweet(var_id, max_results = var_max_results, pagination_token = var_pagination_token, exclude = var_exclude, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$find_tweets_that_quote_a_tweet(var_id, max_results = var_max_results, pagination_token = var_pagination_token, exclude = var_exclude, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_tweets_that_quote_a_tweet`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| A single Tweet ID. | 
 **max_results** | **integer**| The maximum number of results to be returned. | [optional] [default to 10]
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **exclude** | Enum [replies, retweets] | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsIdQuoteTweetsResponse**](Get2TweetsIdQuoteTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **get_rules**
> RulesLookupResponse get_rules(ids = var.ids, max_results = 1000, pagination_token = var.pagination_token)

Rules lookup

Returns rules from a User's active rule set. Users can fetch all of their rules or a subset, specified by the provided rule ids.

### Example
```R
library(twitter)

var_ids <- list("inner_example") # array[character] | A comma-separated list of Rule IDs. (Optional)
var_max_results <- 1000 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This value is populated by passing the 'next_token' returned in a request to paginate through results. (Optional)

#Rules lookup
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_rules(ids = var_ids, max_results = var_max_results, pagination_token = var_pagination_token, data_file = "result.txt"),
             api_instance$get_rules(ids = var_ids, max_results = var_max_results, pagination_token = var_pagination_token),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_rules`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | list( **character** )| A comma-separated list of Rule IDs. | [optional] 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 1000]
 **pagination_token** | **character**| This value is populated by passing the &#39;next_token&#39; returned in a request to paginate through results. | [optional] 

### Return type

[**RulesLookupResponse**](RulesLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **get_tweets_firehose_stream**
> StreamingTweetResponse get_tweets_firehose_stream(partition, backfill_minutes = var.backfill_minutes, start_time = var.start_time, end_time = var.end_time, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Firehose stream

Streams 100% of public Tweets.

### Example
```R
library(twitter)

var_partition <- 56 # integer | The partition number.
var_backfill_minutes <- 56 # integer | The number of minutes of backfill requested. (Optional)
var_start_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided. (Optional)
var_end_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Firehose stream
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_tweets_firehose_stream(var_partition, backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$get_tweets_firehose_stream(var_partition, backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_tweets_firehose_stream`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partition** | **integer**| The partition number. | 
 **backfill_minutes** | **integer**| The number of minutes of backfill requested. | [optional] 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided. | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**StreamingTweetResponse**](StreamingTweetResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **get_tweets_sample10_stream**
> Get2TweetsSample10StreamResponse get_tweets_sample10_stream(partition, backfill_minutes = var.backfill_minutes, start_time = var.start_time, end_time = var.end_time, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Sample 10% stream

Streams a deterministic 10% of public Tweets.

### Example
```R
library(twitter)

var_partition <- 56 # integer | The partition number.
var_backfill_minutes <- 56 # integer | The number of minutes of backfill requested. (Optional)
var_start_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided. (Optional)
var_end_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Sample 10% stream
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_tweets_sample10_stream(var_partition, backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$get_tweets_sample10_stream(var_partition, backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_tweets_sample10_stream`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partition** | **integer**| The partition number. | 
 **backfill_minutes** | **integer**| The number of minutes of backfill requested. | [optional] 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided. | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsSample10StreamResponse**](Get2TweetsSample10StreamResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **hide_reply_by_id**
> TweetHideResponse hide_reply_by_id(tweet_id, tweet_hide_request = var.tweet_hide_request)

Hide replies

Hides or unhides a reply to an owned conversation.

### Example
```R
library(twitter)

var_tweet_id <- "tweet_id_example" # character | The ID of the reply that you want to hide or unhide.
var_tweet_hide_request <- TweetHideRequest$new("hidden_example") # TweetHideRequest |  (Optional)

#Hide replies
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$hide_reply_by_id(var_tweet_id, tweet_hide_request = var_tweet_hide_request, data_file = "result.txt"),
             api_instance$hide_reply_by_id(var_tweet_id, tweet_hide_request = var_tweet_hide_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `hide_reply_by_id`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tweet_id** | **character**| The ID of the reply that you want to hide or unhide. | 
 **tweet_hide_request** | [**TweetHideRequest**](TweetHideRequest.md)|  | [optional] 

### Return type

[**TweetHideResponse**](TweetHideResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **lists_id_tweets**
> Get2ListsIdTweetsResponse lists_id_tweets(id, max_results = 100, pagination_token = var.pagination_token, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

List Tweets timeline by List ID.

Returns a list of Tweets associated with the provided List ID.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the List.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#List Tweets timeline by List ID.
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$lists_id_tweets(var_id, max_results = var_max_results, pagination_token = var_pagination_token, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$lists_id_tweets(var_id, max_results = var_max_results, pagination_token = var_pagination_token, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `lists_id_tweets`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the List. | 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2ListsIdTweetsResponse**](Get2ListsIdTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **sample_stream**
> StreamingTweetResponse sample_stream(backfill_minutes = var.backfill_minutes, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Sample stream

Streams a deterministic 1% of public Tweets.

### Example
```R
library(twitter)

var_backfill_minutes <- 56 # integer | The number of minutes of backfill requested. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Sample stream
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$sample_stream(backfill_minutes = var_backfill_minutes, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$sample_stream(backfill_minutes = var_backfill_minutes, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `sample_stream`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backfill_minutes** | **integer**| The number of minutes of backfill requested. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**StreamingTweetResponse**](StreamingTweetResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **search_stream**
> FilteredStreamingTweetResponse search_stream(backfill_minutes = var.backfill_minutes, start_time = var.start_time, end_time = var.end_time, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Filtered stream

Streams Tweets matching the stream's active rule set.

### Example
```R
library(twitter)

var_backfill_minutes <- 56 # integer | The number of minutes of backfill requested. (Optional)
var_start_time <- "2021-02-01T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. (Optional)
var_end_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Filtered stream
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$search_stream(backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$search_stream(backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `search_stream`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backfill_minutes** | **integer**| The number of minutes of backfill requested. | [optional] 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**FilteredStreamingTweetResponse**](FilteredStreamingTweetResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **space_buyers**
> Get2SpacesIdBuyersResponse space_buyers(id, pagination_token = var.pagination_token, max_results = 100, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Retrieve the list of Users who purchased a ticket to the given space

Retrieves the list of Users who purchased a ticket to the given space

### Example
```R
library(twitter)

var_id <- "1YqKDqWqdPLsV" # character | The ID of the Space to be retrieved.
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Retrieve the list of Users who purchased a ticket to the given space
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$space_buyers(var_id, pagination_token = var_pagination_token, max_results = var_max_results, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$space_buyers(var_id, pagination_token = var_pagination_token, max_results = var_max_results, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `space_buyers`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the Space to be retrieved. | 
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2SpacesIdBuyersResponse**](Get2SpacesIdBuyersResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **space_tweets**
> Get2SpacesIdTweetsResponse space_tweets(id, max_results = 100, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Retrieve Tweets from a Space.

Retrieves Tweets shared in the specified Space.

### Example
```R
library(twitter)

var_id <- "1YqKDqWqdPLsV" # character | The ID of the Space to be retrieved.
var_max_results <- 100 # integer | The number of Tweets to fetch from the provided space. If not provided, the value will default to the maximum of 100. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Retrieve Tweets from a Space.
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$space_tweets(var_id, max_results = var_max_results, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$space_tweets(var_id, max_results = var_max_results, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `space_tweets`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the Space to be retrieved. | 
 **max_results** | **integer**| The number of Tweets to fetch from the provided space. If not provided, the value will default to the maximum of 100. | [optional] [default to 100]
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2SpacesIdTweetsResponse**](Get2SpacesIdTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **tweet_counts_full_archive_search**
> Get2TweetsCountsAllResponse tweet_counts_full_archive_search(query, start_time = var.start_time, end_time = var.end_time, since_id = var.since_id, until_id = var.until_id, next_token = var.next_token, pagination_token = var.pagination_token, granularity = "hour", search_count_fields = var.search_count_fields)

Full archive search counts

Returns Tweet Counts that match a search query.

### Example
```R
library(twitter)

var_query <- "(from:TwitterDev OR from:TwitterAPI) has:media -is:retweet" # character | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
var_start_time <- "start_time_example" # character | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (Optional)
var_end_time <- "end_time_example" # character | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (Optional)
var_since_id <- "since_id_example" # character | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (Optional)
var_until_id <- "until_id_example" # character | Returns results with a Tweet ID less than (that is, older than) the specified ID. (Optional)
var_next_token <- "next_token_example" # character | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (Optional)
var_granularity <- "hour" # character | The granularity for the search counts results. (Optional)
var_search_count_fields <- list("end") # set[character] | A comma separated list of SearchCount fields to display. (Optional)

#Full archive search counts
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$tweet_counts_full_archive_search(var_query, start_time = var_start_time, end_time = var_end_time, since_id = var_since_id, until_id = var_until_id, next_token = var_next_token, pagination_token = var_pagination_token, granularity = var_granularity, search_count_fields = var_search_count_fields, data_file = "result.txt"),
             api_instance$tweet_counts_full_archive_search(var_query, start_time = var_start_time, end_time = var_end_time, since_id = var_since_id, until_id = var_until_id, next_token = var_next_token, pagination_token = var_pagination_token, granularity = var_granularity, search_count_fields = var_search_count_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `tweet_counts_full_archive_search`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**| One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. | 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **since_id** | **character**| Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **until_id** | **character**| Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **next_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **granularity** | Enum [minute, hour, day] | The granularity for the search counts results. | [optional] [default to &quot;hour&quot;]
 **search_count_fields** | Enum [end, start, tweet_count] | A comma separated list of SearchCount fields to display. | [optional] 

### Return type

[**Get2TweetsCountsAllResponse**](Get2TweetsCountsAllResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **tweet_counts_recent_search**
> Get2TweetsCountsRecentResponse tweet_counts_recent_search(query, start_time = var.start_time, end_time = var.end_time, since_id = var.since_id, until_id = var.until_id, next_token = var.next_token, pagination_token = var.pagination_token, granularity = "hour", search_count_fields = var.search_count_fields)

Recent search counts

Returns Tweet Counts from the last 7 days that match a search query.

### Example
```R
library(twitter)

var_query <- "(from:TwitterDev OR from:TwitterAPI) has:media -is:retweet" # character | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
var_start_time <- "start_time_example" # character | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (Optional)
var_end_time <- "end_time_example" # character | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (Optional)
var_since_id <- "since_id_example" # character | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (Optional)
var_until_id <- "until_id_example" # character | Returns results with a Tweet ID less than (that is, older than) the specified ID. (Optional)
var_next_token <- "next_token_example" # character | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (Optional)
var_granularity <- "hour" # character | The granularity for the search counts results. (Optional)
var_search_count_fields <- list("end") # set[character] | A comma separated list of SearchCount fields to display. (Optional)

#Recent search counts
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$tweet_counts_recent_search(var_query, start_time = var_start_time, end_time = var_end_time, since_id = var_since_id, until_id = var_until_id, next_token = var_next_token, pagination_token = var_pagination_token, granularity = var_granularity, search_count_fields = var_search_count_fields, data_file = "result.txt"),
             api_instance$tweet_counts_recent_search(var_query, start_time = var_start_time, end_time = var_end_time, since_id = var_since_id, until_id = var_until_id, next_token = var_next_token, pagination_token = var_pagination_token, granularity = var_granularity, search_count_fields = var_search_count_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `tweet_counts_recent_search`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**| One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. | 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **since_id** | **character**| Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **until_id** | **character**| Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **next_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **granularity** | Enum [minute, hour, day] | The granularity for the search counts results. | [optional] [default to &quot;hour&quot;]
 **search_count_fields** | Enum [end, start, tweet_count] | A comma separated list of SearchCount fields to display. | [optional] 

### Return type

[**Get2TweetsCountsRecentResponse**](Get2TweetsCountsRecentResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **tweets_fullarchive_search**
> Get2TweetsSearchAllResponse tweets_fullarchive_search(query, start_time = var.start_time, end_time = var.end_time, since_id = var.since_id, until_id = var.until_id, max_results = 10, next_token = var.next_token, pagination_token = var.pagination_token, sort_order = var.sort_order, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Full-archive search

Returns Tweets that match a search query.

### Example
```R
library(twitter)

var_query <- "(from:TwitterDev OR from:TwitterAPI) has:media -is:retweet" # character | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
var_start_time <- "start_time_example" # character | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (Optional)
var_end_time <- "end_time_example" # character | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (Optional)
var_since_id <- "since_id_example" # character | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (Optional)
var_until_id <- "until_id_example" # character | Returns results with a Tweet ID less than (that is, older than) the specified ID. (Optional)
var_max_results <- 10 # integer | The maximum number of search results to be returned by a request. (Optional)
var_next_token <- "next_token_example" # character | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (Optional)
var_sort_order <- "sort_order_example" # character | This order in which to return results. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Full-archive search
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$tweets_fullarchive_search(var_query, start_time = var_start_time, end_time = var_end_time, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, next_token = var_next_token, pagination_token = var_pagination_token, sort_order = var_sort_order, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$tweets_fullarchive_search(var_query, start_time = var_start_time, end_time = var_end_time, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, next_token = var_next_token, pagination_token = var_pagination_token, sort_order = var_sort_order, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `tweets_fullarchive_search`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**| One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. | 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **since_id** | **character**| Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **until_id** | **character**| Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **max_results** | **integer**| The maximum number of search results to be returned by a request. | [optional] [default to 10]
 **next_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **sort_order** | Enum [recency, relevancy] | This order in which to return results. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsSearchAllResponse**](Get2TweetsSearchAllResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **tweets_recent_search**
> Get2TweetsSearchRecentResponse tweets_recent_search(query, start_time = var.start_time, end_time = var.end_time, since_id = var.since_id, until_id = var.until_id, max_results = 10, next_token = var.next_token, pagination_token = var.pagination_token, sort_order = var.sort_order, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Recent search

Returns Tweets from the last 7 days that match a search query.

### Example
```R
library(twitter)

var_query <- "(from:TwitterDev OR from:TwitterAPI) has:media -is:retweet" # character | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
var_start_time <- "start_time_example" # character | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (Optional)
var_end_time <- "end_time_example" # character | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (Optional)
var_since_id <- "since_id_example" # character | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (Optional)
var_until_id <- "until_id_example" # character | Returns results with a Tweet ID less than (that is, older than) the specified ID. (Optional)
var_max_results <- 10 # integer | The maximum number of search results to be returned by a request. (Optional)
var_next_token <- "next_token_example" # character | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (Optional)
var_sort_order <- "sort_order_example" # character | This order in which to return results. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Recent search
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$tweets_recent_search(var_query, start_time = var_start_time, end_time = var_end_time, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, next_token = var_next_token, pagination_token = var_pagination_token, sort_order = var_sort_order, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$tweets_recent_search(var_query, start_time = var_start_time, end_time = var_end_time, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, next_token = var_next_token, pagination_token = var_pagination_token, sort_order = var_sort_order, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `tweets_recent_search`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**| One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. | 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **since_id** | **character**| Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **until_id** | **character**| Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **max_results** | **integer**| The maximum number of search results to be returned by a request. | [optional] [default to 10]
 **next_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **sort_order** | Enum [recency, relevancy] | This order in which to return results. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsSearchRecentResponse**](Get2TweetsSearchRecentResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_like**
> UsersLikesCreateResponse users_id_like(id, users_likes_create_request = var.users_likes_create_request)

Causes the User (in the path) to like the specified Tweet

Causes the User (in the path) to like the specified Tweet. The User in the path must match the User context authorizing the request.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that is requesting to like the Tweet.
var_users_likes_create_request <- UsersLikesCreateRequest$new("tweet_id_example") # UsersLikesCreateRequest |  (Optional)

#Causes the User (in the path) to like the specified Tweet
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_like(var_id, users_likes_create_request = var_users_likes_create_request, data_file = "result.txt"),
             api_instance$users_id_like(var_id, users_likes_create_request = var_users_likes_create_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_like`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the authenticated source User that is requesting to like the Tweet. | 
 **users_likes_create_request** | [**UsersLikesCreateRequest**](UsersLikesCreateRequest.md)|  | [optional] 

### Return type

[**UsersLikesCreateResponse**](UsersLikesCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_liked_tweets**
> Get2UsersIdLikedTweetsResponse users_id_liked_tweets(id, max_results = var.max_results, pagination_token = var.pagination_token, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Returns Tweet objects liked by the provided User ID

Returns a list of Tweets liked by the provided User ID

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_max_results <- 56 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Returns Tweet objects liked by the provided User ID
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_liked_tweets(var_id, max_results = var_max_results, pagination_token = var_pagination_token, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$users_id_liked_tweets(var_id, max_results = var_max_results, pagination_token = var_pagination_token, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_liked_tweets`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the User to lookup. | 
 **max_results** | **integer**| The maximum number of results. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdLikedTweetsResponse**](Get2UsersIdLikedTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_mentions**
> Get2UsersIdMentionsResponse users_id_mentions(id, since_id = var.since_id, until_id = var.until_id, max_results = var.max_results, pagination_token = var.pagination_token, start_time = var.start_time, end_time = var.end_time, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

User mention timeline by User ID

Returns Tweet objects that mention username associated to the provided User ID

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_since_id <- "since_id_example" # character | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. (Optional)
var_until_id <- "1346889436626259968" # character | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. (Optional)
var_max_results <- 56 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_start_time <- "2021-02-01T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. (Optional)
var_end_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#User mention timeline by User ID
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_mentions(var_id, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, pagination_token = var_pagination_token, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$users_id_mentions(var_id, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, pagination_token = var_pagination_token, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_mentions`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the User to lookup. | 
 **since_id** | **character**| The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] 
 **until_id** | **character**| The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] 
 **max_results** | **integer**| The maximum number of results. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdMentionsResponse**](Get2UsersIdMentionsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_retweets**
> UsersRetweetsCreateResponse users_id_retweets(id, users_retweets_create_request = var.users_retweets_create_request)

Causes the User (in the path) to retweet the specified Tweet.

Causes the User (in the path) to retweet the specified Tweet. The User in the path must match the User context authorizing the request.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that is requesting to retweet the Tweet.
var_users_retweets_create_request <- UsersRetweetsCreateRequest$new("tweet_id_example") # UsersRetweetsCreateRequest |  (Optional)

#Causes the User (in the path) to retweet the specified Tweet.
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_retweets(var_id, users_retweets_create_request = var_users_retweets_create_request, data_file = "result.txt"),
             api_instance$users_id_retweets(var_id, users_retweets_create_request = var_users_retweets_create_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_retweets`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the authenticated source User that is requesting to retweet the Tweet. | 
 **users_retweets_create_request** | [**UsersRetweetsCreateRequest**](UsersRetweetsCreateRequest.md)|  | [optional] 

### Return type

[**UsersRetweetsCreateResponse**](UsersRetweetsCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_timeline**
> Get2UsersIdTimelinesReverseChronologicalResponse users_id_timeline(id, since_id = var.since_id, until_id = var.until_id, max_results = var.max_results, pagination_token = var.pagination_token, exclude = var.exclude, start_time = var.start_time, end_time = var.end_time, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

User home timeline by User ID

Returns Tweet objects that appears in the provided User ID's home timeline

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User to list Reverse Chronological Timeline Tweets of.
var_since_id <- "791775337160081409" # character | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. (Optional)
var_until_id <- "1346889436626259968" # character | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. (Optional)
var_max_results <- 56 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_exclude <- list("replies") # set[character] | The set of entities to exclude (e.g. 'replies' or 'retweets'). (Optional)
var_start_time <- "2021-02-01T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. (Optional)
var_end_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#User home timeline by User ID
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_timeline(var_id, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, pagination_token = var_pagination_token, exclude = var_exclude, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$users_id_timeline(var_id, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, pagination_token = var_pagination_token, exclude = var_exclude, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_timeline`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the authenticated source User to list Reverse Chronological Timeline Tweets of. | 
 **since_id** | **character**| The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] 
 **until_id** | **character**| The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] 
 **max_results** | **integer**| The maximum number of results. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **exclude** | Enum [replies, retweets] | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdTimelinesReverseChronologicalResponse**](Get2UsersIdTimelinesReverseChronologicalResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_tweets**
> Get2UsersIdTweetsResponse users_id_tweets(id, since_id = var.since_id, until_id = var.until_id, max_results = var.max_results, pagination_token = var.pagination_token, exclude = var.exclude, start_time = var.start_time, end_time = var.end_time, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

User Tweets timeline by User ID

Returns a list of Tweets authored by the provided User ID

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_since_id <- "791775337160081409" # character | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. (Optional)
var_until_id <- "1346889436626259968" # character | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. (Optional)
var_max_results <- 56 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_exclude <- list("replies") # set[character] | The set of entities to exclude (e.g. 'replies' or 'retweets'). (Optional)
var_start_time <- "2021-02-01T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. (Optional)
var_end_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#User Tweets timeline by User ID
api_instance <- TweetsApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_tweets(var_id, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, pagination_token = var_pagination_token, exclude = var_exclude, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$users_id_tweets(var_id, since_id = var_since_id, until_id = var_until_id, max_results = var_max_results, pagination_token = var_pagination_token, exclude = var_exclude, start_time = var_start_time, end_time = var_end_time, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_tweets`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the User to lookup. | 
 **since_id** | **character**| The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] 
 **until_id** | **character**| The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] 
 **max_results** | **integer**| The maximum number of results. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **exclude** | Enum [replies, retweets] | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdTweetsResponse**](Get2UsersIdTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_unlike**
> UsersLikesDeleteResponse users_id_unlike(id, tweet_id)

Causes the User (in the path) to unlike the specified Tweet

Causes the User (in the path) to unlike the specified Tweet. The User must match the User context authorizing the request

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that is requesting to unlike the Tweet.
var_tweet_id <- "tweet_id_example" # character | The ID of the Tweet that the User is requesting to unlike.

#Causes the User (in the path) to unlike the specified Tweet
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_unlike(var_id, var_tweet_id, data_file = "result.txt"),
             api_instance$users_id_unlike(var_id, var_tweet_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_unlike`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the authenticated source User that is requesting to unlike the Tweet. | 
 **tweet_id** | **character**| The ID of the Tweet that the User is requesting to unlike. | 

### Return type

[**UsersLikesDeleteResponse**](UsersLikesDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_unretweets**
> UsersRetweetsDeleteResponse users_id_unretweets(id, source_tweet_id)

Causes the User (in the path) to unretweet the specified Tweet

Causes the User (in the path) to unretweet the specified Tweet. The User must match the User context authorizing the request

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that is requesting to retweet the Tweet.
var_source_tweet_id <- "source_tweet_id_example" # character | The ID of the Tweet that the User is requesting to unretweet.

#Causes the User (in the path) to unretweet the specified Tweet
api_instance <- TweetsApi$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_unretweets(var_id, var_source_tweet_id, data_file = "result.txt"),
             api_instance$users_id_unretweets(var_id, var_source_tweet_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_unretweets`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the authenticated source User that is requesting to retweet the Tweet. | 
 **source_tweet_id** | **character**| The ID of the Tweet that the User is requesting to unretweet. | 

### Return type

[**UsersRetweetsDeleteResponse**](UsersRetweetsDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

