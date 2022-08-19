# BookmarksApi

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_users_id_bookmarks**](BookmarksApi.md#get_users_id_bookmarks) | **GET** /2/users/{id}/bookmarks | Bookmarks by User
[**post_users_id_bookmarks**](BookmarksApi.md#post_users_id_bookmarks) | **POST** /2/users/{id}/bookmarks | Add Tweet to Bookmarks
[**users_id_bookmarks_delete**](BookmarksApi.md#users_id_bookmarks_delete) | **DELETE** /2/users/{id}/bookmarks/{tweet_id} | Remove a bookmarked Tweet


# **get_users_id_bookmarks**
> Get2UsersIdBookmarksResponse get_users_id_bookmarks(id, max_results = var.max_results, pagination_token = var.pagination_token, tweet_fields = var.tweet_fields, expansions = var.expansions, media_fields = var.media_fields, poll_fields = var.poll_fields, user_fields = var.user_fields, place_fields = var.place_fields)

Bookmarks by User

Returns Tweet objects that have been bookmarked by the requesting User

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User for whom to return results.
var_max_results <- 56 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

# Bookmarks by User
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$bookmarks_api$get_users_id_bookmarks(var_id, max_results = var_max_results, pagination_token = var_pagination_token, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             api_instance$bookmarks_api$get_users_id_bookmarks(var_id, max_results = var_max_results, pagination_token = var_pagination_token, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_users_id_bookmarks`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object$toJSONString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the authenticated source User for whom to return results. | 
 **max_results** | **integer**| The maximum number of results. | [optional] 
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | Enum [attachments.media_keys, attachments.poll_ids, author_id, entities.mentions.username, geo.place_id, in_reply_to_user_id, referenced_tweets.id, referenced_tweets.id.author_id] | A comma separated list of fields to expand. | [optional] 
 **media_fields** | Enum [alt_text, duration_ms, height, media_key, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics, type, url, variants, width] | A comma separated list of Media fields to display. | [optional] 
 **poll_fields** | Enum [duration_minutes, end_datetime, id, options, voting_status] | A comma separated list of Poll fields to display. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **place_fields** | Enum [contained_within, country, country_code, full_name, geo, id, name, place_type] | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdBookmarksResponse**](Get2UsersIdBookmarksResponse.md)

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

# **post_users_id_bookmarks**
> BookmarkMutationResponse post_users_id_bookmarks(id, bookmark_add_request)

Add Tweet to Bookmarks

Adds a Tweet (ID in the body) to the requesting User's (in the path) bookmarks

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User for whom to add bookmarks.
var_bookmark_add_request <- BookmarkAddRequest$new("tweet_id_example") # BookmarkAddRequest | 

# Add Tweet to Bookmarks
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$bookmarks_api$post_users_id_bookmarks(var_id, var_bookmark_add_request, data_file = "result.txt"),
             api_instance$bookmarks_api$post_users_id_bookmarks(var_id, var_bookmark_add_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `post_users_id_bookmarks`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object$toJSONString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the authenticated source User for whom to add bookmarks. | 
 **bookmark_add_request** | [**BookmarkAddRequest**](BookmarkAddRequest.md)|  | 

### Return type

[**BookmarkMutationResponse**](BookmarkMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request has succeeded. |  -  |
| **0** | The request has failed. |  -  |

# **users_id_bookmarks_delete**
> BookmarkMutationResponse users_id_bookmarks_delete(id, tweet_id)

Remove a bookmarked Tweet

Removes a Tweet from the requesting User's bookmarked Tweets.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User whose bookmark is to be removed.
var_tweet_id <- "tweet_id_example" # character | The ID of the Tweet that the source User is removing from bookmarks.

# Remove a bookmarked Tweet
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$bookmarks_api$users_id_bookmarks_delete(var_id, var_tweet_id, data_file = "result.txt"),
             api_instance$bookmarks_api$users_id_bookmarks_delete(var_id, var_tweet_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_bookmarks_delete`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object$toJSONString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The ID of the authenticated source User whose bookmark is to be removed. | 
 **tweet_id** | **character**| The ID of the Tweet that the source User is removing from bookmarks. | 

### Return type

[**BookmarkMutationResponse**](BookmarkMutationResponse.md)

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

