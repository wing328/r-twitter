#' Create a new TweetComplianceStreamResponseOneOf
#'
#' @description
#' Compliance event.
#'
#' @docType class
#' @title TweetComplianceStreamResponseOneOf
#' @description TweetComplianceStreamResponseOneOf Class
#' @format An \code{R6Class} generator object
#' @field data  \link{TweetComplianceData}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetComplianceStreamResponseOneOf <- R6::R6Class(
  "TweetComplianceStreamResponseOneOf",
  public = list(
    `data` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new TweetComplianceStreamResponseOneOf class.
    #'
    #' @description
    #' Initialize a new TweetComplianceStreamResponseOneOf class.
    #'
    #' @param data data
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `data`, additional_properties = NULL, ...
    ) {
      if (!missing(`data`)) {
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
    #' @return TweetComplianceStreamResponseOneOf in JSON format
    #' @export
    toJSON = function() {
      TweetComplianceStreamResponseOneOfObject <- list()
      if (!is.null(self$`data`)) {
        TweetComplianceStreamResponseOneOfObject[["data"]] <-
          self$`data`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        TweetComplianceStreamResponseOneOfObject[[key]] <- self$additional_properties[[key]]
      }

      TweetComplianceStreamResponseOneOfObject
    },
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponseOneOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponseOneOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetComplianceStreamResponseOneOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        data_object <- TweetComplianceData$new()
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
    #' @return TweetComplianceStreamResponseOneOf in JSON format
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
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponseOneOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponseOneOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetComplianceStreamResponseOneOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- TweetComplianceData$new()$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to TweetComplianceStreamResponseOneOf
    #'
    #' @description
    #' Validate JSON input with respect to TweetComplianceStreamResponseOneOf and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(R6::is.R6(input_json$`data`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetComplianceStreamResponseOneOf: the required field `data` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetComplianceStreamResponseOneOf
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
      # check if the required `data` is null
      if (is.null(self$`data`)) {
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
      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetComplianceStreamResponseOneOf$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetComplianceStreamResponseOneOf$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetComplianceStreamResponseOneOf$lock()

