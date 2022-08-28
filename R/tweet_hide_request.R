#' Create a new TweetHideRequest
#'
#' @description
#' TweetHideRequest Class
#'
#' @docType class
#' @title TweetHideRequest
#' @description TweetHideRequest Class
#' @format An \code{R6Class} generator object
#' @field hidden  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetHideRequest <- R6::R6Class(
  "TweetHideRequest",
  public = list(
    `hidden` = NULL,
    #' Initialize a new TweetHideRequest class.
    #'
    #' @description
    #' Initialize a new TweetHideRequest class.
    #'
    #' @param hidden hidden
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `hidden`, ...
    ) {
      if (!missing(`hidden`)) {
        stopifnot(is.logical(`hidden`), length(`hidden`) == 1)
        self$`hidden` <- `hidden`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetHideRequest in JSON format
    #' @export
    toJSON = function() {
      TweetHideRequestObject <- list()
      if (!is.null(self$`hidden`)) {
        TweetHideRequestObject[["hidden"]] <-
          self$`hidden`
      }

      TweetHideRequestObject
    },
    #' Deserialize JSON string into an instance of TweetHideRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetHideRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetHideRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`hidden`)) {
        self$`hidden` <- this_object$`hidden`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetHideRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`hidden`)) {
          sprintf(
          '"hidden":
            %s
                    ',
          tolower(self$`hidden`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TweetHideRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetHideRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetHideRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`hidden` <- this_object$`hidden`
      self
    },
    #' Validate JSON input with respect to TweetHideRequest
    #'
    #' @description
    #' Validate JSON input with respect to TweetHideRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `hidden`
      if (!is.null(input_json$`hidden`)) {
        stopifnot(is.logical(input_json$`hidden`), length(input_json$`hidden`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetHideRequest: the required field `hidden` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetHideRequest
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
      # check if the required `hidden` is null
      if (is.null(self$`hidden`)) {
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
      # check if the required `hidden` is null
      if (is.null(self$`hidden`)) {
        invalid_fields["hidden"] <- "Non-nullable required field `hidden` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetHideRequest$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetHideRequest$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetHideRequest$lock()

