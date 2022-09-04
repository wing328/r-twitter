#' Create a new TweetPublicMetrics
#'
#' @description
#' Engagement metrics for the Tweet at the time of the request.
#'
#' @docType class
#' @title TweetPublicMetrics
#' @description TweetPublicMetrics Class
#' @format An \code{R6Class} generator object
#' @field like_count Number of times this Tweet has been liked. integer
#' @field quote_count Number of times this Tweet has been quoted. integer [optional]
#' @field reply_count Number of times this Tweet has been replied to. integer
#' @field retweet_count Number of times this Tweet has been Retweeted. integer
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetPublicMetrics <- R6::R6Class(
  "TweetPublicMetrics",
  public = list(
    `like_count` = NULL,
    `quote_count` = NULL,
    `reply_count` = NULL,
    `retweet_count` = NULL,
    `_field_list` = c("like_count", "quote_count", "reply_count", "retweet_count"),
    `additional_properties` = list(),
    #' Initialize a new TweetPublicMetrics class.
    #'
    #' @description
    #' Initialize a new TweetPublicMetrics class.
    #'
    #' @param like_count Number of times this Tweet has been liked.
    #' @param reply_count Number of times this Tweet has been replied to.
    #' @param retweet_count Number of times this Tweet has been Retweeted.
    #' @param quote_count Number of times this Tweet has been quoted.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `like_count`, `reply_count`, `retweet_count`, `quote_count` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`like_count`)) {
        stopifnot(is.numeric(`like_count`), length(`like_count`) == 1)
        self$`like_count` <- `like_count`
      }
      if (!missing(`reply_count`)) {
        stopifnot(is.numeric(`reply_count`), length(`reply_count`) == 1)
        self$`reply_count` <- `reply_count`
      }
      if (!missing(`retweet_count`)) {
        stopifnot(is.numeric(`retweet_count`), length(`retweet_count`) == 1)
        self$`retweet_count` <- `retweet_count`
      }
      if (!is.null(`quote_count`)) {
        stopifnot(is.numeric(`quote_count`), length(`quote_count`) == 1)
        self$`quote_count` <- `quote_count`
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
    #' @return TweetPublicMetrics in JSON format
    #' @export
    toJSON = function() {
      TweetPublicMetricsObject <- list()
      if (!is.null(self$`like_count`)) {
        TweetPublicMetricsObject[["like_count"]] <-
          self$`like_count`
      }
      if (!is.null(self$`quote_count`)) {
        TweetPublicMetricsObject[["quote_count"]] <-
          self$`quote_count`
      }
      if (!is.null(self$`reply_count`)) {
        TweetPublicMetricsObject[["reply_count"]] <-
          self$`reply_count`
      }
      if (!is.null(self$`retweet_count`)) {
        TweetPublicMetricsObject[["retweet_count"]] <-
          self$`retweet_count`
      }
      for (key in names(self$additional_properties)) {
        TweetPublicMetricsObject[[key]] <- self$additional_properties[[key]]
      }

      TweetPublicMetricsObject
    },
    #' Deserialize JSON string into an instance of TweetPublicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetPublicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetPublicMetrics
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`like_count`)) {
        self$`like_count` <- this_object$`like_count`
      }
      if (!is.null(this_object$`quote_count`)) {
        self$`quote_count` <- this_object$`quote_count`
      }
      if (!is.null(this_object$`reply_count`)) {
        self$`reply_count` <- this_object$`reply_count`
      }
      if (!is.null(this_object$`retweet_count`)) {
        self$`retweet_count` <- this_object$`retweet_count`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetPublicMetrics in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`like_count`)) {
          sprintf(
          '"like_count":
            %d
                    ',
          self$`like_count`
          )
        },
        if (!is.null(self$`quote_count`)) {
          sprintf(
          '"quote_count":
            %d
                    ',
          self$`quote_count`
          )
        },
        if (!is.null(self$`reply_count`)) {
          sprintf(
          '"reply_count":
            %d
                    ',
          self$`reply_count`
          )
        },
        if (!is.null(self$`retweet_count`)) {
          sprintf(
          '"retweet_count":
            %d
                    ',
          self$`retweet_count`
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
    #' Deserialize JSON string into an instance of TweetPublicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetPublicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetPublicMetrics
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`like_count` <- this_object$`like_count`
      self$`quote_count` <- this_object$`quote_count`
      self$`reply_count` <- this_object$`reply_count`
      self$`retweet_count` <- this_object$`retweet_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetPublicMetrics
    #'
    #' @description
    #' Validate JSON input with respect to TweetPublicMetrics and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `like_count`
      if (!is.null(input_json$`like_count`)) {
        stopifnot(is.numeric(input_json$`like_count`), length(input_json$`like_count`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetPublicMetrics: the required field `like_count` is missing."))
      }
      # check the required field `reply_count`
      if (!is.null(input_json$`reply_count`)) {
        stopifnot(is.numeric(input_json$`reply_count`), length(input_json$`reply_count`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetPublicMetrics: the required field `reply_count` is missing."))
      }
      # check the required field `retweet_count`
      if (!is.null(input_json$`retweet_count`)) {
        stopifnot(is.numeric(input_json$`retweet_count`), length(input_json$`retweet_count`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetPublicMetrics: the required field `retweet_count` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetPublicMetrics
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
      # check if the required `like_count` is null
      if (is.null(self$`like_count`)) {
        return(FALSE)
      }

      # check if the required `reply_count` is null
      if (is.null(self$`reply_count`)) {
        return(FALSE)
      }

      # check if the required `retweet_count` is null
      if (is.null(self$`retweet_count`)) {
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
      # check if the required `like_count` is null
      if (is.null(self$`like_count`)) {
        invalid_fields["like_count"] <- "Non-nullable required field `like_count` cannot be null."
      }

      # check if the required `reply_count` is null
      if (is.null(self$`reply_count`)) {
        invalid_fields["reply_count"] <- "Non-nullable required field `reply_count` cannot be null."
      }

      # check if the required `retweet_count` is null
      if (is.null(self$`retweet_count`)) {
        invalid_fields["retweet_count"] <- "Non-nullable required field `retweet_count` cannot be null."
      }

      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#TweetPublicMetrics$unlock()
#
## Below is an example to define the print fnuction
#TweetPublicMetrics$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TweetPublicMetrics$lock()

