#' Create a new UserUndeleteComplianceSchema
#'
#' @description
#' UserUndeleteComplianceSchema Class
#'
#' @docType class
#' @title UserUndeleteComplianceSchema
#' @description UserUndeleteComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field user_undelete  \link{UserComplianceSchema}
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserUndeleteComplianceSchema <- R6::R6Class(
  "UserUndeleteComplianceSchema",
  public = list(
    `user_undelete` = NULL,
    `_field_list` = c("user_undelete"),
    `additional_properties` = list(),
    #' Initialize a new UserUndeleteComplianceSchema class.
    #'
    #' @description
    #' Initialize a new UserUndeleteComplianceSchema class.
    #'
    #' @param user_undelete user_undelete
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`user_undelete`, additional_properties = NULL, ...) {
      if (!missing(`user_undelete`)) {
        stopifnot(R6::is.R6(`user_undelete`))
        self$`user_undelete` <- `user_undelete`
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
    #' @return UserUndeleteComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      UserUndeleteComplianceSchemaObject <- list()
      if (!is.null(self$`user_undelete`)) {
        UserUndeleteComplianceSchemaObject[["user_undelete"]] <-
          self$`user_undelete`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserUndeleteComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserUndeleteComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of UserUndeleteComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserUndeleteComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserUndeleteComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_undelete`)) {
        user_undelete_object <- UserComplianceSchema$new()
        user_undelete_object$fromJSON(jsonlite::toJSON(this_object$user_undelete, auto_unbox = TRUE, digits = NA))
        self$`user_undelete` <- user_undelete_object
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
    #' @return UserUndeleteComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`user_undelete`)) {
          sprintf(
            '"user_undelete":
          %s
          ',
            jsonlite::toJSON(self$`user_undelete`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of UserUndeleteComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserUndeleteComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserUndeleteComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_undelete` <- UserComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$user_undelete, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UserUndeleteComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserUndeleteComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_undelete`
      if (!is.null(input_json$`user_undelete`)) {
        stopifnot(R6::is.R6(input_json$`user_undelete`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserUndeleteComplianceSchema: the required field `user_undelete` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserUndeleteComplianceSchema
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
      # check if the required `user_undelete` is null
      if (is.null(self$`user_undelete`)) {
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
      # check if the required `user_undelete` is null
      if (is.null(self$`user_undelete`)) {
        invalid_fields["user_undelete"] <- "Non-nullable required field `user_undelete` cannot be null."
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
# UserUndeleteComplianceSchema$unlock()
#
## Below is an example to define the print fnuction
# UserUndeleteComplianceSchema$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserUndeleteComplianceSchema$lock()
