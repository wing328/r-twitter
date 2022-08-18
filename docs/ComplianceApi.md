# ComplianceApi

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_batch_compliance_job**](ComplianceApi.md#create_batch_compliance_job) | **POST** /2/compliance/jobs | Create compliance job
[**get_batch_compliance_job**](ComplianceApi.md#get_batch_compliance_job) | **GET** /2/compliance/jobs/{id} | Get Compliance Job
[**get_tweets_compliance_stream**](ComplianceApi.md#get_tweets_compliance_stream) | **GET** /2/tweets/compliance/stream | Tweets Compliance stream
[**get_users_compliance_stream**](ComplianceApi.md#get_users_compliance_stream) | **GET** /2/users/compliance/stream | Users Compliance stream
[**list_batch_compliance_jobs**](ComplianceApi.md#list_batch_compliance_jobs) | **GET** /2/compliance/jobs | List Compliance Jobs


# **create_batch_compliance_job**
> CreateComplianceJobResponse create_batch_compliance_job(create_compliance_job_request)

Create compliance job

Creates a compliance for the given job type

### Example
```R
library(twitter)

var_create_compliance_job_request <- CreateComplianceJobRequest$new("tweets", "name_example", "resumable_example") # CreateComplianceJobRequest | 

#Create compliance job
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$create_batch_compliance_job(var_create_compliance_job_request, data_file = "result.txt"),
             api_instance$compliance_api$create_batch_compliance_job(var_create_compliance_job_request),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `create_batch_compliance_job`:")
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
 **create_compliance_job_request** | [**CreateComplianceJobRequest**](CreateComplianceJobRequest.md)|  | 

### Return type

[**CreateComplianceJobResponse**](CreateComplianceJobResponse.md)

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

# **get_batch_compliance_job**
> Get2ComplianceJobsIdResponse get_batch_compliance_job(id, compliance_job_fields = var.compliance_job_fields)

Get Compliance Job

Returns a single Compliance Job by ID

### Example
```R
library(twitter)

var_id <- "id_example" # character | The ID of the Compliance Job to retrieve.
var_compliance_job_fields <- list("created_at") # set[character] | A comma separated list of ComplianceJob fields to display. (Optional)

#Get Compliance Job
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_batch_compliance_job(var_id, compliance_job_fields = var_compliance_job_fields, data_file = "result.txt"),
             api_instance$compliance_api$get_batch_compliance_job(var_id, compliance_job_fields = var_compliance_job_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_batch_compliance_job`:")
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
 **id** | **character**| The ID of the Compliance Job to retrieve. | 
 **compliance_job_fields** | Enum [created_at, download_expires_at, download_url, id, name, resumable, status, type, upload_expires_at, upload_url] | A comma separated list of ComplianceJob fields to display. | [optional] 

### Return type

[**Get2ComplianceJobsIdResponse**](Get2ComplianceJobsIdResponse.md)

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

# **get_tweets_compliance_stream**
> TweetComplianceStreamResponse get_tweets_compliance_stream(partition, backfill_minutes = var.backfill_minutes, start_time = var.start_time, end_time = var.end_time)

Tweets Compliance stream

Streams 100% of compliance data for Tweets

### Example
```R
library(twitter)

var_partition <- 56 # integer | The partition number.
var_backfill_minutes <- 56 # integer | The number of minutes of backfill requested. (Optional)
var_start_time <- "2021-02-01T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweet Compliance events will be provided. (Optional)
var_end_time <- "2021-02-14T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweet Compliance events will be provided. (Optional)

#Tweets Compliance stream
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_tweets_compliance_stream(var_partition, backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time, data_file = "result.txt"),
             api_instance$compliance_api$get_tweets_compliance_stream(var_partition, backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_tweets_compliance_stream`:")
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
 **partition** | **integer**| The partition number. | 
 **backfill_minutes** | **integer**| The number of minutes of backfill requested. | [optional] 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweet Compliance events will be provided. | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweet Compliance events will be provided. | [optional] 

### Return type

[**TweetComplianceStreamResponse**](TweetComplianceStreamResponse.md)

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

# **get_users_compliance_stream**
> UserComplianceStreamResponse get_users_compliance_stream(partition, backfill_minutes = var.backfill_minutes, start_time = var.start_time, end_time = var.end_time)

Users Compliance stream

Streams 100% of compliance data for Users

### Example
```R
library(twitter)

var_partition <- 56 # integer | The partition number.
var_backfill_minutes <- 56 # integer | The number of minutes of backfill requested. (Optional)
var_start_time <- "2021-02-01T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the User Compliance events will be provided. (Optional)
var_end_time <- "2021-02-01T18:40:40.000Z" # character | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp from which the User Compliance events will be provided. (Optional)

#Users Compliance stream
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$get_users_compliance_stream(var_partition, backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time, data_file = "result.txt"),
             api_instance$compliance_api$get_users_compliance_stream(var_partition, backfill_minutes = var_backfill_minutes, start_time = var_start_time, end_time = var_end_time),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `get_users_compliance_stream`:")
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
 **partition** | **integer**| The partition number. | 
 **backfill_minutes** | **integer**| The number of minutes of backfill requested. | [optional] 
 **start_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the User Compliance events will be provided. | [optional] 
 **end_time** | **character**| YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp from which the User Compliance events will be provided. | [optional] 

### Return type

[**UserComplianceStreamResponse**](UserComplianceStreamResponse.md)

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

# **list_batch_compliance_jobs**
> Get2ComplianceJobsResponse list_batch_compliance_jobs(type, status = var.status, compliance_job_fields = var.compliance_job_fields)

List Compliance Jobs

Returns recent Compliance Jobs for a given job type and optional job status

### Example
```R
library(twitter)

var_type <- "type_example" # character | Type of Compliance Job to list.
var_status <- "status_example" # character | Status of Compliance Job to list. (Optional)
var_compliance_job_fields <- list("created_at") # set[character] | A comma separated list of ComplianceJob fields to display. (Optional)

#List Compliance Jobs
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$list_batch_compliance_jobs(var_type, status = var_status, compliance_job_fields = var_compliance_job_fields, data_file = "result.txt"),
             api_instance$compliance_api$list_batch_compliance_jobs(var_type, status = var_status, compliance_job_fields = var_compliance_job_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `list_batch_compliance_jobs`:")
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
 **type** | Enum [tweets, users] | Type of Compliance Job to list. | 
 **status** | Enum [created, in_progress, failed, complete] | Status of Compliance Job to list. | [optional] 
 **compliance_job_fields** | Enum [created_at, download_expires_at, download_url, id, name, resumable, status, type, upload_expires_at, upload_url] | A comma separated list of ComplianceJob fields to display. | [optional] 

### Return type

[**Get2ComplianceJobsResponse**](Get2ComplianceJobsResponse.md)

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

