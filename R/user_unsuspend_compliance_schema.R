#' Create a new UserUnsuspendComplianceSchema
#'
#' @description
#' UserUnsuspendComplianceSchema Class
#'
#' @docType class
#' @title UserUnsuspendComplianceSchema
#' @description UserUnsuspendComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field user_unsuspend  \link{UserComplianceSchema}
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserUnsuspendComplianceSchema <- R6::R6Class(
  "UserUnsuspendComplianceSchema",
  public = list(
    `user_unsuspend` = NULL,
    `_field_list` = c("user_unsuspend"),
    `additional_properties` = list(),
    #' Initialize a new UserUnsuspendComplianceSchema class.
    #'
    #' @description
    #' Initialize a new UserUnsuspendComplianceSchema class.
    #'
    #' @param user_unsuspend user_unsuspend
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`user_unsuspend`, additional_properties = NULL, ...) {
      if (!missing(`user_unsuspend`)) {
        stopifnot(R6::is.R6(`user_unsuspend`))
        self$`user_unsuspend` <- `user_unsuspend`
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
    #' @return UserUnsuspendComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      UserUnsuspendComplianceSchemaObject <- list()
      if (!is.null(self$`user_unsuspend`)) {
        UserUnsuspendComplianceSchemaObject[["user_unsuspend"]] <-
          self$`user_unsuspend`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserUnsuspendComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserUnsuspendComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of UserUnsuspendComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserUnsuspendComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserUnsuspendComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_unsuspend`)) {
        user_unsuspend_object <- UserComplianceSchema$new()
        user_unsuspend_object$fromJSON(jsonlite::toJSON(this_object$user_unsuspend, auto_unbox = TRUE, digits = NA))
        self$`user_unsuspend` <- user_unsuspend_object
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
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
    #' @return UserUnsuspendComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`user_unsuspend`)) {
          sprintf(
            '"user_unsuspend":
          %s
          ',
            jsonlite::toJSON(self$`user_unsuspend`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of UserUnsuspendComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserUnsuspendComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserUnsuspendComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_unsuspend` <- UserComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$user_unsuspend, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UserUnsuspendComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserUnsuspendComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_unsuspend`
      if (!is.null(input_json$`user_unsuspend`)) {
        stopifnot(R6::is.R6(input_json$`user_unsuspend`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserUnsuspendComplianceSchema: the required field `user_unsuspend` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserUnsuspendComplianceSchema
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
      # check if the required `user_unsuspend` is null
      if (is.null(self$`user_unsuspend`)) {
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
      # check if the required `user_unsuspend` is null
      if (is.null(self$`user_unsuspend`)) {
        invalid_fields["user_unsuspend"] <- "Non-nullable required field `user_unsuspend` cannot be null."
      }

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
# UserUnsuspendComplianceSchema$unlock()
#
## Below is an example to define the print fnuction
# UserUnsuspendComplianceSchema$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserUnsuspendComplianceSchema$lock()
