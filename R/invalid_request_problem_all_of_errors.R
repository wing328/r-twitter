#' Create a new InvalidRequestProblemAllOfErrors
#'
#' @description
#' InvalidRequestProblemAllOfErrors Class
#'
#' @docType class
#' @title InvalidRequestProblemAllOfErrors
#' @description InvalidRequestProblemAllOfErrors Class
#' @format An \code{R6Class} generator object
#' @field message  character [optional]
#' @field parameters  named list(list(character)) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InvalidRequestProblemAllOfErrors <- R6::R6Class(
  "InvalidRequestProblemAllOfErrors",
  public = list(
    `message` = NULL,
    `parameters` = NULL,
    `_field_list` = c("message", "parameters"),
    `additional_properties` = list(),
    #' Initialize a new InvalidRequestProblemAllOfErrors class.
    #'
    #' @description
    #' Initialize a new InvalidRequestProblemAllOfErrors class.
    #'
    #' @param message message
    #' @param parameters parameters
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`message` = NULL, `parameters` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!is.null(`parameters`)) {
        stopifnot(is.vector(`parameters`), length(`parameters`) != 0)
        sapply(`parameters`, function(x) stopifnot(R6::is.R6(x)))
        self$`parameters` <- `parameters`
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
    #' @return InvalidRequestProblemAllOfErrors in JSON format
    #' @export
    toJSON = function() {
      InvalidRequestProblemAllOfErrorsObject <- list()
      if (!is.null(self$`message`)) {
        InvalidRequestProblemAllOfErrorsObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`parameters`)) {
        InvalidRequestProblemAllOfErrorsObject[["parameters"]] <-
          lapply(self$`parameters`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        InvalidRequestProblemAllOfErrorsObject[[key]] <- self$additional_properties[[key]]
      }

      InvalidRequestProblemAllOfErrorsObject
    },
    #' Deserialize JSON string into an instance of InvalidRequestProblemAllOfErrors
    #'
    #' @description
    #' Deserialize JSON string into an instance of InvalidRequestProblemAllOfErrors
    #'
    #' @param input_json the JSON input
    #' @return the instance of InvalidRequestProblemAllOfErrors
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`parameters`)) {
        self$`parameters` <- ApiClient$new()$deserializeObj(this_object$`parameters`, "map(array[character])", loadNamespace("twitter"))
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
    #' @return InvalidRequestProblemAllOfErrors in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`message`)) {
          sprintf(
            '"message":
            "%s"
                    ',
            self$`message`
          )
        },
        if (!is.null(self$`parameters`)) {
          sprintf(
            '"parameters":
          %s
',
            jsonlite::toJSON(lapply(self$`parameters`, function(x) {
              x$toJSON()
            }), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of InvalidRequestProblemAllOfErrors
    #'
    #' @description
    #' Deserialize JSON string into an instance of InvalidRequestProblemAllOfErrors
    #'
    #' @param input_json the JSON input
    #' @return the instance of InvalidRequestProblemAllOfErrors
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`parameters` <- ApiClient$new()$deserializeObj(this_object$`parameters`, "map(array[character])", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to InvalidRequestProblemAllOfErrors
    #'
    #' @description
    #' Validate JSON input with respect to InvalidRequestProblemAllOfErrors and throw an exception if invalid
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
    #' @return String representation of InvalidRequestProblemAllOfErrors
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
# InvalidRequestProblemAllOfErrors$unlock()
#
## Below is an example to define the print fnuction
# InvalidRequestProblemAllOfErrors$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InvalidRequestProblemAllOfErrors$lock()
