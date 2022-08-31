#' Create a new UserScrubGeoObjectSchema
#'
#' @description
#' UserScrubGeoObjectSchema Class
#'
#' @docType class
#' @title UserScrubGeoObjectSchema
#' @description UserScrubGeoObjectSchema Class
#' @format An \code{R6Class} generator object
#' @field event_at  character
#' @field up_to_tweet_id  character
#' @field user  \link{UserComplianceSchemaUser}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserScrubGeoObjectSchema <- R6::R6Class(
  "UserScrubGeoObjectSchema",
  public = list(
    `event_at` = NULL,
    `up_to_tweet_id` = NULL,
    `user` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new UserScrubGeoObjectSchema class.
    #'
    #' @description
    #' Initialize a new UserScrubGeoObjectSchema class.
    #'
    #' @param event_at Event time.
    #' @param up_to_tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param user user
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `event_at`, `up_to_tweet_id`, `user`, additional_properties = NULL, ...
    ) {
      if (!missing(`event_at`)) {
        stopifnot(is.character(`event_at`), length(`event_at`) == 1)
        self$`event_at` <- `event_at`
      }
      if (!missing(`up_to_tweet_id`)) {
        stopifnot(is.character(`up_to_tweet_id`), length(`up_to_tweet_id`) == 1)
        self$`up_to_tweet_id` <- `up_to_tweet_id`
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
    #' @return UserScrubGeoObjectSchema in JSON format
    #' @export
    toJSON = function() {
      UserScrubGeoObjectSchemaObject <- list()
      if (!is.null(self$`event_at`)) {
        UserScrubGeoObjectSchemaObject[["event_at"]] <-
          self$`event_at`
      }
      if (!is.null(self$`up_to_tweet_id`)) {
        UserScrubGeoObjectSchemaObject[["up_to_tweet_id"]] <-
          self$`up_to_tweet_id`
      }
      if (!is.null(self$`user`)) {
        UserScrubGeoObjectSchemaObject[["user"]] <-
          self$`user`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        UserScrubGeoObjectSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserScrubGeoObjectSchemaObject
    },
    #' Deserialize JSON string into an instance of UserScrubGeoObjectSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserScrubGeoObjectSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserScrubGeoObjectSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event_at`)) {
        self$`event_at` <- this_object$`event_at`
      }
      if (!is.null(this_object$`up_to_tweet_id`)) {
        self$`up_to_tweet_id` <- this_object$`up_to_tweet_id`
      }
      if (!is.null(this_object$`user`)) {
        user_object <- UserComplianceSchemaUser$new()
        user_object$fromJSON(jsonlite::toJSON(this_object$user, auto_unbox = TRUE, digits = NA))
        self$`user` <- user_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserScrubGeoObjectSchema in JSON format
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
        if (!is.null(self$`up_to_tweet_id`)) {
          sprintf(
          '"up_to_tweet_id":
            "%s"
                    ',
          self$`up_to_tweet_id`
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
    #' Deserialize JSON string into an instance of UserScrubGeoObjectSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserScrubGeoObjectSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserScrubGeoObjectSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event_at` <- this_object$`event_at`
      self$`up_to_tweet_id` <- this_object$`up_to_tweet_id`
      self$`user` <- UserComplianceSchemaUser$new()$fromJSON(jsonlite::toJSON(this_object$user, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to UserScrubGeoObjectSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserScrubGeoObjectSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `event_at`
      if (!is.null(input_json$`event_at`)) {
        stopifnot(is.character(input_json$`event_at`), length(input_json$`event_at`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserScrubGeoObjectSchema: the required field `event_at` is missing."))
      }
      # check the required field `up_to_tweet_id`
      if (!is.null(input_json$`up_to_tweet_id`)) {
        stopifnot(is.character(input_json$`up_to_tweet_id`), length(input_json$`up_to_tweet_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserScrubGeoObjectSchema: the required field `up_to_tweet_id` is missing."))
      }
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        stopifnot(R6::is.R6(input_json$`user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserScrubGeoObjectSchema: the required field `user` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserScrubGeoObjectSchema
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

      # check if the required `up_to_tweet_id` is null
      if (is.null(self$`up_to_tweet_id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`up_to_tweet_id`, "^[0-9]{1,19}$")) {
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

      # check if the required `up_to_tweet_id` is null
      if (is.null(self$`up_to_tweet_id`)) {
        invalid_fields["up_to_tweet_id"] <- "Non-nullable required field `up_to_tweet_id` cannot be null."
      }

      if (!str_detect(self$`up_to_tweet_id`, "^[0-9]{1,19}$")) {
        invalid_fields["up_to_tweet_id"] <- "Invalid value for `up_to_tweet_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        invalid_fields["user"] <- "Non-nullable required field `user` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
UserScrubGeoObjectSchema$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
UserScrubGeoObjectSchema$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
UserScrubGeoObjectSchema$lock()

