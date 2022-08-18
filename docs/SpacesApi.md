# SpacesApi

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_space_by_id**](SpacesApi.md#find_space_by_id) | **GET** /2/spaces/{id} | Space lookup by Space ID
[**find_spaces_by_creator_ids**](SpacesApi.md#find_spaces_by_creator_ids) | **GET** /2/spaces/by/creator_ids | Space lookup by their creators
[**find_spaces_by_ids**](SpacesApi.md#find_spaces_by_ids) | **GET** /2/spaces | Space lookup up Space IDs
[**search_spaces**](SpacesApi.md#search_spaces) | **GET** /2/spaces/search | Search for Spaces
[**space_buyers**](SpacesApi.md#space_buyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of Users who purchased a ticket to the given space
[**space_tweets**](SpacesApi.md#space_tweets) | **GET** /2/spaces/{id}/tweets | Retrieve Tweets from a Space.


# **find_space_by_id**
> Get2SpacesIdResponse find_space_by_id(id, space_fields = var.space_fields, expansions = var.expansions, user_fields = var.user_fields, topic_fields = var.topic_fields)

Space lookup by Space ID

Returns a variety of information about the Space specified by the requested ID

### Example
```R
library(twitter)

var_id <- "1YqKDqWqdPLsV" # character | The ID of the Space to be retrieved.
var_space_fields <- list("created_at") # set[character] | A comma separated list of Space fields to display. (Optional)
var_expansions <- list("creator_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_topic_fields <- list("description") # set[character] | A comma separated list of Topic fields to display. (Optional)

#Space lookup by Space ID
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_space_by_id(var_id, space_fields = var_space_fields, expansions = var_expansions, user_fields = var_user_fields, topic_fields = var_topic_fields, data_file = "result.txt"),
             api_instance$spaces_api$find_space_by_id(var_id, space_fields = var_space_fields, expansions = var_expansions, user_fields = var_user_fields, topic_fields = var_topic_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_space_by_id`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object)
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
 **space_fields** | Enum [created_at, creator_id, ended_at, host_ids, id, invited_user_ids, is_ticketed, lang, participant_count, scheduled_start, speaker_ids, started_at, state, subscriber_count, title, topic_ids, updated_at] | A comma separated list of Space fields to display. | [optional] 
 **expansions** | Enum [creator_id, host_ids, invited_user_ids, speaker_ids, topic_ids] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **topic_fields** | Enum [description, id, name] | A comma separated list of Topic fields to display. | [optional] 

### Return type

[**Get2SpacesIdResponse**](Get2SpacesIdResponse.md)

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

# **find_spaces_by_creator_ids**
> Get2SpacesByCreatorIdsResponse find_spaces_by_creator_ids(user_ids, space_fields = var.space_fields, expansions = var.expansions, user_fields = var.user_fields, topic_fields = var.topic_fields)

Space lookup by their creators

Returns a variety of information about the Spaces created by the provided User IDs

### Example
```R
library(twitter)

var_user_ids <- list("inner_example") # array[character] | The IDs of Users to search through.
var_space_fields <- list("created_at") # set[character] | A comma separated list of Space fields to display. (Optional)
var_expansions <- list("creator_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_topic_fields <- list("description") # set[character] | A comma separated list of Topic fields to display. (Optional)

#Space lookup by their creators
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_spaces_by_creator_ids(var_user_ids, space_fields = var_space_fields, expansions = var_expansions, user_fields = var_user_fields, topic_fields = var_topic_fields, data_file = "result.txt"),
             api_instance$spaces_api$find_spaces_by_creator_ids(var_user_ids, space_fields = var_space_fields, expansions = var_expansions, user_fields = var_user_fields, topic_fields = var_topic_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_spaces_by_creator_ids`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object)
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_ids** | list( **character** )| The IDs of Users to search through. | 
 **space_fields** | Enum [created_at, creator_id, ended_at, host_ids, id, invited_user_ids, is_ticketed, lang, participant_count, scheduled_start, speaker_ids, started_at, state, subscriber_count, title, topic_ids, updated_at] | A comma separated list of Space fields to display. | [optional] 
 **expansions** | Enum [creator_id, host_ids, invited_user_ids, speaker_ids, topic_ids] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **topic_fields** | Enum [description, id, name] | A comma separated list of Topic fields to display. | [optional] 

### Return type

[**Get2SpacesByCreatorIdsResponse**](Get2SpacesByCreatorIdsResponse.md)

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

# **find_spaces_by_ids**
> Get2SpacesResponse find_spaces_by_ids(ids, space_fields = var.space_fields, expansions = var.expansions, user_fields = var.user_fields, topic_fields = var.topic_fields)

Space lookup up Space IDs

Returns a variety of information about the Spaces specified by the requested IDs

### Example
```R
library(twitter)

var_ids <- list("inner_example") # array[character] | The list of Space IDs to return.
var_space_fields <- list("created_at") # set[character] | A comma separated list of Space fields to display. (Optional)
var_expansions <- list("creator_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_topic_fields <- list("description") # set[character] | A comma separated list of Topic fields to display. (Optional)

#Space lookup up Space IDs
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_spaces_by_ids(var_ids, space_fields = var_space_fields, expansions = var_expansions, user_fields = var_user_fields, topic_fields = var_topic_fields, data_file = "result.txt"),
             api_instance$spaces_api$find_spaces_by_ids(var_ids, space_fields = var_space_fields, expansions = var_expansions, user_fields = var_user_fields, topic_fields = var_topic_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_spaces_by_ids`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object)
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | list( **character** )| The list of Space IDs to return. | 
 **space_fields** | Enum [created_at, creator_id, ended_at, host_ids, id, invited_user_ids, is_ticketed, lang, participant_count, scheduled_start, speaker_ids, started_at, state, subscriber_count, title, topic_ids, updated_at] | A comma separated list of Space fields to display. | [optional] 
 **expansions** | Enum [creator_id, host_ids, invited_user_ids, speaker_ids, topic_ids] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **topic_fields** | Enum [description, id, name] | A comma separated list of Topic fields to display. | [optional] 

### Return type

[**Get2SpacesResponse**](Get2SpacesResponse.md)

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

# **search_spaces**
> Get2SpacesSearchResponse search_spaces(query, state = "all", max_results = 100, space_fields = var.space_fields, expansions = var.expansions, user_fields = var.user_fields, topic_fields = var.topic_fields)

Search for Spaces

Returns Spaces that match the provided query.

### Example
```R
library(twitter)

var_query <- "crypto" # character | The search query.
var_state <- "all" # character | The state of Spaces to search for. (Optional)
var_max_results <- 100 # integer | The number of results to return. (Optional)
var_space_fields <- list("created_at") # set[character] | A comma separated list of Space fields to display. (Optional)
var_expansions <- list("creator_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_topic_fields <- list("description") # set[character] | A comma separated list of Topic fields to display. (Optional)

#Search for Spaces
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$search_spaces(var_query, state = var_state, max_results = var_max_results, space_fields = var_space_fields, expansions = var_expansions, user_fields = var_user_fields, topic_fields = var_topic_fields, data_file = "result.txt"),
             api_instance$spaces_api$search_spaces(var_query, state = var_state, max_results = var_max_results, space_fields = var_space_fields, expansions = var_expansions, user_fields = var_user_fields, topic_fields = var_topic_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `search_spaces`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object)
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **character**| The search query. | 
 **state** | Enum [live, scheduled, all] | The state of Spaces to search for. | [optional] [default to &quot;all&quot;]
 **max_results** | **integer**| The number of results to return. | [optional] [default to 100]
 **space_fields** | Enum [created_at, creator_id, ended_at, host_ids, id, invited_user_ids, is_ticketed, lang, participant_count, scheduled_start, speaker_ids, started_at, state, subscriber_count, title, topic_ids, updated_at] | A comma separated list of Space fields to display. | [optional] 
 **expansions** | Enum [creator_id, host_ids, invited_user_ids, speaker_ids, topic_ids] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **topic_fields** | Enum [description, id, name] | A comma separated list of Topic fields to display. | [optional] 

### Return type

[**Get2SpacesSearchResponse**](Get2SpacesSearchResponse.md)

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
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$space_buyers(var_id, pagination_token = var_pagination_token, max_results = var_max_results, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$spaces_api$space_buyers(var_id, pagination_token = var_pagination_token, max_results = var_max_results, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `space_buyers`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object)
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
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$space_tweets(var_id, max_results = var_max_results, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$spaces_api$space_tweets(var_id, max_results = var_max_results, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `space_tweets`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object)
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

