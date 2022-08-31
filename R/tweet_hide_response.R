#' Create a new TweetHideResponse
#'
#' @description
#' TweetHideResponse Class
#'
#' @docType class
#' @title TweetHideResponse
#' @description TweetHideResponse Class
#' @format An \code{R6Class} generator object
#' @field data  \link{TweetHideResponseData} [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetHideResponse <- R6::R6Class(
  "TweetHideResponse",
  public = list(
    `data` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new TweetHideResponse class.
    #'
    #' @description
    #' Initialize a new TweetHideResponse class.
    #'
    #' @param data data
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `data` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
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
    #' @return TweetHideResponse in JSON format
    #' @export
    toJSON = function() {
      TweetHideResponseObject <- list()
      if (!is.null(self$`data`)) {
        TweetHideResponseObject[["data"]] <-
          self$`data`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        TweetHideResponseObject[[key]] <- self$additional_properties[[key]]
      }

      TweetHideResponseObject
    },
    #' Deserialize JSON string into an instance of TweetHideResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetHideResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetHideResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        data_object <- TweetHideResponseData$new()
        data_object$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
        self$`data` <- data_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetHideResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`data`)) {
          sprintf(
          '"data":
          %s
          ',
          jsonlite::toJSON(self$`data`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of TweetHideResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetHideResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetHideResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- TweetHideResponseData$new()$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to TweetHideResponse
    #'
    #' @description
    #' Validate JSON input with respect to TweetHideResponse and throw an exception if invalid
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
    #' @return String representation of TweetHideResponse
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
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetHideResponse$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetHideResponse$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetHideResponse$lock()

