#' Create a new OperationalDisconnectProblemAllOf
#'
#' @description
#' OperationalDisconnectProblemAllOf Class
#'
#' @docType class
#' @title OperationalDisconnectProblemAllOf
#' @description OperationalDisconnectProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field disconnect_type  character [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OperationalDisconnectProblemAllOf <- R6::R6Class(
  "OperationalDisconnectProblemAllOf",
  public = list(
    `disconnect_type` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new OperationalDisconnectProblemAllOf class.
    #'
    #' @description
    #' Initialize a new OperationalDisconnectProblemAllOf class.
    #'
    #' @param disconnect_type disconnect_type
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `disconnect_type` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`disconnect_type`)) {
        stopifnot(is.character(`disconnect_type`), length(`disconnect_type`) == 1)
        self$`disconnect_type` <- `disconnect_type`
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
    #' @return OperationalDisconnectProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      OperationalDisconnectProblemAllOfObject <- list()
      if (!is.null(self$`disconnect_type`)) {
        OperationalDisconnectProblemAllOfObject[["disconnect_type"]] <-
          self$`disconnect_type`
      }
      for (key in names(self$additional_properties)) {
        OperationalDisconnectProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      OperationalDisconnectProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of OperationalDisconnectProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of OperationalDisconnectProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of OperationalDisconnectProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`disconnect_type`)) {
        self$`disconnect_type` <- this_object$`disconnect_type`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OperationalDisconnectProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`disconnect_type`)) {
          sprintf(
          '"disconnect_type":
            "%s"
                    ',
          self$`disconnect_type`
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
    #' Deserialize JSON string into an instance of OperationalDisconnectProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of OperationalDisconnectProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of OperationalDisconnectProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`disconnect_type` <- this_object$`disconnect_type`
      self
    },
    #' Validate JSON input with respect to OperationalDisconnectProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to OperationalDisconnectProblemAllOf and throw an exception if invalid
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
    #' @return String representation of OperationalDisconnectProblemAllOf
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
OperationalDisconnectProblemAllOf$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
OperationalDisconnectProblemAllOf$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
OperationalDisconnectProblemAllOf$lock()

