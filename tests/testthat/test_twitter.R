# Test Twitter client
context("Test Twitter client")


test_that("test Media, AnimatedGif with discriminator mapping", {
  ag <- '{"preview_image_url": "https://something.com","type":"animated_gif","height":1,"width":2}'

  a <- ApiClient$new()$deserialize(ag, "Media", loadNamespace("twitter"))
  expect_equal(class(a)[1], "AnimatedGif")
  expect_equal(a$preview_image_url, "https://something.com")
  expect_equal(a$type, "animated_gif")
  expect_equal(a$height, 1)
  expect_equal(a$width, 2)
})

test_that("test poll with enum validation", {
  po <- PollOption$new("this is a label", 3, 3)
  expect_error(Poll$new("1365059861688410112", list(po), voting_status = "OPEN"), #OPEN is invalid enum value
                 "Error! \"OPEN\" cannot be assigned to `voting_status`. Must be \"open\", \"closed\".")
 
  # expect no error  
  Poll$new("1365059861688410112", list(po), voting_status = "open")
})

test_that("test find_tweet_by_id", {
  var_id <- "1543815912545226752" # character | A single Tweet ID.
  var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
  var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
  var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
  var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
  var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
  var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)
  
  #Tweet lookup by Tweet ID
  api_instance <- twitter_api$new()
  # Configure HTTP bearer authorization: BearerToken
  api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  #api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
  result <- tryCatch(
               # to save the result into a file, simply add the optional `data_file` parameter, e.g.
               # api_instance$find_tweet_by_id(var_id, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
               api_instance$tweets_api$find_tweet_by_id(var_id, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
               ApiException = function(ex) ex
            )

  expect_equal(result$toString(), "{\"data\":{\"id\":\"1543815912545226752\",\"text\":\"Just released #OpenAPI #Generator v6.0.1 with enhancements, bug fixes covering #java #python #PHP #kotlin #Haskell #dart #rlang and more: https://t.co/7MNHdhMJ1y. Please check it out and let us know if you've any question/feedback via https://t.co/NJmr3yWvyP #OSS #REST #API\"}}")

})

test_that("test find_tweets_by_id using list as input", {
  var_ids <- list("1543815912545226752", "1561205890610757635", "1543169008051974144") # list[character] | list of IDs
  var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
  var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
  var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
  var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
  var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
  var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

  #Tweet lookup by Tweet ID
  api_instance <- twitter_api$new()
  # Configure HTTP bearer authorization: BearerToken
  api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  #api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
  result <- tryCatch(
               # to save the result into a file, simply add the optional `data_file` parameter, e.g.
               # api_instance$find_tweet_by_id(var_id, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
               api_instance$tweets_api$find_tweets_by_id(var_ids, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
               ApiException = function(ex) ex
            )

  expect_equal(result$data[[1]]$id, "1543815912545226752")
  expect_equal(result$data[[2]]$id, "1561205890610757635")
  expect_equal(result$data[[3]]$id, "1543169008051974144")

})

test_that("test find_tweets_by_id using vector as input", {
  var_ids <- c("1543815912545226752", "1561205890610757635", "1543169008051974144") # list[character] | list of IDs
  var_tweet_fields <- list("attachments") # set[character] | A comma separated list of Tweet fields to display. (Optional)
  var_expansions <- list("attachments.media_keys") # set[character] | A comma separated list of fields to expand. (Optional)
  var_media_fields <- list("alt_text") # set[character] | A comma separated list of Media fields to display. (Optional)
  var_poll_fields <- list("duration_minutes") # set[character] | A comma separated list of Poll fields to display. (Optional)
  var_user_fields <- list("created_at") # set[character] | A comma separated list of User fields to display. (Optional)
  var_place_fields <- list("contained_within") # set[character] | A comma separated list of Place fields to display. (Optional)

  #Tweet lookup by Tweet ID
  api_instance <- twitter_api$new()
  # Configure HTTP bearer authorization: BearerToken
  api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  #api_instance$api_client$access_token <- Sys.getenv("ACCESS_TOKEN")
  result <- tryCatch(
               # to save the result into a file, simply add the optional `data_file` parameter, e.g.
               # api_instance$find_tweet_by_id(var_id, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields, data_file = "result.txt"),
               api_instance$tweets_api$find_tweets_by_id(var_ids, tweet_fields = var_tweet_fields, expansions = var_expansions, media_fields = var_media_fields, poll_fields = var_poll_fields, user_fields = var_user_fields, place_fields = var_place_fields),
               ApiException = function(ex) ex
            )

  expect_equal(result$data[[1]]$id, "1543815912545226752")
  expect_equal(result$data[[2]]$id, "1561205890610757635")
  expect_equal(result$data[[3]]$id, "1543169008051974144")

})


