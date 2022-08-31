#' Create a new UserDeleteComplianceSchema
#'
#' @description
#' UserDeleteComplianceSchema Class
#'
#' @docType class
#' @title UserDeleteComplianceSchema
#' @description UserDeleteComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field user_delete  \link{UserComplianceSchema}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserDeleteComplianceSchema <- R6::R6Class(
  "UserDeleteComplianceSchema",
  public = list(
    `user_delete` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new UserDeleteComplianceSchema class.
    #'
    #' @description
    #' Initialize a new UserDeleteComplianceSchema class.
    #'
    #' @param user_delete user_delete
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `user_delete`, additional_properties = NULL, ...
    ) {
      if (!missing(`user_delete`)) {
        stopifnot(R6::is.R6(`user_delete`))
        self$`user_delete` <- `user_delete`
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
    #' @return UserDeleteComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      UserDeleteComplianceSchemaObject <- list()
      if (!is.null(self$`user_delete`)) {
        UserDeleteComplianceSchemaObject[["user_delete"]] <-
          self$`user_delete`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserDeleteComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserDeleteComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of UserDeleteComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserDeleteComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserDeleteComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_delete`)) {
        user_delete_object <- UserComplianceSchema$new()
        user_delete_object$fromJSON(jsonlite::toJSON(this_object$user_delete, auto_unbox = TRUE, digits = NA))
        self$`user_delete` <- user_delete_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserDeleteComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`user_delete`)) {
          sprintf(
          '"user_delete":
          %s
          ',
          jsonlite::toJSON(self$`user_delete`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of UserDeleteComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserDeleteComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserDeleteComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_delete` <- UserComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$user_delete, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to UserDeleteComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserDeleteComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_delete`
      if (!is.null(input_json$`user_delete`)) {
        stopifnot(R6::is.R6(input_json$`user_delete`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserDeleteComplianceSchema: the required field `user_delete` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserDeleteComplianceSchema
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
      # check if the required `user_delete` is null
      if (is.null(self$`user_delete`)) {
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
      # check if the required `user_delete` is null
      if (is.null(self$`user_delete`)) {
        invalid_fields["user_delete"] <- "Non-nullable required field `user_delete` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
UserDeleteComplianceSchema$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
UserDeleteComplianceSchema$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
UserDeleteComplianceSchema$lock()

