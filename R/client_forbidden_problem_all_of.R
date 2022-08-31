#' Create a new ClientForbiddenProblemAllOf
#'
#' @description
#' ClientForbiddenProblemAllOf Class
#'
#' @docType class
#' @title ClientForbiddenProblemAllOf
#' @description ClientForbiddenProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field reason  character [optional]
#' @field registration_url  character [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClientForbiddenProblemAllOf <- R6::R6Class(
  "ClientForbiddenProblemAllOf",
  public = list(
    `reason` = NULL,
    `registration_url` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new ClientForbiddenProblemAllOf class.
    #'
    #' @description
    #' Initialize a new ClientForbiddenProblemAllOf class.
    #'
    #' @param reason reason
    #' @param registration_url registration_url
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `reason` = NULL, `registration_url` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`reason`)) {
        stopifnot(is.character(`reason`), length(`reason`) == 1)
        self$`reason` <- `reason`
      }
      if (!is.null(`registration_url`)) {
        stopifnot(is.character(`registration_url`), length(`registration_url`) == 1)
        self$`registration_url` <- `registration_url`
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
    #' @return ClientForbiddenProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      ClientForbiddenProblemAllOfObject <- list()
      if (!is.null(self$`reason`)) {
        ClientForbiddenProblemAllOfObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`registration_url`)) {
        ClientForbiddenProblemAllOfObject[["registration_url"]] <-
          self$`registration_url`
      }
      for (key in names(self$additional_properties)) {
        ClientForbiddenProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      ClientForbiddenProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of ClientForbiddenProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of ClientForbiddenProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClientForbiddenProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`registration_url`)) {
        self$`registration_url` <- this_object$`registration_url`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ClientForbiddenProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`reason`)) {
          sprintf(
          '"reason":
            "%s"
                    ',
          self$`reason`
          )
        },
        if (!is.null(self$`registration_url`)) {
          sprintf(
          '"registration_url":
            "%s"
                    ',
          self$`registration_url`
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
    #' Deserialize JSON string into an instance of ClientForbiddenProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of ClientForbiddenProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClientForbiddenProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`reason` <- this_object$`reason`
      self$`registration_url` <- this_object$`registration_url`
      self
    },
    #' Validate JSON input with respect to ClientForbiddenProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to ClientForbiddenProblemAllOf and throw an exception if invalid
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
    #' @return String representation of ClientForbiddenProblemAllOf
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
ClientForbiddenProblemAllOf$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
ClientForbiddenProblemAllOf$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
ClientForbiddenProblemAllOf$lock()

