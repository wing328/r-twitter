#' Create a new Get2UsersIdResponse
#'
#' @description
#' Get2UsersIdResponse Class
#'
#' @docType class
#' @title Get2UsersIdResponse
#' @description Get2UsersIdResponse Class
#' @format An \code{R6Class} generator object
#' @field data  \link{User} [optional]
#' @field errors  list(\link{Problem}) [optional]
#' @field includes  \link{Expansions} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Get2UsersIdResponse <- R6::R6Class(
  "Get2UsersIdResponse",
  public = list(
    `data` = NULL,
    `errors` = NULL,
    `includes` = NULL,
    #' Initialize a new Get2UsersIdResponse class.
    #'
    #' @description
    #' Initialize a new Get2UsersIdResponse class.
    #'
    #' @param data data
    #' @param errors errors
    #' @param includes includes
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `data` = NULL, `errors` = NULL, `includes` = NULL, ...
    ) {
      if (!is.null(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
      }
      if (!is.null(`includes`)) {
        stopifnot(R6::is.R6(`includes`))
        self$`includes` <- `includes`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Get2UsersIdResponse in JSON format
    #' @export
    toJSON = function() {
      Get2UsersIdResponseObject <- list()
      if (!is.null(self$`data`)) {
        Get2UsersIdResponseObject[["data"]] <-
          self$`data`$toJSON()
      }
      if (!is.null(self$`errors`)) {
        Get2UsersIdResponseObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      if (!is.null(self$`includes`)) {
        Get2UsersIdResponseObject[["includes"]] <-
          self$`includes`$toJSON()
      }

      Get2UsersIdResponseObject
    },
    #' Deserialize JSON string into an instance of Get2UsersIdResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2UsersIdResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2UsersIdResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        data_object <- User$new()
        data_object$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
        self$`data` <- data_object
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`includes`)) {
        includes_object <- Expansions$new()
        includes_object$fromJSON(jsonlite::toJSON(this_object$includes, auto_unbox = TRUE, digits = NA))
        self$`includes` <- includes_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Get2UsersIdResponse in JSON format
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
        },
        if (!is.null(self$`errors`)) {
          sprintf(
          '"errors":
          [%s]
',
          paste(sapply(self$`errors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`includes`)) {
          sprintf(
          '"includes":
          %s
          ',
          jsonlite::toJSON(self$`includes`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Get2UsersIdResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2UsersIdResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2UsersIdResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- User$new()$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      self$`includes` <- Expansions$new()$fromJSON(jsonlite::toJSON(this_object$includes, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Get2UsersIdResponse
    #'
    #' @description
    #' Validate JSON input with respect to Get2UsersIdResponse and throw an exception if invalid
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
    #' @return String representation of Get2UsersIdResponse
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
      if (length(self$`errors`) < 1) {
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
      if (length(self$`errors`) < 1) {
        invalid_fields["errors"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      invalid_fields
    }
  )
)

