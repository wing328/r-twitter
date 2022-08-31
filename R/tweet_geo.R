#' Create a new TweetGeo
#'
#' @description
#' The location tagged on the Tweet, if the user provided one.
#'
#' @docType class
#' @title TweetGeo
#' @description TweetGeo Class
#' @format An \code{R6Class} generator object
#' @field coordinates  \link{Point} [optional]
#' @field place_id  character [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetGeo <- R6::R6Class(
  "TweetGeo",
  public = list(
    `coordinates` = NULL,
    `place_id` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new TweetGeo class.
    #'
    #' @description
    #' Initialize a new TweetGeo class.
    #'
    #' @param coordinates coordinates
    #' @param place_id The identifier for this place.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `coordinates` = NULL, `place_id` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`coordinates`)) {
        stopifnot(R6::is.R6(`coordinates`))
        self$`coordinates` <- `coordinates`
      }
      if (!is.null(`place_id`)) {
        stopifnot(is.character(`place_id`), length(`place_id`) == 1)
        self$`place_id` <- `place_id`
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
    #' @return TweetGeo in JSON format
    #' @export
    toJSON = function() {
      TweetGeoObject <- list()
      if (!is.null(self$`coordinates`)) {
        TweetGeoObject[["coordinates"]] <-
          self$`coordinates`$toJSON()
      }
      if (!is.null(self$`place_id`)) {
        TweetGeoObject[["place_id"]] <-
          self$`place_id`
      }
      for (key in names(self$additional_properties)) {
        TweetGeoObject[[key]] <- self$additional_properties[[key]]
      }

      TweetGeoObject
    },
    #' Deserialize JSON string into an instance of TweetGeo
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetGeo
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetGeo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`coordinates`)) {
        coordinates_object <- Point$new()
        coordinates_object$fromJSON(jsonlite::toJSON(this_object$coordinates, auto_unbox = TRUE, digits = NA))
        self$`coordinates` <- coordinates_object
      }
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
    #' @return TweetGeo in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`coordinates`)) {
          sprintf(
          '"coordinates":
          %s
          ',
          jsonlite::toJSON(self$`coordinates`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
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
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
    },
    #' Deserialize JSON string into an instance of TweetGeo
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetGeo
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetGeo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`coordinates` <- Point$new()$fromJSON(jsonlite::toJSON(this_object$coordinates, auto_unbox = TRUE, digits = NA))
      self$`place_id` <- this_object$`place_id`
      self
    },
    #' Validate JSON input with respect to TweetGeo
    #'
    #' @description
    #' Validate JSON input with respect to TweetGeo and throw an exception if invalid
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
    #' @return String representation of TweetGeo
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
TweetGeo$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetGeo$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetGeo$lock()

