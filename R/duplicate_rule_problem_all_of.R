#' Create a new DuplicateRuleProblemAllOf
#'
#' @description
#' DuplicateRuleProblemAllOf Class
#'
#' @docType class
#' @title DuplicateRuleProblemAllOf
#' @description DuplicateRuleProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field value  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DuplicateRuleProblemAllOf <- R6::R6Class(
  "DuplicateRuleProblemAllOf",
  public = list(
    `id` = NULL,
    `value` = NULL,
    `_field_list` = c("id", "value"),
    `additional_properties` = list(),
    #' Initialize a new DuplicateRuleProblemAllOf class.
    #'
    #' @description
    #' Initialize a new DuplicateRuleProblemAllOf class.
    #'
    #' @param id id
    #' @param value value
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `value` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
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
    #' @return DuplicateRuleProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      DuplicateRuleProblemAllOfObject <- list()
      if (!is.null(self$`id`)) {
        DuplicateRuleProblemAllOfObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`value`)) {
        DuplicateRuleProblemAllOfObject[["value"]] <-
          self$`value`
      }
      for (key in names(self$additional_properties)) {
        DuplicateRuleProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      DuplicateRuleProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of DuplicateRuleProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of DuplicateRuleProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of DuplicateRuleProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
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
    #' @return DuplicateRuleProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
            '"id":
            "%s"
                    ',
            self$`id`
          )
        },
        if (!is.null(self$`value`)) {
          sprintf(
            '"value":
            "%s"
                    ',
            self$`value`
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
    #' Deserialize JSON string into an instance of DuplicateRuleProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of DuplicateRuleProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of DuplicateRuleProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`value` <- this_object$`value`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to DuplicateRuleProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to DuplicateRuleProblemAllOf and throw an exception if invalid
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
    #' @return String representation of DuplicateRuleProblemAllOf
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
# DuplicateRuleProblemAllOf$unlock()
#
## Below is an example to define the print fnuction
# DuplicateRuleProblemAllOf$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DuplicateRuleProblemAllOf$lock()
