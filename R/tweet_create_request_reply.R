#' Create a new TweetCreateRequestReply
#'
#' @description
#' Tweet information of the Tweet being replied to.
#'
#' @docType class
#' @title TweetCreateRequestReply
#' @description TweetCreateRequestReply Class
#' @format An \code{R6Class} generator object
#' @field exclude_reply_user_ids  list(character) [optional]
#' @field in_reply_to_tweet_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetCreateRequestReply <- R6::R6Class(
  "TweetCreateRequestReply",
  public = list(
    `exclude_reply_user_ids` = NULL,
    `in_reply_to_tweet_id` = NULL,
    #' Initialize a new TweetCreateRequestReply class.
    #'
    #' @description
    #' Initialize a new TweetCreateRequestReply class.
    #'
    #' @param in_reply_to_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param exclude_reply_user_ids A list of User Ids to be excluded from the reply Tweet.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `in_reply_to_tweet_id`, `exclude_reply_user_ids` = NULL, ...
    ) {
      if (!missing(`in_reply_to_tweet_id`)) {
        stopifnot(is.character(`in_reply_to_tweet_id`), length(`in_reply_to_tweet_id`) == 1)
        self$`in_reply_to_tweet_id` <- `in_reply_to_tweet_id`
      }
      if (!is.null(`exclude_reply_user_ids`)) {
        stopifnot(is.vector(`exclude_reply_user_ids`), length(`exclude_reply_user_ids`) != 0)
        sapply(`exclude_reply_user_ids`, function(x) stopifnot(is.character(x)))
        self$`exclude_reply_user_ids` <- `exclude_reply_user_ids`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetCreateRequestReply in JSON format
    #' @export
    toJSON = function() {
      TweetCreateRequestReplyObject <- list()
      if (!is.null(self$`exclude_reply_user_ids`)) {
        TweetCreateRequestReplyObject[["exclude_reply_user_ids"]] <-
          self$`exclude_reply_user_ids`
      }
      if (!is.null(self$`in_reply_to_tweet_id`)) {
        TweetCreateRequestReplyObject[["in_reply_to_tweet_id"]] <-
          self$`in_reply_to_tweet_id`
      }
      TweetCreateRequestReplyObject
    },
    #' Deserialize JSON string into an instance of TweetCreateRequestReply
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequestReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequestReply
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exclude_reply_user_ids`)) {
        self$`exclude_reply_user_ids` <- ApiClient$new()$deserializeObj(this_object$`exclude_reply_user_ids`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`in_reply_to_tweet_id`)) {
        self$`in_reply_to_tweet_id` <- this_object$`in_reply_to_tweet_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetCreateRequestReply in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`exclude_reply_user_ids`)) {
          sprintf(
          '"exclude_reply_user_ids":
             [%s]
          ',
          paste(unlist(lapply(self$`exclude_reply_user_ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`in_reply_to_tweet_id`)) {
          sprintf(
          '"in_reply_to_tweet_id":
            "%s"
                    ',
          self$`in_reply_to_tweet_id`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TweetCreateRequestReply
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequestReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequestReply
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exclude_reply_user_ids` <- ApiClient$new()$deserializeObj(this_object$`exclude_reply_user_ids`, "array[character]", loadNamespace("twitter"))
      self$`in_reply_to_tweet_id` <- this_object$`in_reply_to_tweet_id`
      self
    },
    #' Validate JSON input with respect to TweetCreateRequestReply
    #'
    #' @description
    #' Validate JSON input with respect to TweetCreateRequestReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `in_reply_to_tweet_id`
      if (!is.null(input_json$`in_reply_to_tweet_id`)) {
        stopifnot(is.character(input_json$`in_reply_to_tweet_id`), length(input_json$`in_reply_to_tweet_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetCreateRequestReply: the required field `in_reply_to_tweet_id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetCreateRequestReply
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      # check if the required `in_reply_to_tweet_id` is null
      if (is.null(self$`in_reply_to_tweet_id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`in_reply_to_tweet_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `in_reply_to_tweet_id` is null
      if (is.null(self$`in_reply_to_tweet_id`)) {
        invalid_fields["in_reply_to_tweet_id"] <- "Non-nullable required field `in_reply_to_tweet_id` cannot be null."
      }

      if (!str_detect(self$`in_reply_to_tweet_id`, "^[0-9]{1,19}$")) {
        invalid_fields["in_reply_to_tweet_id"] <- "Invalid value for `in_reply_to_tweet_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetCreateRequestReply$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetCreateRequestReply$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetCreateRequestReply$lock()

