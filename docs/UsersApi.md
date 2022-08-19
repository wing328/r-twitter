# UsersApi

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_my_user**](UsersApi.md#find_my_user) | **GET** /2/users/me | User lookup me
[**find_user_by_id**](UsersApi.md#find_user_by_id) | **GET** /2/users/{id} | User lookup by ID
[**find_user_by_username**](UsersApi.md#find_user_by_username) | **GET** /2/users/by/username/{username} | User lookup by username
[**find_users_by_id**](UsersApi.md#find_users_by_id) | **GET** /2/users | User lookup by IDs
[**find_users_by_username**](UsersApi.md#find_users_by_username) | **GET** /2/users/by | User lookup by usernames
[**list_get_followers**](UsersApi.md#list_get_followers) | **GET** /2/lists/{id}/followers | Returns User objects that follow a List by the provided List ID
[**list_get_members**](UsersApi.md#list_get_members) | **GET** /2/lists/{id}/members | Returns User objects that are members of a List by the provided List ID.
[**tweets_id_liking_users**](UsersApi.md#tweets_id_liking_users) | **GET** /2/tweets/{id}/liking_users | Returns User objects that have liked the provided Tweet ID
[**tweets_id_retweeting_users**](UsersApi.md#tweets_id_retweeting_users) | **GET** /2/tweets/{id}/retweeted_by | Returns User objects that have retweeted the provided Tweet ID
[**users_id_block**](UsersApi.md#users_id_block) | **POST** /2/users/{id}/blocking | Block User by User ID
[**users_id_blocking**](UsersApi.md#users_id_blocking) | **GET** /2/users/{id}/blocking | Returns User objects that are blocked by provided User ID
[**users_id_follow**](UsersApi.md#users_id_follow) | **POST** /2/users/{id}/following | Follow User
[**users_id_followers**](UsersApi.md#users_id_followers) | **GET** /2/users/{id}/followers | Returns User objects that follow a List by the provided User ID
[**users_id_following**](UsersApi.md#users_id_following) | **GET** /2/users/{id}/following | Following by User ID
[**users_id_mute**](UsersApi.md#users_id_mute) | **POST** /2/users/{id}/muting | Mute User by User ID.
[**users_id_muting**](UsersApi.md#users_id_muting) | **GET** /2/users/{id}/muting | Returns User objects that are muted by the provided User ID
[**users_id_unblock**](UsersApi.md#users_id_unblock) | **DELETE** /2/users/{source_user_id}/blocking/{target_user_id} | Unblock User by User ID
[**users_id_unfollow**](UsersApi.md#users_id_unfollow) | **DELETE** /2/users/{source_user_id}/following/{target_user_id} | Unfollow User
[**users_id_unmute**](UsersApi.md#users_id_unmute) | **DELETE** /2/users/{source_user_id}/muting/{target_user_id} | Unmute User by User ID


# **find_my_user**
> Get2UsersMeResponse find_my_user(user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

User lookup me

This endpoint returns information about the requesting User.

### Example
```R
library(twitter)

var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#User lookup me
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_my_user(user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$find_my_user(user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_my_user`:")
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
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersMeResponse**](Get2UsersMeResponse.md)

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

# **find_user_by_id**
> Get2UsersIdResponse find_user_by_id(id, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

User lookup by ID

This endpoint returns information about a User. Specify User by ID.

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#User lookup by ID
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_user_by_id(var_id, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$find_user_by_id(var_id, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_user_by_id`:")
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
 **id** | **character**| The ID of the User to lookup. | 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdResponse**](Get2UsersIdResponse.md)

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

# **find_user_by_username**
> Get2UsersByUsernameUsernameResponse find_user_by_username(username, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

User lookup by username

This endpoint returns information about a User. Specify User by username.

### Example
```R
library(twitter)

var_username <- "TwitterDev" # character | A username.
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#User lookup by username
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_user_by_username(var_username, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$find_user_by_username(var_username, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_user_by_username`:")
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
 **username** | **character**| A username. | 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersByUsernameUsernameResponse**](Get2UsersByUsernameUsernameResponse.md)

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

# **find_users_by_id**
> Get2UsersResponse find_users_by_id(ids, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

User lookup by IDs

This endpoint returns information about Users. Specify Users by their ID.

### Example
```R
library(twitter)

var_ids <- list("inner_example") # array[character] | A list of User IDs, comma-separated. You can specify up to 100 IDs.
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#User lookup by IDs
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_users_by_id(var_ids, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$find_users_by_id(var_ids, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_users_by_id`:")
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
 **ids** | list( **character** )| A list of User IDs, comma-separated. You can specify up to 100 IDs. | 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersResponse**](Get2UsersResponse.md)

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

# **find_users_by_username**
> Get2UsersByResponse find_users_by_username(usernames, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

User lookup by usernames

This endpoint returns information about Users. Specify Users by their username.

### Example
```R
library(twitter)

var_usernames <- list("inner_example") # array[character] | A list of usernames, comma-separated.
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#User lookup by usernames
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_users_by_username(var_usernames, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$find_users_by_username(var_usernames, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `find_users_by_username`:")
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
 **usernames** | list( **character** )| A list of usernames, comma-separated. | 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersByResponse**](Get2UsersByResponse.md)

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

# **list_get_followers**
> Get2ListsIdFollowersResponse list_get_followers(id, max_results = 100, pagination_token = var.pagination_token, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Returns User objects that follow a List by the provided List ID

Returns a list of Users that follow a List by the provided List ID

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the List.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Returns User objects that follow a List by the provided List ID
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_get_followers(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$list_get_followers(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_get_followers`:")
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
 **id** | **character**| The ID of the List. | 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2ListsIdFollowersResponse**](Get2ListsIdFollowersResponse.md)

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

# **list_get_members**
> Get2ListsIdMembersResponse list_get_members(id, max_results = 100, pagination_token = var.pagination_token, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Returns User objects that are members of a List by the provided List ID.

Returns a list of Users that are members of a List by the provided List ID.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the List.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Returns User objects that are members of a List by the provided List ID.
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_get_members(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$list_get_members(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_get_members`:")
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
 **id** | **character**| The ID of the List. | 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2ListsIdMembersResponse**](Get2ListsIdMembersResponse.md)

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

# **tweets_id_liking_users**
> Get2TweetsIdLikingUsersResponse tweets_id_liking_users(id, max_results = 100, pagination_token = var.pagination_token, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Returns User objects that have liked the provided Tweet ID

Returns a list of Users that have liked the provided Tweet ID

### Example
```R
library(twitter)

var_id <- "id_example" # character | A single Tweet ID.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Returns User objects that have liked the provided Tweet ID
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$tweets_id_liking_users(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$tweets_id_liking_users(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `tweets_id_liking_users`:")
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
 **id** | **character**| A single Tweet ID. | 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2TweetsIdLikingUsersResponse**](Get2TweetsIdLikingUsersResponse.md)

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

# **tweets_id_retweeting_users**
> Get2TweetsIdRetweetedByResponse tweets_id_retweeting_users(id, max_results = 100, pagination_token = var.pagination_token, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Returns User objects that have retweeted the provided Tweet ID

Returns a list of Users that have retweeted the provided Tweet ID

### Example
```R
library(twitter)

var_id <- "id_example" # character | A single Tweet ID.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Returns User objects that have retweeted the provided Tweet ID
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$tweets_id_retweeting_users(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$tweets_id_retweeting_users(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `tweets_id_retweeting_users`:")
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
 **id** | **character**| A single Tweet ID. | 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2TweetsIdRetweetedByResponse**](Get2TweetsIdRetweetedByResponse.md)

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

# **users_id_block**
> BlockUserMutationResponse users_id_block(id, block_user_request)

Block User by User ID

Causes the User (in the path) to block the target User. The User (in the path) must match the User context authorizing the request

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that is requesting to block the target User.
var_block_user_request <- BlockUserRequest$new("target_user_id_example") # BlockUserRequest | 

#Block User by User ID
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_block(var_id, var_block_user_request, data_file = "result.txt"),
             api_instance$users_api$users_id_block(var_id, var_block_user_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_block`:")
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
 **id** | **character**| The ID of the authenticated source User that is requesting to block the target User. | 
 **block_user_request** | [**BlockUserRequest**](BlockUserRequest.md)|  | 

### Return type

[**BlockUserMutationResponse**](BlockUserMutationResponse.md)

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

# **users_id_blocking**
> Get2UsersIdBlockingResponse users_id_blocking(id, max_results = var.max_results, pagination_token = var.pagination_token, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Returns User objects that are blocked by provided User ID

Returns a list of Users that are blocked by the provided User ID

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User for whom to return results.
var_max_results <- 56 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Returns User objects that are blocked by provided User ID
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_blocking(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$users_id_blocking(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_blocking`:")
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
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdBlockingResponse**](Get2UsersIdBlockingResponse.md)

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

# **users_id_follow**
> UsersFollowingCreateResponse users_id_follow(id, users_following_create_request = var.users_following_create_request)

Follow User

Causes the User(in the path) to follow, or “request to follow” for protected Users, the target User. The User(in the path) must match the User context authorizing the request

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that is requesting to follow the target User.
var_users_following_create_request <- UsersFollowingCreateRequest$new("target_user_id_example") # UsersFollowingCreateRequest |  (Optional)

#Follow User
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_follow(var_id, users_following_create_request = var_users_following_create_request, data_file = "result.txt"),
             api_instance$users_api$users_id_follow(var_id, users_following_create_request = var_users_following_create_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_follow`:")
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
 **id** | **character**| The ID of the authenticated source User that is requesting to follow the target User. | 
 **users_following_create_request** | [**UsersFollowingCreateRequest**](UsersFollowingCreateRequest.md)|  | [optional] 

### Return type

[**UsersFollowingCreateResponse**](UsersFollowingCreateResponse.md)

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

# **users_id_followers**
> Get2UsersIdFollowersResponse users_id_followers(id, max_results = var.max_results, pagination_token = var.pagination_token, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Returns User objects that follow a List by the provided User ID

Returns a list of Users that follow the provided User ID

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_max_results <- 56 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Returns User objects that follow a List by the provided User ID
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_followers(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$users_id_followers(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_followers`:")
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
 **id** | **character**| The ID of the User to lookup. | 
 **max_results** | **integer**| The maximum number of results. | [optional] 
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdFollowersResponse**](Get2UsersIdFollowersResponse.md)

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

# **users_id_following**
> Get2UsersIdFollowingResponse users_id_following(id, max_results = var.max_results, pagination_token = var.pagination_token, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Following by User ID

Returns a list of Users that are being followed by the provided User ID

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_max_results <- 56 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Following by User ID
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_following(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$users_id_following(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_following`:")
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
 **id** | **character**| The ID of the User to lookup. | 
 **max_results** | **integer**| The maximum number of results. | [optional] 
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdFollowingResponse**](Get2UsersIdFollowingResponse.md)

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

# **users_id_mute**
> MuteUserMutationResponse users_id_mute(id, mute_user_request = var.mute_user_request)

Mute User by User ID.

Causes the User (in the path) to mute the target User. The User (in the path) must match the User context authorizing the request.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that is requesting to mute the target User.
var_mute_user_request <- MuteUserRequest$new("target_user_id_example") # MuteUserRequest |  (Optional)

#Mute User by User ID.
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_mute(var_id, mute_user_request = var_mute_user_request, data_file = "result.txt"),
             api_instance$users_api$users_id_mute(var_id, mute_user_request = var_mute_user_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_mute`:")
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
 **id** | **character**| The ID of the authenticated source User that is requesting to mute the target User. | 
 **mute_user_request** | [**MuteUserRequest**](MuteUserRequest.md)|  | [optional] 

### Return type

[**MuteUserMutationResponse**](MuteUserMutationResponse.md)

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

# **users_id_muting**
> Get2UsersIdMutingResponse users_id_muting(id, max_results = 100, pagination_token = var.pagination_token, user_fields = var.user_fields, expansions = var.expansions, tweet_fields = var.tweet_fields)

Returns User objects that are muted by the provided User ID

Returns a list of Users that are muted by the provided User ID

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User for whom to return results.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get the next 'page' of results. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)

#Returns User objects that are muted by the provided User ID
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_muting(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$users_api$users_id_muting(var_id, max_results = var_max_results, pagination_token = var_pagination_token, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_muting`:")
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
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 
 **expansions** | Enum [pinned_tweet_id] | A comma separated list of fields to expand. | [optional] 
 **tweet_fields** | Enum [attachments, author_id, context_annotations, conversation_id, created_at, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld] | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdMutingResponse**](Get2UsersIdMutingResponse.md)

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

# **users_id_unblock**
> BlockUserMutationResponse users_id_unblock(source_user_id, target_user_id)

Unblock User by User ID

Causes the source User to unblock the target User. The source User must match the User context authorizing the request

### Example
```R
library(twitter)

var_source_user_id <- "source_user_id_example" # character | The ID of the authenticated source User that is requesting to unblock the target User.
var_target_user_id <- "target_user_id_example" # character | The ID of the User that the source User is requesting to unblock.

#Unblock User by User ID
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_unblock(var_source_user_id, var_target_user_id, data_file = "result.txt"),
             api_instance$users_api$users_id_unblock(var_source_user_id, var_target_user_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_unblock`:")
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
 **source_user_id** | **character**| The ID of the authenticated source User that is requesting to unblock the target User. | 
 **target_user_id** | **character**| The ID of the User that the source User is requesting to unblock. | 

### Return type

[**BlockUserMutationResponse**](BlockUserMutationResponse.md)

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

# **users_id_unfollow**
> UsersFollowingDeleteResponse users_id_unfollow(source_user_id, target_user_id)

Unfollow User

Causes the source User to unfollow the target User. The source User must match the User context authorizing the request

### Example
```R
library(twitter)

var_source_user_id <- "source_user_id_example" # character | The ID of the authenticated source User that is requesting to unfollow the target User.
var_target_user_id <- "target_user_id_example" # character | The ID of the User that the source User is requesting to unfollow.

#Unfollow User
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_unfollow(var_source_user_id, var_target_user_id, data_file = "result.txt"),
             api_instance$users_api$users_id_unfollow(var_source_user_id, var_target_user_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_unfollow`:")
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
 **source_user_id** | **character**| The ID of the authenticated source User that is requesting to unfollow the target User. | 
 **target_user_id** | **character**| The ID of the User that the source User is requesting to unfollow. | 

### Return type

[**UsersFollowingDeleteResponse**](UsersFollowingDeleteResponse.md)

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

# **users_id_unmute**
> MuteUserMutationResponse users_id_unmute(source_user_id, target_user_id)

Unmute User by User ID

Causes the source User to unmute the target User. The source User must match the User context authorizing the request

### Example
```R
library(twitter)

var_source_user_id <- "source_user_id_example" # character | The ID of the authenticated source User that is requesting to unmute the target User.
var_target_user_id <- "target_user_id_example" # character | The ID of the User that the source User is requesting to unmute.

#Unmute User by User ID
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$users_id_unmute(var_source_user_id, var_target_user_id, data_file = "result.txt"),
             api_instance$users_api$users_id_unmute(var_source_user_id, var_target_user_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `users_id_unmute`:")
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
 **source_user_id** | **character**| The ID of the authenticated source User that is requesting to unmute the target User. | 
 **target_user_id** | **character**| The ID of the User that the source User is requesting to unmute. | 

### Return type

[**MuteUserMutationResponse**](MuteUserMutationResponse.md)

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

