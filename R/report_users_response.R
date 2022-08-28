#' Create a new ReportUsersResponse
#'
#' @description
#' ReportUsersResponse Class
#'
#' @docType class
#' @title ReportUsersResponse
#' @description ReportUsersResponse Class
#' @format An \code{R6Class} generator object
#' @field data  \link{ReportUsersResponseData} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportUsersResponse <- R6::R6Class(
  "ReportUsersResponse",
  public = list(
    `data` = NULL,
    #' Initialize a new ReportUsersResponse class.
    #'
    #' @description
    #' Initialize a new ReportUsersResponse class.
    #'
    #' @param data data
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `data` = NULL, ...
    ) {
      if (!is.null(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ReportUsersResponse in JSON format
    #' @export
    toJSON = function() {
      ReportUsersResponseObject <- list()
      if (!is.null(self$`data`)) {
        ReportUsersResponseObject[["data"]] <-
          self$`data`$toJSON()
      }

      ReportUsersResponseObject
    },
    #' Deserialize JSON string into an instance of ReportUsersResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of ReportUsersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportUsersResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        data_object <- ReportUsersResponseData$new()
        data_object$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
        self$`data` <- data_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ReportUsersResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`data`)) {
          sprintf(
          '"data":
          %s
          ',
          jsonlite::toJSON(self$`data`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ReportUsersResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of ReportUsersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportUsersResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ReportUsersResponseData$new()$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to ReportUsersResponse
    #'
    #' @description
    #' Validate JSON input with respect to ReportUsersResponse and throw an exception if invalid
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
    #' @return String representation of ReportUsersResponse
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

