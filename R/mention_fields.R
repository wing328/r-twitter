#' Create a new MentionFields
#'
#' @description
#' Represent the portion of text recognized as a User mention, and its start and end position within the text.
#'
#' @docType class
#' @title MentionFields
#' @description MentionFields Class
#' @format An \code{R6Class} generator object
#' @field id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field username The Twitter handle (screen name) of this user. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MentionFields <- R6::R6Class(
  "MentionFields",
  public = list(
    `id` = NULL,
    `username` = NULL,
    `_field_list` = c("id", "username"),
    `additional_properties` = list(),
    #' Initialize a new MentionFields class.
    #'
    #' @description
    #' Initialize a new MentionFields class.
    #'
    #' @param username The Twitter handle (screen name) of this user.
    #' @param id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `username`, `id` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
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
    #' @return MentionFields in JSON format
    #' @export
    toJSON = function() {
      MentionFieldsObject <- list()
      if (!is.null(self$`id`)) {
        MentionFieldsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`username`)) {
        MentionFieldsObject[["username"]] <-
          self$`username`
      }
      for (key in names(self$additional_properties)) {
        MentionFieldsObject[[key]] <- self$additional_properties[[key]]
      }

      MentionFieldsObject
    },
    #' Deserialize JSON string into an instance of MentionFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of MentionFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of MentionFields
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
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
    #' @return MentionFields in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`username`)) {
          sprintf(
          '"username":
            "%s"
                    ',
          self$`username`
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
    #' Deserialize JSON string into an instance of MentionFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of MentionFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of MentionFields
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`username` <- this_object$`username`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to MentionFields
    #'
    #' @description
    #' Validate JSON input with respect to MentionFields and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        stopifnot(is.character(input_json$`username`), length(input_json$`username`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MentionFields: the required field `username` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MentionFields
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
      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      if (!str_detect(self$`username`, "^[A-Za-z0-9_]{1,15}$")) {
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
      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      if (!str_detect(self$`username`, "^[A-Za-z0-9_]{1,15}$")) {
        invalid_fields["username"] <- "Invalid value for `username`, must conform to the pattern ^[A-Za-z0-9_]{1,15}$."
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
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#MentionFields$unlock()
#
## Below is an example to define the print fnuction
#MentionFields$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#MentionFields$lock()

