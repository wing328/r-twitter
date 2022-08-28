#' Create a new UsersLikesCreateResponseData
#'
#' @description
#' UsersLikesCreateResponseData Class
#'
#' @docType class
#' @title UsersLikesCreateResponseData
#' @description UsersLikesCreateResponseData Class
#' @format An \code{R6Class} generator object
#' @field liked  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsersLikesCreateResponseData <- R6::R6Class(
  "UsersLikesCreateResponseData",
  public = list(
    `liked` = NULL,
    #' Initialize a new UsersLikesCreateResponseData class.
    #'
    #' @description
    #' Initialize a new UsersLikesCreateResponseData class.
    #'
    #' @param liked liked
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `liked` = NULL, ...
    ) {
      if (!is.null(`liked`)) {
        stopifnot(is.logical(`liked`), length(`liked`) == 1)
        self$`liked` <- `liked`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UsersLikesCreateResponseData in JSON format
    #' @export
    toJSON = function() {
      UsersLikesCreateResponseDataObject <- list()
      if (!is.null(self$`liked`)) {
        UsersLikesCreateResponseDataObject[["liked"]] <-
          self$`liked`
      }

      UsersLikesCreateResponseDataObject
    },
    #' Deserialize JSON string into an instance of UsersLikesCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersLikesCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersLikesCreateResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`liked`)) {
        self$`liked` <- this_object$`liked`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UsersLikesCreateResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`liked`)) {
          sprintf(
          '"liked":
            %s
                    ',
          tolower(self$`liked`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UsersLikesCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersLikesCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersLikesCreateResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`liked` <- this_object$`liked`
      self
    },
    #' Validate JSON input with respect to UsersLikesCreateResponseData
    #'
    #' @description
    #' Validate JSON input with respect to UsersLikesCreateResponseData and throw an exception if invalid
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
    #' @return String representation of UsersLikesCreateResponseData
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
  )
)

