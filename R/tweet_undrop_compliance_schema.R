#' Create a new TweetUndropComplianceSchema
#'
#' @description
#' TweetUndropComplianceSchema Class
#'
#' @docType class
#' @title TweetUndropComplianceSchema
#' @description TweetUndropComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field undrop  \link{TweetComplianceSchema}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetUndropComplianceSchema <- R6::R6Class(
  "TweetUndropComplianceSchema",
  public = list(
    `undrop` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new TweetUndropComplianceSchema class.
    #'
    #' @description
    #' Initialize a new TweetUndropComplianceSchema class.
    #'
    #' @param undrop undrop
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `undrop`, additional_properties = NULL, ...
    ) {
      if (!missing(`undrop`)) {
        stopifnot(R6::is.R6(`undrop`))
        self$`undrop` <- `undrop`
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
    #' @return TweetUndropComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      TweetUndropComplianceSchemaObject <- list()
      if (!is.null(self$`undrop`)) {
        TweetUndropComplianceSchemaObject[["undrop"]] <-
          self$`undrop`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        TweetUndropComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      TweetUndropComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of TweetUndropComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetUndropComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetUndropComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`undrop`)) {
        undrop_object <- TweetComplianceSchema$new()
        undrop_object$fromJSON(jsonlite::toJSON(this_object$undrop, auto_unbox = TRUE, digits = NA))
        self$`undrop` <- undrop_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetUndropComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`undrop`)) {
          sprintf(
          '"undrop":
          %s
          ',
          jsonlite::toJSON(self$`undrop`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of TweetUndropComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetUndropComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetUndropComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`undrop` <- TweetComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$undrop, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to TweetUndropComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to TweetUndropComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `undrop`
      if (!is.null(input_json$`undrop`)) {
        stopifnot(R6::is.R6(input_json$`undrop`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetUndropComplianceSchema: the required field `undrop` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetUndropComplianceSchema
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
      # check if the required `undrop` is null
      if (is.null(self$`undrop`)) {
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
      # check if the required `undrop` is null
      if (is.null(self$`undrop`)) {
        invalid_fields["undrop"] <- "Non-nullable required field `undrop` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetUndropComplianceSchema$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetUndropComplianceSchema$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetUndropComplianceSchema$lock()

