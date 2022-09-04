#' Create a new TweetDeleteComplianceSchema
#'
#' @description
#' TweetDeleteComplianceSchema Class
#'
#' @docType class
#' @title TweetDeleteComplianceSchema
#' @description TweetDeleteComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field delete  \link{TweetComplianceSchema}
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetDeleteComplianceSchema <- R6::R6Class(
  "TweetDeleteComplianceSchema",
  public = list(
    `delete` = NULL,
    `_field_list` = c("delete"),
    `additional_properties` = list(),
    #' Initialize a new TweetDeleteComplianceSchema class.
    #'
    #' @description
    #' Initialize a new TweetDeleteComplianceSchema class.
    #'
    #' @param delete delete
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `delete`, additional_properties = NULL, ...
    ) {
      if (!missing(`delete`)) {
        stopifnot(R6::is.R6(`delete`))
        self$`delete` <- `delete`
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
    #' @return TweetDeleteComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      TweetDeleteComplianceSchemaObject <- list()
      if (!is.null(self$`delete`)) {
        TweetDeleteComplianceSchemaObject[["delete"]] <-
          self$`delete`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        TweetDeleteComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      TweetDeleteComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of TweetDeleteComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetDeleteComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetDeleteComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`delete`)) {
        delete_object <- TweetComplianceSchema$new()
        delete_object$fromJSON(jsonlite::toJSON(this_object$delete, auto_unbox = TRUE, digits = NA))
        self$`delete` <- delete_object
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
    #' @return TweetDeleteComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`delete`)) {
          sprintf(
          '"delete":
          %s
          ',
          jsonlite::toJSON(self$`delete`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of TweetDeleteComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetDeleteComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetDeleteComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`delete` <- TweetComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$delete, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetDeleteComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to TweetDeleteComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `delete`
      if (!is.null(input_json$`delete`)) {
        stopifnot(R6::is.R6(input_json$`delete`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetDeleteComplianceSchema: the required field `delete` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetDeleteComplianceSchema
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
      # check if the required `delete` is null
      if (is.null(self$`delete`)) {
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
      # check if the required `delete` is null
      if (is.null(self$`delete`)) {
        invalid_fields["delete"] <- "Non-nullable required field `delete` cannot be null."
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
#TweetDeleteComplianceSchema$unlock()
#
## Below is an example to define the print fnuction
#TweetDeleteComplianceSchema$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#TweetDeleteComplianceSchema$lock()

