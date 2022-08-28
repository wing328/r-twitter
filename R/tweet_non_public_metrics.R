#' Create a new TweetNonPublicMetrics
#'
#' @description
#' Nonpublic engagement metrics for the Tweet at the time of the request.
#'
#' @docType class
#' @title TweetNonPublicMetrics
#' @description TweetNonPublicMetrics Class
#' @format An \code{R6Class} generator object
#' @field impression_count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetNonPublicMetrics <- R6::R6Class(
  "TweetNonPublicMetrics",
  public = list(
    `impression_count` = NULL,
    #' Initialize a new TweetNonPublicMetrics class.
    #'
    #' @description
    #' Initialize a new TweetNonPublicMetrics class.
    #'
    #' @param impression_count Number of times this Tweet has been viewed.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `impression_count` = NULL, ...
    ) {
      if (!is.null(`impression_count`)) {
        stopifnot(is.numeric(`impression_count`), length(`impression_count`) == 1)
        self$`impression_count` <- `impression_count`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetNonPublicMetrics in JSON format
    #' @export
    toJSON = function() {
      TweetNonPublicMetricsObject <- list()
      if (!is.null(self$`impression_count`)) {
        TweetNonPublicMetricsObject[["impression_count"]] <-
          self$`impression_count`
      }

      TweetNonPublicMetricsObject
    },
    #' Deserialize JSON string into an instance of TweetNonPublicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetNonPublicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetNonPublicMetrics
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`impression_count`)) {
        self$`impression_count` <- this_object$`impression_count`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetNonPublicMetrics in JSON format
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TweetNonPublicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetNonPublicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetNonPublicMetrics
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`impression_count` <- this_object$`impression_count`
      self
    },
    #' Validate JSON input with respect to TweetNonPublicMetrics
    #'
    #' @description
    #' Validate JSON input with respect to TweetNonPublicMetrics and throw an exception if invalid
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
    #' @return String representation of TweetNonPublicMetrics
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
    }
  )
)

