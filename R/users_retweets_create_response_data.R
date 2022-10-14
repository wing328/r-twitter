#' Create a new UsersRetweetsCreateResponseData
#'
#' @description
#' UsersRetweetsCreateResponseData Class
#'
#' @docType class
#' @title UsersRetweetsCreateResponseData
#' @description UsersRetweetsCreateResponseData Class
#' @format An \code{R6Class} generator object
#' @field retweeted  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsersRetweetsCreateResponseData <- R6::R6Class(
  "UsersRetweetsCreateResponseData",
  public = list(
    `retweeted` = NULL,
    `_field_list` = c("retweeted"),
    `additional_properties` = list(),
    #' Initialize a new UsersRetweetsCreateResponseData class.
    #'
    #' @description
    #' Initialize a new UsersRetweetsCreateResponseData class.
    #'
    #' @param retweeted retweeted
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`retweeted` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`retweeted`)) {
        stopifnot(is.logical(`retweeted`), length(`retweeted`) == 1)
        self$`retweeted` <- `retweeted`
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
    #' @return UsersRetweetsCreateResponseData in JSON format
    #' @export
    toJSON = function() {
      UsersRetweetsCreateResponseDataObject <- list()
      if (!is.null(self$`retweeted`)) {
        UsersRetweetsCreateResponseDataObject[["retweeted"]] <-
          self$`retweeted`
      }
      for (key in names(self$additional_properties)) {
        UsersRetweetsCreateResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      UsersRetweetsCreateResponseDataObject
    },
    #' Deserialize JSON string into an instance of UsersRetweetsCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersRetweetsCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersRetweetsCreateResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`retweeted`)) {
        self$`retweeted` <- this_object$`retweeted`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
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
    #' @return UsersRetweetsCreateResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`retweeted`)) {
          sprintf(
            '"retweeted":
            %s
                    ',
            tolower(self$`retweeted`)
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
    #' Deserialize JSON string into an instance of UsersRetweetsCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersRetweetsCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersRetweetsCreateResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`retweeted` <- this_object$`retweeted`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UsersRetweetsCreateResponseData
    #'
    #' @description
    #' Validate JSON input with respect to UsersRetweetsCreateResponseData and throw an exception if invalid
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
    #' @return String representation of UsersRetweetsCreateResponseData
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
# UsersRetweetsCreateResponseData$unlock()
#
## Below is an example to define the print fnuction
# UsersRetweetsCreateResponseData$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UsersRetweetsCreateResponseData$lock()
