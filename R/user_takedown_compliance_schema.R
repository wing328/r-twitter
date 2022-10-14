#' Create a new UserTakedownComplianceSchema
#'
#' @description
#' UserTakedownComplianceSchema Class
#'
#' @docType class
#' @title UserTakedownComplianceSchema
#' @description UserTakedownComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field event_at Event time. character
#' @field user  \link{UserComplianceSchemaUser}
#' @field withheld_in_countries  list(character)
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserTakedownComplianceSchema <- R6::R6Class(
  "UserTakedownComplianceSchema",
  public = list(
    `event_at` = NULL,
    `user` = NULL,
    `withheld_in_countries` = NULL,
    `_field_list` = c("event_at", "user", "withheld_in_countries"),
    `additional_properties` = list(),
    #' Initialize a new UserTakedownComplianceSchema class.
    #'
    #' @description
    #' Initialize a new UserTakedownComplianceSchema class.
    #'
    #' @param event_at Event time.
    #' @param user user
    #' @param withheld_in_countries withheld_in_countries
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`event_at`, `user`, `withheld_in_countries`, additional_properties = NULL, ...) {
      if (!missing(`event_at`)) {
        stopifnot(is.character(`event_at`), length(`event_at`) == 1)
        self$`event_at` <- `event_at`
      }
      if (!missing(`user`)) {
        stopifnot(R6::is.R6(`user`))
        self$`user` <- `user`
      }
      if (!missing(`withheld_in_countries`)) {
        stopifnot(is.vector(`withheld_in_countries`), length(`withheld_in_countries`) != 0)
        sapply(`withheld_in_countries`, function(x) stopifnot(is.character(x)))
        self$`withheld_in_countries` <- `withheld_in_countries`
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
    #' @return UserTakedownComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      UserTakedownComplianceSchemaObject <- list()
      if (!is.null(self$`event_at`)) {
        UserTakedownComplianceSchemaObject[["event_at"]] <-
          self$`event_at`
      }
      if (!is.null(self$`user`)) {
        UserTakedownComplianceSchemaObject[["user"]] <-
          self$`user`$toJSON()
      }
      if (!is.null(self$`withheld_in_countries`)) {
        UserTakedownComplianceSchemaObject[["withheld_in_countries"]] <-
          self$`withheld_in_countries`
      }
      for (key in names(self$additional_properties)) {
        UserTakedownComplianceSchemaObject[[key]] <- self$additional_properties[[key]]
      }

      UserTakedownComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of UserTakedownComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserTakedownComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserTakedownComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event_at`)) {
        self$`event_at` <- this_object$`event_at`
      }
      if (!is.null(this_object$`user`)) {
        user_object <- UserComplianceSchemaUser$new()
        user_object$fromJSON(jsonlite::toJSON(this_object$user, auto_unbox = TRUE, digits = NA))
        self$`user` <- user_object
      }
      if (!is.null(this_object$`withheld_in_countries`)) {
        self$`withheld_in_countries` <- ApiClient$new()$deserializeObj(this_object$`withheld_in_countries`, "array[character]", loadNamespace("twitter"))
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
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
    #' @return UserTakedownComplianceSchema in JSON format
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
        if (!is.null(self$`user`)) {
          sprintf(
            '"user":
          %s
          ',
            jsonlite::toJSON(self$`user`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`withheld_in_countries`)) {
          sprintf(
            '"withheld_in_countries":
             [%s]
          ',
            paste(unlist(lapply(self$`withheld_in_countries`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of UserTakedownComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserTakedownComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserTakedownComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event_at` <- this_object$`event_at`
      self$`user` <- UserComplianceSchemaUser$new()$fromJSON(jsonlite::toJSON(this_object$user, auto_unbox = TRUE, digits = NA))
      self$`withheld_in_countries` <- ApiClient$new()$deserializeObj(this_object$`withheld_in_countries`, "array[character]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UserTakedownComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserTakedownComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `event_at`
      if (!is.null(input_json$`event_at`)) {
        stopifnot(is.character(input_json$`event_at`), length(input_json$`event_at`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserTakedownComplianceSchema: the required field `event_at` is missing."))
      }
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        stopifnot(R6::is.R6(input_json$`user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserTakedownComplianceSchema: the required field `user` is missing."))
      }
      # check the required field `withheld_in_countries`
      if (!is.null(input_json$`withheld_in_countries`)) {
        stopifnot(is.vector(input_json$`withheld_in_countries`), length(input_json$`withheld_in_countries`) != 0)
        tmp <- sapply(input_json$`withheld_in_countries`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserTakedownComplianceSchema: the required field `withheld_in_countries` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserTakedownComplianceSchema
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

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        return(FALSE)
      }

      # check if the required `withheld_in_countries` is null
      if (is.null(self$`withheld_in_countries`)) {
        return(FALSE)
      }

      if (length(self$`withheld_in_countries`) < 1) {
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

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        invalid_fields["user"] <- "Non-nullable required field `user` cannot be null."
      }

      # check if the required `withheld_in_countries` is null
      if (is.null(self$`withheld_in_countries`)) {
        invalid_fields["withheld_in_countries"] <- "Non-nullable required field `withheld_in_countries` cannot be null."
      }

      if (length(self$`withheld_in_countries`) < 1) {
        invalid_fields["withheld_in_countries"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
# UserTakedownComplianceSchema$unlock()
#
## Below is an example to define the print fnuction
# UserTakedownComplianceSchema$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserTakedownComplianceSchema$lock()
