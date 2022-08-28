#' Create a new ListFollowedResponseData
#'
#' @description
#' ListFollowedResponseData Class
#'
#' @docType class
#' @title ListFollowedResponseData
#' @description ListFollowedResponseData Class
#' @format An \code{R6Class} generator object
#' @field following  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListFollowedResponseData <- R6::R6Class(
  "ListFollowedResponseData",
  public = list(
    `following` = NULL,
    #' Initialize a new ListFollowedResponseData class.
    #'
    #' @description
    #' Initialize a new ListFollowedResponseData class.
    #'
    #' @param following following
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `following` = NULL, ...
    ) {
      if (!is.null(`following`)) {
        stopifnot(is.logical(`following`), length(`following`) == 1)
        self$`following` <- `following`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ListFollowedResponseData in JSON format
    #' @export
    toJSON = function() {
      ListFollowedResponseDataObject <- list()
      if (!is.null(self$`following`)) {
        ListFollowedResponseDataObject[["following"]] <-
          self$`following`
      }

      ListFollowedResponseDataObject
    },
    #' Deserialize JSON string into an instance of ListFollowedResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListFollowedResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListFollowedResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`following`)) {
        self$`following` <- this_object$`following`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ListFollowedResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`following`)) {
          sprintf(
          '"following":
            %s
                    ',
          tolower(self$`following`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ListFollowedResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListFollowedResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListFollowedResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`following` <- this_object$`following`
      self
    },
    #' Validate JSON input with respect to ListFollowedResponseData
    #'
    #' @description
    #' Validate JSON input with respect to ListFollowedResponseData and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ListFollowedResponseData
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
      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
ListFollowedResponseData$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
ListFollowedResponseData$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
ListFollowedResponseData$lock()

