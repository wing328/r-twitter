#' Create a new TweetDropComplianceSchema
#'
#' @description
#' TweetDropComplianceSchema Class
#'
#' @docType class
#' @title TweetDropComplianceSchema
#' @description TweetDropComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field drop  \link{TweetComplianceSchema}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetDropComplianceSchema <- R6::R6Class(
  "TweetDropComplianceSchema",
  public = list(
    `drop` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new TweetDropComplianceSchema class.
    #'
    #' @description
    #' Initialize a new TweetDropComplianceSchema class.
    #'
    #' @param drop drop
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `drop`, additional_properties = NULL, ...
    ) {
      if (!missing(`drop`)) {
        stopifnot(R6::is.R6(`drop`))
        self$`drop` <- `drop`
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
    #' @return TweetDropComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      TweetDropComplianceSchemaObject <- list()
      if (!is.null(self$`drop`)) {
        TweetDropComplianceSchemaObject[["drop"]] <-
          self$`drop`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        TweetDropComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      TweetDropComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of TweetDropComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetDropComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetDropComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`drop`)) {
        drop_object <- TweetComplianceSchema$new()
        drop_object$fromJSON(jsonlite::toJSON(this_object$drop, auto_unbox = TRUE, digits = NA))
        self$`drop` <- drop_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetDropComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`drop`)) {
          sprintf(
          '"drop":
          %s
          ',
          jsonlite::toJSON(self$`drop`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of TweetDropComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetDropComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetDropComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`drop` <- TweetComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$drop, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to TweetDropComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to TweetDropComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `drop`
      if (!is.null(input_json$`drop`)) {
        stopifnot(R6::is.R6(input_json$`drop`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetDropComplianceSchema: the required field `drop` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetDropComplianceSchema
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
      # check if the required `drop` is null
      if (is.null(self$`drop`)) {
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
      # check if the required `drop` is null
      if (is.null(self$`drop`)) {
        invalid_fields["drop"] <- "Non-nullable required field `drop` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetDropComplianceSchema$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetDropComplianceSchema$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetDropComplianceSchema$lock()

