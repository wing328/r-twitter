#' Create a new UserProfileModificationObjectSchema
#'
#' @description
#' UserProfileModificationObjectSchema Class
#'
#' @docType class
#' @title UserProfileModificationObjectSchema
#' @description UserProfileModificationObjectSchema Class
#' @format An \code{R6Class} generator object
#' @field event_at Event time. character
#' @field new_value  character
#' @field profile_field  character
#' @field user  \link{UserComplianceSchemaUser}
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserProfileModificationObjectSchema <- R6::R6Class(
  "UserProfileModificationObjectSchema",
  public = list(
    `event_at` = NULL,
    `new_value` = NULL,
    `profile_field` = NULL,
    `user` = NULL,
    `_field_list` = c("event_at", "new_value", "profile_field", "user"),
    `additional_properties` = list(),
    #' Initialize a new UserProfileModificationObjectSchema class.
    #'
    #' @description
    #' Initialize a new UserProfileModificationObjectSchema class.
    #'
    #' @param event_at Event time.
    #' @param new_value new_value
    #' @param profile_field profile_field
    #' @param user user
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`event_at`, `new_value`, `profile_field`, `user`, additional_properties = NULL, ...) {
      if (!missing(`event_at`)) {
        if (!(is.character(`event_at`) && length(`event_at`) == 1)) {
          stop(paste("Error! Invalid data for `event_at`. Must be a string:", `event_at`))
        }
        self$`event_at` <- `event_at`
      }
      if (!missing(`new_value`)) {
        if (!(is.character(`new_value`) && length(`new_value`) == 1)) {
          stop(paste("Error! Invalid data for `new_value`. Must be a string:", `new_value`))
        }
        self$`new_value` <- `new_value`
      }
      if (!missing(`profile_field`)) {
        if (!(is.character(`profile_field`) && length(`profile_field`) == 1)) {
          stop(paste("Error! Invalid data for `profile_field`. Must be a string:", `profile_field`))
        }
        self$`profile_field` <- `profile_field`
      }
      if (!missing(`user`)) {
        stopifnot(R6::is.R6(`user`))
        self$`user` <- `user`
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
    #' @return UserProfileModificationObjectSchema in JSON format
    #' @export
    toJSON = function() {
      UserProfileModificationObjectSchemaObject <- list()
      if (!is.null(self$`event_at`)) {
        UserProfileModificationObjectSchemaObject[["event_at"]] <-
          self$`event_at`
      }
      if (!is.null(self$`new_value`)) {
        UserProfileModificationObjectSchemaObject[["new_value"]] <-
          self$`new_value`
      }
      if (!is.null(self$`profile_field`)) {
        UserProfileModificationObjectSchemaObject[["profile_field"]] <-
          self$`profile_field`
      }
      if (!is.null(self$`user`)) {
        UserProfileModificationObjectSchemaObject[["user"]] <-
          self$`user`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserProfileModificationObjectSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserProfileModificationObjectSchemaObject
    },
    #' Deserialize JSON string into an instance of UserProfileModificationObjectSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserProfileModificationObjectSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserProfileModificationObjectSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event_at`)) {
        self$`event_at` <- this_object$`event_at`
      }
      if (!is.null(this_object$`new_value`)) {
        self$`new_value` <- this_object$`new_value`
      }
      if (!is.null(this_object$`profile_field`)) {
        self$`profile_field` <- this_object$`profile_field`
      }
      if (!is.null(this_object$`user`)) {
        user_object <- UserComplianceSchemaUser$new()
        user_object$fromJSON(jsonlite::toJSON(this_object$user, auto_unbox = TRUE, digits = NA))
        self$`user` <- user_object
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
    #' @return UserProfileModificationObjectSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`event_at`)) {
          sprintf(
            '"event_at":
            "%s"
                    ',
            self$`event_at`
          )
        },
        if (!is.null(self$`new_value`)) {
          sprintf(
            '"new_value":
            "%s"
                    ',
            self$`new_value`
          )
        },
        if (!is.null(self$`profile_field`)) {
          sprintf(
            '"profile_field":
            "%s"
                    ',
            self$`profile_field`
          )
        },
        if (!is.null(self$`user`)) {
          sprintf(
            '"user":
          %s
          ',
            jsonlite::toJSON(self$`user`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of UserProfileModificationObjectSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserProfileModificationObjectSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserProfileModificationObjectSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event_at` <- this_object$`event_at`
      self$`new_value` <- this_object$`new_value`
      self$`profile_field` <- this_object$`profile_field`
      self$`user` <- UserComplianceSchemaUser$new()$fromJSON(jsonlite::toJSON(this_object$user, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UserProfileModificationObjectSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserProfileModificationObjectSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `event_at`
      if (!is.null(input_json$`event_at`)) {
        if (!(is.character(input_json$`event_at`) && length(input_json$`event_at`) == 1)) {
          stop(paste("Error! Invalid data for `event_at`. Must be a string:", input_json$`event_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserProfileModificationObjectSchema: the required field `event_at` is missing."))
      }
      # check the required field `new_value`
      if (!is.null(input_json$`new_value`)) {
        if (!(is.character(input_json$`new_value`) && length(input_json$`new_value`) == 1)) {
          stop(paste("Error! Invalid data for `new_value`. Must be a string:", input_json$`new_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserProfileModificationObjectSchema: the required field `new_value` is missing."))
      }
      # check the required field `profile_field`
      if (!is.null(input_json$`profile_field`)) {
        if (!(is.character(input_json$`profile_field`) && length(input_json$`profile_field`) == 1)) {
          stop(paste("Error! Invalid data for `profile_field`. Must be a string:", input_json$`profile_field`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserProfileModificationObjectSchema: the required field `profile_field` is missing."))
      }
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        stopifnot(R6::is.R6(input_json$`user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserProfileModificationObjectSchema: the required field `user` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserProfileModificationObjectSchema
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
      # check if the required `event_at` is null
      if (is.null(self$`event_at`)) {
        return(FALSE)
      }

      # check if the required `new_value` is null
      if (is.null(self$`new_value`)) {
        return(FALSE)
      }

      # check if the required `profile_field` is null
      if (is.null(self$`profile_field`)) {
        return(FALSE)
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
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
      # check if the required `event_at` is null
      if (is.null(self$`event_at`)) {
        invalid_fields["event_at"] <- "Non-nullable required field `event_at` cannot be null."
      }

      # check if the required `new_value` is null
      if (is.null(self$`new_value`)) {
        invalid_fields["new_value"] <- "Non-nullable required field `new_value` cannot be null."
      }

      # check if the required `profile_field` is null
      if (is.null(self$`profile_field`)) {
        invalid_fields["profile_field"] <- "Non-nullable required field `profile_field` cannot be null."
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        invalid_fields["user"] <- "Non-nullable required field `user` cannot be null."
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
# UserProfileModificationObjectSchema$unlock()
#
## Below is an example to define the print fnuction
# UserProfileModificationObjectSchema$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserProfileModificationObjectSchema$lock()
