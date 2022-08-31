#' Create a new UsersFollowingCreateResponseData
#'
#' @description
#' UsersFollowingCreateResponseData Class
#'
#' @docType class
#' @title UsersFollowingCreateResponseData
#' @description UsersFollowingCreateResponseData Class
#' @format An \code{R6Class} generator object
#' @field following  character [optional]
#' @field pending_follow  character [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsersFollowingCreateResponseData <- R6::R6Class(
  "UsersFollowingCreateResponseData",
  public = list(
    `following` = NULL,
    `pending_follow` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new UsersFollowingCreateResponseData class.
    #'
    #' @description
    #' Initialize a new UsersFollowingCreateResponseData class.
    #'
    #' @param following following
    #' @param pending_follow pending_follow
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `following` = NULL, `pending_follow` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`following`)) {
        stopifnot(is.logical(`following`), length(`following`) == 1)
        self$`following` <- `following`
      }
      if (!is.null(`pending_follow`)) {
        stopifnot(is.logical(`pending_follow`), length(`pending_follow`) == 1)
        self$`pending_follow` <- `pending_follow`
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
    #' @return UsersFollowingCreateResponseData in JSON format
    #' @export
    toJSON = function() {
      UsersFollowingCreateResponseDataObject <- list()
      if (!is.null(self$`following`)) {
        UsersFollowingCreateResponseDataObject[["following"]] <-
          self$`following`
      }
      if (!is.null(self$`pending_follow`)) {
        UsersFollowingCreateResponseDataObject[["pending_follow"]] <-
          self$`pending_follow`
      }
      for (key in names(self$additional_properties)) {
        UsersFollowingCreateResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      UsersFollowingCreateResponseDataObject
    },
    #' Deserialize JSON string into an instance of UsersFollowingCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersFollowingCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersFollowingCreateResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`following`)) {
        self$`following` <- this_object$`following`
      }
      if (!is.null(this_object$`pending_follow`)) {
        self$`pending_follow` <- this_object$`pending_follow`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UsersFollowingCreateResponseData in JSON format
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
        },
        if (!is.null(self$`pending_follow`)) {
          sprintf(
          '"pending_follow":
            %s
                    ',
          tolower(self$`pending_follow`)
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
    #' Deserialize JSON string into an instance of UsersFollowingCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersFollowingCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersFollowingCreateResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`following` <- this_object$`following`
      self$`pending_follow` <- this_object$`pending_follow`
      self
    },
    #' Validate JSON input with respect to UsersFollowingCreateResponseData
    #'
    #' @description
    #' Validate JSON input with respect to UsersFollowingCreateResponseData and throw an exception if invalid
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
    #' @return String representation of UsersFollowingCreateResponseData
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
UsersFollowingCreateResponseData$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
UsersFollowingCreateResponseData$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
UsersFollowingCreateResponseData$lock()

