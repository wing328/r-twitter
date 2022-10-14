#' Create a new VideoAllOfPublicMetrics
#'
#' @description
#' Engagement metrics for the Media at the time of the request.
#'
#' @docType class
#' @title VideoAllOfPublicMetrics
#' @description VideoAllOfPublicMetrics Class
#' @format An \code{R6Class} generator object
#' @field view_count Number of times this video has been viewed. integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VideoAllOfPublicMetrics <- R6::R6Class(
  "VideoAllOfPublicMetrics",
  public = list(
    `view_count` = NULL,
    `_field_list` = c("view_count"),
    `additional_properties` = list(),
    #' Initialize a new VideoAllOfPublicMetrics class.
    #'
    #' @description
    #' Initialize a new VideoAllOfPublicMetrics class.
    #'
    #' @param view_count Number of times this video has been viewed.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`view_count` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`view_count`)) {
        stopifnot(is.numeric(`view_count`), length(`view_count`) == 1)
        self$`view_count` <- `view_count`
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
    #' @return VideoAllOfPublicMetrics in JSON format
    #' @export
    toJSON = function() {
      VideoAllOfPublicMetricsObject <- list()
      if (!is.null(self$`view_count`)) {
        VideoAllOfPublicMetricsObject[["view_count"]] <-
          self$`view_count`
      }
      for (key in names(self$additional_properties)) {
        VideoAllOfPublicMetricsObject[[key]] <- self$additional_properties[[key]]
      }

      VideoAllOfPublicMetricsObject
    },
    #' Deserialize JSON string into an instance of VideoAllOfPublicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of VideoAllOfPublicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of VideoAllOfPublicMetrics
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`view_count`)) {
        self$`view_count` <- this_object$`view_count`
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
    #' @return VideoAllOfPublicMetrics in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`view_count`)) {
          sprintf(
            '"view_count":
            %d
                    ',
            self$`view_count`
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
    #' Deserialize JSON string into an instance of VideoAllOfPublicMetrics
    #'
    #' @description
    #' Deserialize JSON string into an instance of VideoAllOfPublicMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of VideoAllOfPublicMetrics
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`view_count` <- this_object$`view_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to VideoAllOfPublicMetrics
    #'
    #' @description
    #' Validate JSON input with respect to VideoAllOfPublicMetrics and throw an exception if invalid
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
    #' @return String representation of VideoAllOfPublicMetrics
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
# VideoAllOfPublicMetrics$unlock()
#
## Below is an example to define the print fnuction
# VideoAllOfPublicMetrics$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VideoAllOfPublicMetrics$lock()
