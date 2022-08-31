#' Create a new InvalidRequestProblemAllOf
#'
#' @description
#' InvalidRequestProblemAllOf Class
#'
#' @docType class
#' @title InvalidRequestProblemAllOf
#' @description InvalidRequestProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field errors  list(\link{InvalidRequestProblemAllOfErrors}) [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InvalidRequestProblemAllOf <- R6::R6Class(
  "InvalidRequestProblemAllOf",
  public = list(
    `errors` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new InvalidRequestProblemAllOf class.
    #'
    #' @description
    #' Initialize a new InvalidRequestProblemAllOf class.
    #'
    #' @param errors errors
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `errors` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
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
    #' @return InvalidRequestProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      InvalidRequestProblemAllOfObject <- list()
      if (!is.null(self$`errors`)) {
        InvalidRequestProblemAllOfObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        InvalidRequestProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      InvalidRequestProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of InvalidRequestProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of InvalidRequestProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of InvalidRequestProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[InvalidRequestProblemAllOfErrors]", loadNamespace("twitter"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return InvalidRequestProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`errors`)) {
          sprintf(
          '"errors":
          [%s]
',
          paste(sapply(self$`errors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of InvalidRequestProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of InvalidRequestProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of InvalidRequestProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[InvalidRequestProblemAllOfErrors]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to InvalidRequestProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to InvalidRequestProblemAllOf and throw an exception if invalid
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
    #' @return String representation of InvalidRequestProblemAllOf
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
      if (length(self$`errors`) < 1) {
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
      if (length(self$`errors`) < 1) {
        invalid_fields["errors"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
InvalidRequestProblemAllOf$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
InvalidRequestProblemAllOf$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
InvalidRequestProblemAllOf$lock()

