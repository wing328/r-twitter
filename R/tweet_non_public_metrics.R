#' Create a new TweetNonPublicMetrics
#'
#' @description
#' Nonpublic engagement metrics for the Tweet at the time of the request.
#'
#' @docType class
#' @title TweetNonPublicMetrics
#' @description TweetNonPublicMetrics Class
#' @format An \code{R6Class} generator object
#' @field impression_count Number of times this Tweet has been viewed. integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetNonPublicMetrics <- R6::R6Class(
  "TweetNonPublicMetrics",
  public = list(
    `impression_count` = NULL,
    `_field_list` = c("impression_count"),
    `additional_properties` = list(),
    #' Initialize a new TweetNonPublicMetrics class.
    #'
    #' @description
    #' Initialize a new TweetNonPublicMetrics class.
    #'
    #' @param impression_count Number of times this Tweet has been viewed.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`impression_count` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`impression_count`)) {
        if (!(is.numeric(`impression_count`) && length(`impression_count`) == 1)) {
          stop(paste("Error! Invalid data for `impression_count`. Must be an integer:", `impression_count`))
        }
        self$`impression_count` <- `impression_count`
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
    #' @return TweetNonPublicMetrics in JSON format
    #' @export
    toJSON = function() {
      TweetNonPublicMetricsObject <- list()
      if (!is.null(self$`impression_count`)) {
        TweetNonPublicMetricsObject[["impression_count"]] <-
          self$`impression_count`
      }
      for (key in names(self$additional_properties)) {
        TweetNonPublicMetricsObject[[key]] <- self$additional_properties[[key]]
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
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
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
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

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
# TweetNonPublicMetrics$unlock()
#
## Below is an example to define the print fnuction
# TweetNonPublicMetrics$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetNonPublicMetrics$lock()
