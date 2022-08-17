# GeneralApi

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_open_api_spec**](GeneralApi.md#get_open_api_spec) | **GET** /2/openapi.json | Returns the OpenAPI Specification document.


# **get_open_api_spec**
> object get_open_api_spec()

Returns the OpenAPI Specification document.

Full OpenAPI Specification in JSON format. (See https://github.com/OAI/OpenAPI-Specification/blob/master/README.md)

### Example
```R
library(twitter)


#Returns the OpenAPI Specification document.
api_instance <- twitter_api$new()
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_open_api_spec(data_file = "result.txt"),
             api_instance$general_api$get_open_api_spec(),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_open_api_spec`:")
  dput(result$ApiException$toString())
} else {
  # deserialized response object
  print("The response is ...")
  dput(result$toString())
}

```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The request was successful |  -  |

