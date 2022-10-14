#' Create a new UsageCapExceededProblemAllOf
#'
#' @description
#' UsageCapExceededProblemAllOf Class
#'
#' @docType class
#' @title UsageCapExceededProblemAllOf
#' @description UsageCapExceededProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field period  character [optional]
#' @field scope  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsageCapExceededProblemAllOf <- R6::R6Class(
  "UsageCapExceededProblemAllOf",
  public = list(
    `period` = NULL,
    `scope` = NULL,
    `_field_list` = c("period", "scope"),
    `additional_properties` = list(),
    #' Initialize a new UsageCapExceededProblemAllOf class.
    #'
    #' @description
    #' Initialize a new UsageCapExceededProblemAllOf class.
    #'
    #' @param period period
    #' @param scope scope
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`period` = NULL, `scope` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`period`)) {
        if (!(`period` %in% c("Daily", "Monthly"))) {
          stop(paste("Error! \"", `period`, "\" cannot be assigned to `period`. Must be \"Daily\", \"Monthly\".", sep = ""))
        }
        stopifnot(is.character(`period`), length(`period`) == 1)
        self$`period` <- `period`
      }
      if (!is.null(`scope`)) {
        if (!(`scope` %in% c("Account", "Product"))) {
          stop(paste("Error! \"", `scope`, "\" cannot be assigned to `scope`. Must be \"Account\", \"Product\".", sep = ""))
        }
        stopifnot(is.character(`scope`), length(`scope`) == 1)
        self$`scope` <- `scope`
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
    #' @return UsageCapExceededProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      UsageCapExceededProblemAllOfObject <- list()
      if (!is.null(self$`period`)) {
        UsageCapExceededProblemAllOfObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`scope`)) {
        UsageCapExceededProblemAllOfObject[["scope"]] <-
          self$`scope`
      }
      for (key in names(self$additional_properties)) {
        UsageCapExceededProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      UsageCapExceededProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of UsageCapExceededProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsageCapExceededProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsageCapExceededProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`period`)) {
        if (!is.null(this_object$`period`) && !(this_object$`period` %in% c("Daily", "Monthly"))) {
          stop(paste("Error! \"", this_object$`period`, "\" cannot be assigned to `period`. Must be \"Daily\", \"Monthly\".", sep = ""))
        }
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`scope`)) {
        if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("Account", "Product"))) {
          stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"Account\", \"Product\".", sep = ""))
        }
        self$`scope` <- this_object$`scope`
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
    #' @return UsageCapExceededProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`period`)) {
          sprintf(
            '"period":
            "%s"
                    ',
            self$`period`
          )
        },
        if (!is.null(self$`scope`)) {
          sprintf(
            '"scope":
            "%s"
                    ',
            self$`scope`
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
    #' Deserialize JSON string into an instance of UsageCapExceededProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsageCapExceededProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsageCapExceededProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`period`) && !(this_object$`period` %in% c("Daily", "Monthly"))) {
        stop(paste("Error! \"", this_object$`period`, "\" cannot be assigned to `period`. Must be \"Daily\", \"Monthly\".", sep = ""))
      }
      self$`period` <- this_object$`period`
      if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("Account", "Product"))) {
        stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"Account\", \"Product\".", sep = ""))
      }
      self$`scope` <- this_object$`scope`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UsageCapExceededProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to UsageCapExceededProblemAllOf and throw an exception if invalid
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
    #' @return String representation of UsageCapExceededProblemAllOf
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
# UsageCapExceededProblemAllOf$unlock()
#
## Below is an example to define the print fnuction
# UsageCapExceededProblemAllOf$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UsageCapExceededProblemAllOf$lock()
