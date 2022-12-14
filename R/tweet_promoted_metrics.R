#' Create a new TweetPromotedMetrics
#'
#' @description
#' Promoted nonpublic engagement metrics for the Tweet at the time of the request.
#'
#' @docType class
#' @title TweetPromotedMetrics
#' @description TweetPromotedMetrics Class
#' @format An \code{R6Class} generator object
#' @field impression_count Number of times this Tweet has been viewed. integer [optional]
#' @field like_count Number of times this Tweet has been liked. integer [optional]
#' @field reply_count Number of times this Tweet has been replied to. integer [optional]
#' @field retweet_count Number of times this Tweet has been Retweeted. integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetPromotedMetrics <- R6::R6Class(
  "TweetPromotedMetrics",
  public = list(
    `impression_count` = NULL,
    `like_count` = NULL,
    `reply_count` = NULL,
    `retweet_count` = NULL,
    `_field_list` = c("impression_count", "like_count", "reply_count", "retweet_count"),
    `additional_properties` = list(),
    #' Initialize a new TweetPromotedMetrics class.
    #'
    #' @description
    #' Initialize a new TweetPromotedMetrics class.
    #'
    #' @param impression_count Number of times this Tweet has been viewed.
    #' @param like_count Number of times this Tweet has been liked.
    #' @param reply_count Number of times this Tweet has been replied to.
    #' @param retweet_count Number of times this Tweet has been Retweeted.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`impression_count` = NULL, `like_count` = NULL, `reply_count` = NULL, `retweet_count` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`impression_count`)) {
        if (!(is.numeric(`impression_count`) && length(`impression_count`) == 1)) {
          stop(paste("Error! Invalid data for `impression_count`. Must be an integer:", `impression_count`))
        }
        self$`impression_count` <- `impression_count`
      }
      if (!is.null(`like_count`)) {
        if (!(is.numeric(`like_count`) && length(`like_count`) == 1)) {
          stop(paste("Error! Invalid data for `like_count`. Must be an integer:", `like_count`))
        }
        self$`like_count` <- `like_count`
      }
      if (!is.null(`reply_count`)) {
        if (!(is.numeric(`reply_count`) && length(`reply_count`) == 1)) {
          stop(paste("Error! Invalid data for `reply_count`. Must be an integer:", `reply_count`))
        }
        self$`reply_count` <- `reply_count`
      }
      if (!is.null(`retweet_count`)) {
        if (!(is.numeric(`retweet_count`) && length(`retweet_count`) == 1)) {
          stop(paste("Error! Invalid data for `retweet_count`. Must be an integer:", `retweet_count`))
        }
        self$`retweet_count` <- `retweet_count`
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
    #' @return TweetPromotedMetrics in JSON format
    #' @export
    toJSON = function() {
      TweetPromotedMetricsObject <- list()
      if (!is.null(self$`impression_count`)) {
        TweetPromotedMetricsObject[["impression_count"]] <-
          self$`impression_count`
      }
      if (!is.null(self$`like_count`)) {
        TweetPromotedMetricsObject[["like_count"]] <-
          self$`like_count`
      }
      if (!is.null(self$`reply_count`)) {
        TweetPromotedMetricsObject[["reply_count"]] <-
          self$`reply_count`
      }
      if (!is.null(self$`retweet_count`)) {
        TweetPromotedMetricsObject[["retweet_count"]] <-
          self$`retweet_count`
      }
      for (key in names(self$additional_properties)) {
        TweetPromotedMetricsObject[[key]] <- self$additional_properties[[key]]
      }

      TweetPromotedMetricsObject
    },
    #' Deserialize JSON string into an instance of TweetPromotedMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetPromotedMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetPromotedMetrics
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`impression_count`)) {
        self$`impression_count` <- this_object$`impression_count`
      }
      if (!is.null(this_object$`like_count`)) {
        self$`like_count` <- this_object$`like_count`
      }
      if (!is.null(this_object$`reply_count`)) {
        self$`reply_count` <- this_object$`reply_count`
      }
      if (!is.null(this_object$`retweet_count`)) {
        self$`retweet_count` <- this_object$`retweet_count`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
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
    #' @return TweetPromotedMetrics in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`impression_count`)) {
          sprintf(
            '"impression_count":
            %d
                    ',
            self$`impression_count`
          )
        },
        if (!is.null(self$`like_count`)) {
          sprintf(
            '"like_count":
            %d
                    ',
            self$`like_count`
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
    #' Deserialize JSON string into an instance of TweetPromotedMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetPromotedMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetPromotedMetrics
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`impression_count` <- this_object$`impression_count`
      self$`like_count` <- this_object$`like_count`
      self$`reply_count` <- this_object$`reply_count`
      self$`retweet_count` <- this_object$`retweet_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetPromotedMetrics
    #'
    #' @description
    #' Validate JSON input with respect to TweetPromotedMetrics and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetPromotedMetrics
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# TweetPromotedMetrics$unlock()
#
## Below is an example to define the print fnuction
# TweetPromotedMetrics$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetPromotedMetrics$lock()
