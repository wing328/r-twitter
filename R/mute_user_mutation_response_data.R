#' Create a new MuteUserMutationResponseData
#'
#' @description
#' MuteUserMutationResponseData Class
#'
#' @docType class
#' @title MuteUserMutationResponseData
#' @description MuteUserMutationResponseData Class
#' @format An \code{R6Class} generator object
#' @field muting  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MuteUserMutationResponseData <- R6::R6Class(
  "MuteUserMutationResponseData",
  public = list(
    `muting` = NULL,
    #' Initialize a new MuteUserMutationResponseData class.
    #'
    #' @description
    #' Initialize a new MuteUserMutationResponseData class.
    #'
    #' @param muting muting
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `muting` = NULL, ...
    ) {
      if (!is.null(`muting`)) {
        stopifnot(is.logical(`muting`), length(`muting`) == 1)
        self$`muting` <- `muting`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MuteUserMutationResponseData in JSON format
    #' @export
    toJSON = function() {
      MuteUserMutationResponseDataObject <- list()
      if (!is.null(self$`muting`)) {
        MuteUserMutationResponseDataObject[["muting"]] <-
          self$`muting`
      }

      MuteUserMutationResponseDataObject
    },
    #' Deserialize JSON string into an instance of MuteUserMutationResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of MuteUserMutationResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of MuteUserMutationResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`muting`)) {
        self$`muting` <- this_object$`muting`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return MuteUserMutationResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`muting`)) {
          sprintf(
          '"muting":
            %s
                    ',
          tolower(self$`muting`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of MuteUserMutationResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of MuteUserMutationResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of MuteUserMutationResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`muting` <- this_object$`muting`
      self
    },
    #' Validate JSON input with respect to MuteUserMutationResponseData
    #'
    #' @description
    #' Validate JSON input with respect to MuteUserMutationResponseData and throw an exception if invalid
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
    #' @return String representation of MuteUserMutationResponseData
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

