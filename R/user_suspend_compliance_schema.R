#' Create a new UserSuspendComplianceSchema
#'
#' @description
#' UserSuspendComplianceSchema Class
#'
#' @docType class
#' @title UserSuspendComplianceSchema
#' @description UserSuspendComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field user_suspend  \link{UserComplianceSchema}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserSuspendComplianceSchema <- R6::R6Class(
  "UserSuspendComplianceSchema",
  public = list(
    `user_suspend` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new UserSuspendComplianceSchema class.
    #'
    #' @description
    #' Initialize a new UserSuspendComplianceSchema class.
    #'
    #' @param user_suspend user_suspend
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `user_suspend`, additional_properties = NULL, ...
    ) {
      if (!missing(`user_suspend`)) {
        stopifnot(R6::is.R6(`user_suspend`))
        self$`user_suspend` <- `user_suspend`
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
    #' @return UserSuspendComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      UserSuspendComplianceSchemaObject <- list()
      if (!is.null(self$`user_suspend`)) {
        UserSuspendComplianceSchemaObject[["user_suspend"]] <-
          self$`user_suspend`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserSuspendComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserSuspendComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of UserSuspendComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserSuspendComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserSuspendComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_suspend`)) {
        user_suspend_object <- UserComplianceSchema$new()
        user_suspend_object$fromJSON(jsonlite::toJSON(this_object$user_suspend, auto_unbox = TRUE, digits = NA))
        self$`user_suspend` <- user_suspend_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserSuspendComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`user_suspend`)) {
          sprintf(
          '"user_suspend":
          %s
          ',
          jsonlite::toJSON(self$`user_suspend`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of UserSuspendComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserSuspendComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserSuspendComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_suspend` <- UserComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$user_suspend, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to UserSuspendComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserSuspendComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_suspend`
      if (!is.null(input_json$`user_suspend`)) {
        stopifnot(R6::is.R6(input_json$`user_suspend`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserSuspendComplianceSchema: the required field `user_suspend` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserSuspendComplianceSchema
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
      # check if the required `user_suspend` is null
      if (is.null(self$`user_suspend`)) {
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
      # check if the required `user_suspend` is null
      if (is.null(self$`user_suspend`)) {
        invalid_fields["user_suspend"] <- "Non-nullable required field `user_suspend` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
UserSuspendComplianceSchema$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
UserSuspendComplianceSchema$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
UserSuspendComplianceSchema$lock()

