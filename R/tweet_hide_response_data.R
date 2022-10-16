#' Create a new TweetHideResponseData
#'
#' @description
#' TweetHideResponseData Class
#'
#' @docType class
#' @title TweetHideResponseData
#' @description TweetHideResponseData Class
#' @format An \code{R6Class} generator object
#' @field hidden  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetHideResponseData <- R6::R6Class(
  "TweetHideResponseData",
  public = list(
    `hidden` = NULL,
    `_field_list` = c("hidden"),
    `additional_properties` = list(),
    #' Initialize a new TweetHideResponseData class.
    #'
    #' @description
    #' Initialize a new TweetHideResponseData class.
    #'
    #' @param hidden hidden
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`hidden` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`hidden`)) {
        stopifnot(is.logical(`hidden`), length(`hidden`) == 1)
        self$`hidden` <- `hidden`
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
    #' @return TweetHideResponseData in JSON format
    #' @export
    toJSON = function() {
      TweetHideResponseDataObject <- list()
      if (!is.null(self$`hidden`)) {
        TweetHideResponseDataObject[["hidden"]] <-
          self$`hidden`
      }
      for (key in names(self$additional_properties)) {
        TweetHideResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      TweetHideResponseDataObject
    },
    #' Deserialize JSON string into an instance of TweetHideResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetHideResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetHideResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`hidden`)) {
        self$`hidden` <- this_object$`hidden`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return TweetHideResponseData in JSON format
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
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
    },
    #' Deserialize JSON string into an instance of TweetHideResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetHideResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetHideResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`hidden` <- this_object$`hidden`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetHideResponseData
    #'
    #' @description
    #' Validate JSON input with respect to TweetHideResponseData and throw an exception if invalid
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
    #' @return String representation of TweetHideResponseData
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
# TweetHideResponseData$unlock()
#
## Below is an example to define the print fnuction
# TweetHideResponseData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetHideResponseData$lock()
