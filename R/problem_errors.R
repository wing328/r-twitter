#' Create a new ProblemErrors
#'
#' @description
#' ProblemErrors Class
#'
#' @docType class
#' @title ProblemErrors
#' @description ProblemErrors Class
#' @format An \code{R6Class} generator object
#' @field errors  list(\link{Problem})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProblemErrors <- R6::R6Class(
  "ProblemErrors",
  public = list(
    `errors` = NULL,
    #' Initialize a new ProblemErrors class.
    #'
    #' @description
    #' Initialize a new ProblemErrors class.
    #'
    #' @param errors errors
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `errors`, ...
    ) {
      if (!missing(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ProblemErrors in JSON format
    #' @export
    toJSON = function() {
      ProblemErrorsObject <- list()
      if (!is.null(self$`errors`)) {
        ProblemErrorsObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }

      ProblemErrorsObject
    },
    #' Deserialize JSON string into an instance of ProblemErrors
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProblemErrors
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProblemErrors
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ProblemErrors in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`errors`)) {
          sprintf(
          '"errors":
          [%s]
',
          paste(sapply(self$`errors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ProblemErrors
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProblemErrors
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProblemErrors
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to ProblemErrors
    #'
    #' @description
    #' Validate JSON input with respect to ProblemErrors and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `errors`
      if (!is.null(input_json$`errors`)) {
        stopifnot(is.vector(input_json$`errors`), length(json_input$`errors`) != 0)
        tmp <- sapply(input_json$`errors`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProblemErrors: the required field `errors` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProblemErrors
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
      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
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
      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
        invalid_fields["errors"] <- "Non-nullable required field `errors` cannot be null."
      }

      invalid_fields
    }
  )
)

