# ListsApi

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_list_memberships**](ListsApi.md#get_user_list_memberships) | **GET** /2/users/{id}/list_memberships | Get a User&#39;s List Memberships
[**list_add_member**](ListsApi.md#list_add_member) | **POST** /2/lists/{id}/members | Add a List member
[**list_id_create**](ListsApi.md#list_id_create) | **POST** /2/lists | Create List
[**list_id_delete**](ListsApi.md#list_id_delete) | **DELETE** /2/lists/{id} | Delete List
[**list_id_get**](ListsApi.md#list_id_get) | **GET** /2/lists/{id} | List lookup by List ID.
[**list_id_update**](ListsApi.md#list_id_update) | **PUT** /2/lists/{id} | Update List.
[**list_remove_member**](ListsApi.md#list_remove_member) | **DELETE** /2/lists/{id}/members/{user_id} | Remove a List member
[**list_user_follow**](ListsApi.md#list_user_follow) | **POST** /2/users/{id}/followed_lists | Follow a List
[**list_user_owned_lists**](ListsApi.md#list_user_owned_lists) | **GET** /2/users/{id}/owned_lists | Get a User&#39;s Owned Lists.
[**list_user_pin**](ListsApi.md#list_user_pin) | **POST** /2/users/{id}/pinned_lists | Pin a List
[**list_user_pinned_lists**](ListsApi.md#list_user_pinned_lists) | **GET** /2/users/{id}/pinned_lists | Get a User&#39;s Pinned Lists
[**list_user_unfollow**](ListsApi.md#list_user_unfollow) | **DELETE** /2/users/{id}/followed_lists/{list_id} | Unfollow a List
[**list_user_unpin**](ListsApi.md#list_user_unpin) | **DELETE** /2/users/{id}/pinned_lists/{list_id} | Unpin a List
[**user_followed_lists**](ListsApi.md#user_followed_lists) | **GET** /2/users/{id}/followed_lists | Get User&#39;s Followed Lists


# **get_user_list_memberships**
> Get2UsersIdListMembershipsResponse get_user_list_memberships(id, max_results = 100, pagination_token = var.pagination_token, list_fields = var.list_fields, expansions = var.expansions, user_fields = var.user_fields)

Get a User's List Memberships

Get a User's List Memberships.

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_list_fields <- list("created_at") # set[character] | A comma separated list of List fields to display. (Optional)
var_expansions <- list("owner_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)

#Get a User's List Memberships
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_user_list_memberships(var_id, max_results = var_max_results, pagination_token = var_pagination_token, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields, data_file = "result.txt"),
             api_instance$lists_api$get_user_list_memberships(var_id, max_results = var_max_results, pagination_token = var_pagination_token, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_user_list_memberships`:")
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
 **id** | **character**| The ID of the User to lookup. | 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **list_fields** | Enum [created_at, description, follower_count, id, member_count, name, owner_id, private] | A comma separated list of List fields to display. | [optional] 
 **expansions** | Enum [owner_id] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2UsersIdListMembershipsResponse**](Get2UsersIdListMembershipsResponse.md)

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

# **list_add_member**
> ListMutateResponse list_add_member(id, list_add_user_request = var.list_add_user_request)

Add a List member

Causes a User to become a member of a List.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the List for which to add a member.
var_list_add_user_request <- ListAddUserRequest$new("user_id_example") # ListAddUserRequest |  (Optional)

#Add a List member
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_add_member(var_id, list_add_user_request = var_list_add_user_request, data_file = "result.txt"),
             api_instance$lists_api$list_add_member(var_id, list_add_user_request = var_list_add_user_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_add_member`:")
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
 **id** | **character**| The ID of the List for which to add a member. | 
 **list_add_user_request** | [**ListAddUserRequest**](ListAddUserRequest.md)|  | [optional] 

### Return type

[**ListMutateResponse**](ListMutateResponse.md)

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

# **list_id_create**
> ListCreateResponse list_id_create(list_create_request = var.list_create_request)

Create List

Creates a new List.

### Example
```R
library(twitter)

var_list_create_request <- ListCreateRequest$new("name_example", "description_example", "item_private_example") # ListCreateRequest |  (Optional)

#Create List
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_id_create(list_create_request = var_list_create_request, data_file = "result.txt"),
             api_instance$lists_api$list_id_create(list_create_request = var_list_create_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_id_create`:")
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
 **list_create_request** | [**ListCreateRequest**](ListCreateRequest.md)|  | [optional] 

### Return type

[**ListCreateResponse**](ListCreateResponse.md)

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

# **list_id_delete**
> ListDeleteResponse list_id_delete(id)

Delete List

Delete a List that you own.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the List to delete.

#Delete List
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_id_delete(var_id, data_file = "result.txt"),
             api_instance$lists_api$list_id_delete(var_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_id_delete`:")
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
 **id** | **character**| The ID of the List to delete. | 

### Return type

[**ListDeleteResponse**](ListDeleteResponse.md)

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

# **list_id_get**
> Get2ListsIdResponse list_id_get(id, list_fields = var.list_fields, expansions = var.expansions, user_fields = var.user_fields)

List lookup by List ID.

Returns a List.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the List.
var_list_fields <- list("created_at") # set[character] | A comma separated list of List fields to display. (Optional)
var_expansions <- list("owner_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)

#List lookup by List ID.
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_id_get(var_id, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields, data_file = "result.txt"),
             api_instance$lists_api$list_id_get(var_id, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_id_get`:")
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
 **id** | **character**| The ID of the List. | 
 **list_fields** | Enum [created_at, description, follower_count, id, member_count, name, owner_id, private] | A comma separated list of List fields to display. | [optional] 
 **expansions** | Enum [owner_id] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2ListsIdResponse**](Get2ListsIdResponse.md)

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

# **list_id_update**
> ListUpdateResponse list_id_update(id, list_update_request = var.list_update_request)

Update List.

Update a List that you own.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the List to modify.
var_list_update_request <- ListUpdateRequest$new("description_example", "name_example", "item_private_example") # ListUpdateRequest |  (Optional)

#Update List.
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_id_update(var_id, list_update_request = var_list_update_request, data_file = "result.txt"),
             api_instance$lists_api$list_id_update(var_id, list_update_request = var_list_update_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_id_update`:")
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
 **id** | **character**| The ID of the List to modify. | 
 **list_update_request** | [**ListUpdateRequest**](ListUpdateRequest.md)|  | [optional] 

### Return type

[**ListUpdateResponse**](ListUpdateResponse.md)

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

# **list_remove_member**
> ListMutateResponse list_remove_member(id, user_id)

Remove a List member

Causes a User to be removed from the members of a List.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the List to remove a member.
var_user_id <- "user_id_example" # character | The ID of User that will be removed from the List.

#Remove a List member
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_remove_member(var_id, var_user_id, data_file = "result.txt"),
             api_instance$lists_api$list_remove_member(var_id, var_user_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_remove_member`:")
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
 **id** | **character**| The ID of the List to remove a member. | 
 **user_id** | **character**| The ID of User that will be removed from the List. | 

### Return type

[**ListMutateResponse**](ListMutateResponse.md)

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

# **list_user_follow**
> ListFollowedResponse list_user_follow(id, list_followed_request = var.list_followed_request)

Follow a List

Causes a User to follow a List.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that will follow the List.
var_list_followed_request <- ListFollowedRequest$new("list_id_example") # ListFollowedRequest |  (Optional)

#Follow a List
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_user_follow(var_id, list_followed_request = var_list_followed_request, data_file = "result.txt"),
             api_instance$lists_api$list_user_follow(var_id, list_followed_request = var_list_followed_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_user_follow`:")
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
 **id** | **character**| The ID of the authenticated source User that will follow the List. | 
 **list_followed_request** | [**ListFollowedRequest**](ListFollowedRequest.md)|  | [optional] 

### Return type

[**ListFollowedResponse**](ListFollowedResponse.md)

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

# **list_user_owned_lists**
> Get2UsersIdOwnedListsResponse list_user_owned_lists(id, max_results = 100, pagination_token = var.pagination_token, list_fields = var.list_fields, expansions = var.expansions, user_fields = var.user_fields)

Get a User's Owned Lists.

Get a User's Owned Lists.

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_list_fields <- list("created_at") # set[character] | A comma separated list of List fields to display. (Optional)
var_expansions <- list("owner_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)

#Get a User's Owned Lists.
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_user_owned_lists(var_id, max_results = var_max_results, pagination_token = var_pagination_token, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields, data_file = "result.txt"),
             api_instance$lists_api$list_user_owned_lists(var_id, max_results = var_max_results, pagination_token = var_pagination_token, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_user_owned_lists`:")
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
 **id** | **character**| The ID of the User to lookup. | 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **list_fields** | Enum [created_at, description, follower_count, id, member_count, name, owner_id, private] | A comma separated list of List fields to display. | [optional] 
 **expansions** | Enum [owner_id] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2UsersIdOwnedListsResponse**](Get2UsersIdOwnedListsResponse.md)

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

# **list_user_pin**
> ListPinnedResponse list_user_pin(id, list_pinned_request)

Pin a List

Causes a User to pin a List.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that will pin the List.
var_list_pinned_request <- ListPinnedRequest$new("list_id_example") # ListPinnedRequest | 

#Pin a List
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_user_pin(var_id, var_list_pinned_request, data_file = "result.txt"),
             api_instance$lists_api$list_user_pin(var_id, var_list_pinned_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_user_pin`:")
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
 **id** | **character**| The ID of the authenticated source User that will pin the List. | 
 **list_pinned_request** | [**ListPinnedRequest**](ListPinnedRequest.md)|  | 

### Return type

[**ListPinnedResponse**](ListPinnedResponse.md)

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

# **list_user_pinned_lists**
> Get2UsersIdPinnedListsResponse list_user_pinned_lists(id, list_fields = var.list_fields, expansions = var.expansions, user_fields = var.user_fields)

Get a User's Pinned Lists

Get a User's Pinned Lists.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User for whom to return results.
var_list_fields <- list("created_at") # set[character] | A comma separated list of List fields to display. (Optional)
var_expansions <- list("owner_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)

#Get a User's Pinned Lists
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_user_pinned_lists(var_id, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields, data_file = "result.txt"),
             api_instance$lists_api$list_user_pinned_lists(var_id, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_user_pinned_lists`:")
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
 **id** | **character**| The ID of the authenticated source User for whom to return results. | 
 **list_fields** | Enum [created_at, description, follower_count, id, member_count, name, owner_id, private] | A comma separated list of List fields to display. | [optional] 
 **expansions** | Enum [owner_id] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2UsersIdPinnedListsResponse**](Get2UsersIdPinnedListsResponse.md)

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

# **list_user_unfollow**
> ListFollowedResponse list_user_unfollow(id, list_id)

Unfollow a List

Causes a User to unfollow a List.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User that will unfollow the List.
var_list_id <- "list_id_example" # character | The ID of the List to unfollow.

#Unfollow a List
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_user_unfollow(var_id, var_list_id, data_file = "result.txt"),
             api_instance$lists_api$list_user_unfollow(var_id, var_list_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_user_unfollow`:")
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
 **id** | **character**| The ID of the authenticated source User that will unfollow the List. | 
 **list_id** | **character**| The ID of the List to unfollow. | 

### Return type

[**ListFollowedResponse**](ListFollowedResponse.md)

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

# **list_user_unpin**
> ListUnpinResponse list_user_unpin(id, list_id)

Unpin a List

Causes a User to remove a pinned List.

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the authenticated source User for whom to return results.
var_list_id <- "list_id_example" # character | The ID of the List to unpin.

#Unpin a List
api_instance <- twitter_api$new()
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_user_unpin(var_id, var_list_id, data_file = "result.txt"),
             api_instance$lists_api$list_user_unpin(var_id, var_list_id),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_user_unpin`:")
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
 **id** | **character**| The ID of the authenticated source User for whom to return results. | 
 **list_id** | **character**| The ID of the List to unpin. | 

### Return type

[**ListUnpinResponse**](ListUnpinResponse.md)

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

# **user_followed_lists**
> Get2UsersIdFollowedListsResponse user_followed_lists(id, max_results = 100, pagination_token = var.pagination_token, list_fields = var.list_fields, expansions = var.expansions, user_fields = var.user_fields)

Get User's Followed Lists

Returns a User's followed Lists.

### Example
```R
library(twitter)

var_id <- "2244994945" # character | The ID of the User to lookup.
var_max_results <- 100 # integer | The maximum number of results. (Optional)
var_pagination_token <- "pagination_token_example" # character | This parameter is used to get a specified 'page' of results. (Optional)
var_list_fields <- list("created_at") # set[character] | A comma separated list of List fields to display. (Optional)
var_expansions <- list("owner_id") # set[character] | A comma separated list of fields to expand. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)

#Get User's Followed Lists
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$user_followed_lists(var_id, max_results = var_max_results, pagination_token = var_pagination_token, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields, data_file = "result.txt"),
             api_instance$lists_api$user_followed_lists(var_id, max_results = var_max_results, pagination_token = var_pagination_token, list_fields = var_list_fields, expansions = var_expansions, user_fields = var_user_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `user_followed_lists`:")
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
 **id** | **character**| The ID of the User to lookup. | 
 **max_results** | **integer**| The maximum number of results. | [optional] [default to 100]
 **pagination_token** | **character**| This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **list_fields** | Enum [created_at, description, follower_count, id, member_count, name, owner_id, private] | A comma separated list of List fields to display. | [optional] 
 **expansions** | Enum [owner_id] | A comma separated list of fields to expand. | [optional] 
 **user_fields** | Enum [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld] | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2UsersIdFollowedListsResponse**](Get2UsersIdFollowedListsResponse.md)

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

