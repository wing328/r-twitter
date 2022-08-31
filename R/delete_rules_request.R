#' Create a new DeleteRulesRequest
#'
#' @description
#' A response from deleting user-specified stream filtering rules.
#'
#' @docType class
#' @title DeleteRulesRequest
#' @description DeleteRulesRequest Class
#' @format An \code{R6Class} generator object
#' @field delete  \link{DeleteRulesRequestDelete}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeleteRulesRequest <- R6::R6Class(
  "DeleteRulesRequest",
  public = list(
    `delete` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new DeleteRulesRequest class.
    #'
    #' @description
    #' Initialize a new DeleteRulesRequest class.
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
    #' @return DeleteRulesRequest in JSON format
    #' @export
    toJSON = function() {
      DeleteRulesRequestObject <- list()
      if (!is.null(self$`delete`)) {
        DeleteRulesRequestObject[["delete"]] <-
          self$`delete`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        DeleteRulesRequestObject[[key]] <- self$additional_properties[[key]]
      }

      DeleteRulesRequestObject
    },
    #' Deserialize JSON string into an instance of DeleteRulesRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeleteRulesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeleteRulesRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`delete`)) {
        delete_object <- DeleteRulesRequestDelete$new()
        delete_object$fromJSON(jsonlite::toJSON(this_object$delete, auto_unbox = TRUE, digits = NA))
        self$`delete` <- delete_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DeleteRulesRequest in JSON format
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
    #' Deserialize JSON string into an instance of DeleteRulesRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeleteRulesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeleteRulesRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`delete` <- DeleteRulesRequestDelete$new()$fromJSON(jsonlite::toJSON(this_object$delete, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to DeleteRulesRequest
    #'
    #' @description
    #' Validate JSON input with respect to DeleteRulesRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `delete`
      if (!is.null(input_json$`delete`)) {
        stopifnot(R6::is.R6(input_json$`delete`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeleteRulesRequest: the required field `delete` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeleteRulesRequest
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
DeleteRulesRequest$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
DeleteRulesRequest$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
DeleteRulesRequest$lock()

