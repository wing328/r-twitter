# 1. follow the installation instruction in the README to build the Twitter R module
# 2. put the bearer token obtained from Twitter developer portal (https://developer.twitter.com/) in the environment variable BEARER_TOKEN
# 3. run the script:
#    Rscript examples/sample_stream.R

library(twitter)

var_backfill_minutes <- 4 # integer | The number of minutes of backfill requested. (Optional)
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

#Sample stream
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$tweets_api$sample_stream(backfill_minutes = var_backfill_minutes, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
             # this endpoint supports data streaming via a callback function using the optional `stream_callback` parameter, e.g.
             api_instance$tweets_api$sample_stream(backfill_minutes = var_backfill_minutes, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, stream_callback = function(x) {
                                                                 print("Receiving ...")
                                                                 print(x)
                                                               }),
             #api_instance$tweets_api$sample_stream(backfill_minutes = var_backfill_minutes, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  print("Exception occurs when calling `sample_stream`:")
  dput(result$ApiException$toString())
  # error object
  dput(result$ApiException$error_object$toJSONString())
} else {
  # use callback to handle the response so the `result` is NULL
  print("The response is ...")
  dput(result)
}
