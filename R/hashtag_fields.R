#' Create a new HashtagFields
#'
#' @description
#' Represent the portion of text recognized as a Hashtag, and its start and end position within the text.
#'
#' @docType class
#' @title HashtagFields
#' @description HashtagFields Class
#' @format An \code{R6Class} generator object
#' @field tag  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HashtagFields <- R6::R6Class(
  "HashtagFields",
  public = list(
    `tag` = NULL,
    #' Initialize a new HashtagFields class.
    #'
    #' @description
    #' Initialize a new HashtagFields class.
    #'
    #' @param tag The text of the Hashtag.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `tag`, ...
    ) {
      if (!missing(`tag`)) {
        stopifnot(is.character(`tag`), length(`tag`) == 1)
        self$`tag` <- `tag`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return HashtagFields in JSON format
    #' @export
    toJSON = function() {
      HashtagFieldsObject <- list()
      if (!is.null(self$`tag`)) {
        HashtagFieldsObject[["tag"]] <-
          self$`tag`
      }

      HashtagFieldsObject
    },
    #' Deserialize JSON string into an instance of HashtagFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of HashtagFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of HashtagFields
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tag`)) {
        self$`tag` <- this_object$`tag`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return HashtagFields in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`tag`)) {
          sprintf(
          '"tag":
            "%s"
                    ',
          self$`tag`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of HashtagFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of HashtagFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of HashtagFields
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tag` <- this_object$`tag`
      self
    },
    #' Validate JSON input with respect to HashtagFields
    #'
    #' @description
    #' Validate JSON input with respect to HashtagFields and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `tag`
      if (!is.null(input_json$`tag`)) {
        stopifnot(is.character(input_json$`tag`), length(input_json$`tag`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for HashtagFields: the required field `tag` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of HashtagFields
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
      # check if the required `tag` is null
      if (is.null(self$`tag`)) {
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
      # check if the required `tag` is null
      if (is.null(self$`tag`)) {
        invalid_fields["tag"] <- "Non-nullable required field `tag` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
HashtagFields$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
HashtagFields$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
HashtagFields$lock()

