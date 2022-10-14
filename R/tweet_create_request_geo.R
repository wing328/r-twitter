#' Create a new TweetCreateRequestGeo
#'
#' @description
#' Place ID being attached to the Tweet for geo location.
#'
#' @docType class
#' @title TweetCreateRequestGeo
#' @description TweetCreateRequestGeo Class
#' @format An \code{R6Class} generator object
#' @field place_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetCreateRequestGeo <- R6::R6Class(
  "TweetCreateRequestGeo",
  public = list(
    `place_id` = NULL,
    #' Initialize a new TweetCreateRequestGeo class.
    #'
    #' @description
    #' Initialize a new TweetCreateRequestGeo class.
    #'
    #' @param place_id place_id
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`place_id` = NULL, ...) {
      if (!is.null(`place_id`)) {
        stopifnot(is.character(`place_id`), length(`place_id`) == 1)
        self$`place_id` <- `place_id`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetCreateRequestGeo in JSON format
    #' @export
    toJSON = function() {
      TweetCreateRequestGeoObject <- list()
      if (!is.null(self$`place_id`)) {
        TweetCreateRequestGeoObject[["place_id"]] <-
          self$`place_id`
      }
      TweetCreateRequestGeoObject
    },
    #' Deserialize JSON string into an instance of TweetCreateRequestGeo
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequestGeo
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequestGeo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`place_id`)) {
        self$`place_id` <- this_object$`place_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetCreateRequestGeo in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`place_id`)) {
          sprintf(
            '"place_id":
            "%s"
                    ',
            self$`place_id`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of TweetCreateRequestGeo
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateRequestGeo
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateRequestGeo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`place_id` <- this_object$`place_id`
      self
    },
    #' Validate JSON input with respect to TweetCreateRequestGeo
    #'
    #' @description
    #' Validate JSON input with respect to TweetCreateRequestGeo and throw an exception if invalid
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
    #' @return String representation of TweetCreateRequestGeo
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
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# TweetCreateRequestGeo$unlock()
#
## Below is an example to define the print fnuction
# TweetCreateRequestGeo$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetCreateRequestGeo$lock()
