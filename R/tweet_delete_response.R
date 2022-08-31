#' Create a new TweetDeleteResponse
#'
#' @description
#' TweetDeleteResponse Class
#'
#' @docType class
#' @title TweetDeleteResponse
#' @description TweetDeleteResponse Class
#' @format An \code{R6Class} generator object
#' @field data  \link{TweetDeleteResponseData} [optional]
#' @field errors  list(\link{Problem}) [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetDeleteResponse <- R6::R6Class(
  "TweetDeleteResponse",
  public = list(
    `data` = NULL,
    `errors` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new TweetDeleteResponse class.
    #'
    #' @description
    #' Initialize a new TweetDeleteResponse class.
    #'
    #' @param data data
    #' @param errors errors
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `data` = NULL, `errors` = NULL, additional_properties = NULL, ...
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
    #' @return TweetDeleteResponse in JSON format
    #' @export
    toJSON = function() {
      TweetDeleteResponseObject <- list()
      if (!is.null(self$`data`)) {
        TweetDeleteResponseObject[["data"]] <-
          self$`data`$toJSON()
      }
      if (!is.null(self$`errors`)) {
        TweetDeleteResponseObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        TweetDeleteResponseObject[[key]] <- self$additional_properties[[key]]
      }

      TweetDeleteResponseObject
    },
    #' Deserialize JSON string into an instance of TweetDeleteResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetDeleteResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        data_object <- TweetDeleteResponseData$new()
        data_object$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
        self$`data` <- data_object
      }
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
    #' @return TweetDeleteResponse in JSON format
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
    #' Deserialize JSON string into an instance of TweetDeleteResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetDeleteResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- TweetDeleteResponseData$new()$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to TweetDeleteResponse
    #'
    #' @description
    #' Validate JSON input with respect to TweetDeleteResponse and throw an exception if invalid
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
    #' @return String representation of TweetDeleteResponse
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
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetDeleteResponse$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetDeleteResponse$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetDeleteResponse$lock()

