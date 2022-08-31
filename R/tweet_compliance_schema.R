#' Create a new TweetComplianceSchema
#'
#' @description
#' TweetComplianceSchema Class
#'
#' @docType class
#' @title TweetComplianceSchema
#' @description TweetComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field event_at  character
#' @field quote_tweet_id  character [optional]
#' @field tweet  \link{TweetComplianceSchemaTweet}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetComplianceSchema <- R6::R6Class(
  "TweetComplianceSchema",
  public = list(
    `event_at` = NULL,
    `quote_tweet_id` = NULL,
    `tweet` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new TweetComplianceSchema class.
    #'
    #' @description
    #' Initialize a new TweetComplianceSchema class.
    #'
    #' @param event_at Event time.
    #' @param tweet tweet
    #' @param quote_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `event_at`, `tweet`, `quote_tweet_id` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`event_at`)) {
        stopifnot(is.character(`event_at`), length(`event_at`) == 1)
        self$`event_at` <- `event_at`
      }
      if (!missing(`tweet`)) {
        stopifnot(R6::is.R6(`tweet`))
        self$`tweet` <- `tweet`
      }
      if (!is.null(`quote_tweet_id`)) {
        stopifnot(is.character(`quote_tweet_id`), length(`quote_tweet_id`) == 1)
        self$`quote_tweet_id` <- `quote_tweet_id`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      TweetComplianceSchemaObject <- list()
      if (!is.null(self$`event_at`)) {
        TweetComplianceSchemaObject[["event_at"]] <-
          self$`event_at`
      }
      if (!is.null(self$`quote_tweet_id`)) {
        TweetComplianceSchemaObject[["quote_tweet_id"]] <-
          self$`quote_tweet_id`
      }
      if (!is.null(self$`tweet`)) {
        TweetComplianceSchemaObject[["tweet"]] <-
          self$`tweet`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        TweetComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      TweetComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of TweetComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event_at`)) {
        self$`event_at` <- this_object$`event_at`
      }
      if (!is.null(this_object$`quote_tweet_id`)) {
        self$`quote_tweet_id` <- this_object$`quote_tweet_id`
      }
      if (!is.null(this_object$`tweet`)) {
        tweet_object <- TweetComplianceSchemaTweet$new()
        tweet_object$fromJSON(jsonlite::toJSON(this_object$tweet, auto_unbox = TRUE, digits = NA))
        self$`tweet` <- tweet_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`event_at`)) {
          sprintf(
          '"event_at":
            "%s"
                    ',
          self$`event_at`
          )
        },
        if (!is.null(self$`quote_tweet_id`)) {
          sprintf(
          '"quote_tweet_id":
            "%s"
                    ',
          self$`quote_tweet_id`
          )
        },
        if (!is.null(self$`tweet`)) {
          sprintf(
          '"tweet":
          %s
          ',
          jsonlite::toJSON(self$`tweet`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
    },
    #' Deserialize JSON string into an instance of TweetComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event_at` <- this_object$`event_at`
      self$`quote_tweet_id` <- this_object$`quote_tweet_id`
      self$`tweet` <- TweetComplianceSchemaTweet$new()$fromJSON(jsonlite::toJSON(this_object$tweet, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to TweetComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to TweetComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `event_at`
      if (!is.null(input_json$`event_at`)) {
        stopifnot(is.character(input_json$`event_at`), length(input_json$`event_at`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetComplianceSchema: the required field `event_at` is missing."))
      }
      # check the required field `tweet`
      if (!is.null(input_json$`tweet`)) {
        stopifnot(R6::is.R6(input_json$`tweet`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetComplianceSchema: the required field `tweet` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetComplianceSchema
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
      # check if the required `event_at` is null
      if (is.null(self$`event_at`)) {
        return(FALSE)
      }

      if (!str_detect(self$`quote_tweet_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `tweet` is null
      if (is.null(self$`tweet`)) {
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
      # check if the required `event_at` is null
      if (is.null(self$`event_at`)) {
        invalid_fields["event_at"] <- "Non-nullable required field `event_at` cannot be null."
      }

      if (!str_detect(self$`quote_tweet_id`, "^[0-9]{1,19}$")) {
        invalid_fields["quote_tweet_id"] <- "Invalid value for `quote_tweet_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `tweet` is null
      if (is.null(self$`tweet`)) {
        invalid_fields["tweet"] <- "Non-nullable required field `tweet` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetComplianceSchema$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetComplianceSchema$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetComplianceSchema$lock()

