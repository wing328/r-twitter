#' Create a new UserProtectComplianceSchema
#'
#' @description
#' UserProtectComplianceSchema Class
#'
#' @docType class
#' @title UserProtectComplianceSchema
#' @description UserProtectComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field user_protect  \link{UserComplianceSchema}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserProtectComplianceSchema <- R6::R6Class(
  "UserProtectComplianceSchema",
  public = list(
    `user_protect` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new UserProtectComplianceSchema class.
    #'
    #' @description
    #' Initialize a new UserProtectComplianceSchema class.
    #'
    #' @param user_protect user_protect
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `user_protect`, additional_properties = NULL, ...
    ) {
      if (!missing(`user_protect`)) {
        stopifnot(R6::is.R6(`user_protect`))
        self$`user_protect` <- `user_protect`
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
    #' @return UserProtectComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      UserProtectComplianceSchemaObject <- list()
      if (!is.null(self$`user_protect`)) {
        UserProtectComplianceSchemaObject[["user_protect"]] <-
          self$`user_protect`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserProtectComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserProtectComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of UserProtectComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserProtectComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserProtectComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_protect`)) {
        user_protect_object <- UserComplianceSchema$new()
        user_protect_object$fromJSON(jsonlite::toJSON(this_object$user_protect, auto_unbox = TRUE, digits = NA))
        self$`user_protect` <- user_protect_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserProtectComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`user_protect`)) {
          sprintf(
          '"user_protect":
          %s
          ',
          jsonlite::toJSON(self$`user_protect`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of UserProtectComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserProtectComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserProtectComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_protect` <- UserComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$user_protect, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to UserProtectComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserProtectComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_protect`
      if (!is.null(input_json$`user_protect`)) {
        stopifnot(R6::is.R6(input_json$`user_protect`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserProtectComplianceSchema: the required field `user_protect` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserProtectComplianceSchema
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
      # check if the required `user_protect` is null
      if (is.null(self$`user_protect`)) {
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
      # check if the required `user_protect` is null
      if (is.null(self$`user_protect`)) {
        invalid_fields["user_protect"] <- "Non-nullable required field `user_protect` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
UserProtectComplianceSchema$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
UserProtectComplianceSchema$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
UserProtectComplianceSchema$lock()

