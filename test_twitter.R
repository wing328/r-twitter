library(twitter)

var_username <- "wing328" # character | A username.
var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display.
var_expansions <- list("pinned_tweet_id") # set[character] | A comma separated list of fields to expand.
var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display.

#User lookup by username
api_instance <- UsersApi$new()
# Configure HTTP bearer authorization: BearerToken
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# Configure OAuth2 access token for authorization: OAuth2UserToken
#api_instance$api_client$access_token <- 'TODO_YOUR_ACCESS_TOKEN';
result <- tryCatch(
             # to save the result into a file, simply add the optional `data_file` parameter, e.g.
             # api_instance$find_user_by_username(var_username, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields, data_file = "result.txt"),
             api_instance$find_user_by_username(var_username, user_fields = var_user_fields, expansions = var_expansions, tweet_fields = var_tweet_fields),
             ApiException = function(ex) ex
          )
# In case of error, print the error object
if (!is.null(result$ApiException)) {
  cat("exception occurs...")
  dput(result$ApiException$toString())
} else {
  cat("The result is ...")
  # deserialized response object
  dput(result$toString())
  #dput(result$content)
  # response headers
  #dput(result$response$headers)
  # response status code
  #dput(result$response$status_code)
}

cat("done")


