# 1. follow the installation instruction in the README to build the Twitter R module
# 2. put the bearer token obtained from Twitter developer portal (https://developer.twitter.com/) in the environment variable BEARER_TOKEN
# 3. run the script:
#    Rscript examples/find_tweet_by_id.R
library(twitter)

var_id <- "1543815912545226752" # character | A single Tweet ID.
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

# Tweet lookup by Tweet ID
api_instance <- twitter_api$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
# api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
result <- tryCatch(
  # to save the result into a file, simply add the optional `data_file` parameter, e.g.
  # api_instance$find_tweet_by_id(var_id, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
  api_instance$tweets_api$find_tweet_by_id(var_id, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
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
