#' Create a new VideoAllOfPublicMetrics
#'
#' @description
#' Engagement metrics for the Media at the time of the request.
#'
#' @docType class
#' @title VideoAllOfPublicMetrics
#' @description VideoAllOfPublicMetrics Class
#' @format An \code{R6Class} generator object
#' @field view_count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VideoAllOfPublicMetrics <- R6::R6Class(
  "VideoAllOfPublicMetrics",
  public = list(
    `view_count` = NULL,
    #' Initialize a new VideoAllOfPublicMetrics class.
    #'
    #' @description
    #' Initialize a new VideoAllOfPublicMetrics class.
    #'
    #' @param view_count Number of times this video has been viewed.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `view_count` = NULL, ...
    ) {
      if (!is.null(`view_count`)) {
        stopifnot(is.numeric(`view_count`), length(`view_count`) == 1)
        self$`view_count` <- `view_count`
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
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
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
    }
  )
)

