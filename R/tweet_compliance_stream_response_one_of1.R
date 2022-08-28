#' Create a new TweetComplianceStreamResponseOneOf1
#'
#' @description
#' TweetComplianceStreamResponseOneOf1 Class
#'
#' @docType class
#' @title TweetComplianceStreamResponseOneOf1
#' @description TweetComplianceStreamResponseOneOf1 Class
#' @format An \code{R6Class} generator object
#' @field errors  list(\link{Problem})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetComplianceStreamResponseOneOf1 <- R6::R6Class(
  "TweetComplianceStreamResponseOneOf1",
  public = list(
    `errors` = NULL,
    #' Initialize a new TweetComplianceStreamResponseOneOf1 class.
    #'
    #' @description
    #' Initialize a new TweetComplianceStreamResponseOneOf1 class.
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
    #' @return TweetComplianceStreamResponseOneOf1 in JSON format
    #' @export
    toJSON = function() {
      TweetComplianceStreamResponseOneOf1Object <- list()
      if (!is.null(self$`errors`)) {
        TweetComplianceStreamResponseOneOf1Object[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }

      TweetComplianceStreamResponseOneOf1Object
    },
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponseOneOf1
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponseOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetComplianceStreamResponseOneOf1
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
    #' @return TweetComplianceStreamResponseOneOf1 in JSON format
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
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponseOneOf1
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponseOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetComplianceStreamResponseOneOf1
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to TweetComplianceStreamResponseOneOf1
    #'
    #' @description
    #' Validate JSON input with respect to TweetComplianceStreamResponseOneOf1 and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TweetComplianceStreamResponseOneOf1: the required field `errors` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetComplianceStreamResponseOneOf1
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
      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
        invalid_fields["errors"] <- "Non-nullable required field `errors` cannot be null."
      }

      if (length(self$`errors`) < 1) {
        invalid_fields["errors"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetComplianceStreamResponseOneOf1$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetComplianceStreamResponseOneOf1$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetComplianceStreamResponseOneOf1$lock()

