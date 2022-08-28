#' Create a new MentionFields
#'
#' @description
#' Represent the portion of text recognized as a User mention, and its start and end position within the text.
#'
#' @docType class
#' @title MentionFields
#' @description MentionFields Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field username  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MentionFields <- R6::R6Class(
  "MentionFields",
  public = list(
    `id` = NULL,
    `username` = NULL,
    #' Initialize a new MentionFields class.
    #'
    #' @description
    #' Initialize a new MentionFields class.
    #'
    #' @param username The Twitter handle (screen name) of this user.
    #' @param id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `username`, `id` = NULL, ...
    ) {
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
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
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
MentionFields$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
MentionFields$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
MentionFields$lock()

