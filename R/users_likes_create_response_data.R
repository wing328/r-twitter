#' Create a new UsersLikesCreateResponseData
#'
#' @description
#' UsersLikesCreateResponseData Class
#'
#' @docType class
#' @title UsersLikesCreateResponseData
#' @description UsersLikesCreateResponseData Class
#' @format An \code{R6Class} generator object
#' @field liked  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsersLikesCreateResponseData <- R6::R6Class(
  "UsersLikesCreateResponseData",
  public = list(
    `liked` = NULL,
    `_field_list` = c("liked"),
    `additional_properties` = list(),
    #' Initialize a new UsersLikesCreateResponseData class.
    #'
    #' @description
    #' Initialize a new UsersLikesCreateResponseData class.
    #'
    #' @param liked liked
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `liked` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`liked`)) {
        stopifnot(is.logical(`liked`), length(`liked`) == 1)
        self$`liked` <- `liked`
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
    #' @return UsersLikesCreateResponseData in JSON format
    #' @export
    toJSON = function() {
      UsersLikesCreateResponseDataObject <- list()
      if (!is.null(self$`liked`)) {
        UsersLikesCreateResponseDataObject[["liked"]] <-
          self$`liked`
      }
      for (key in names(self$additional_properties)) {
        UsersLikesCreateResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      UsersLikesCreateResponseDataObject
    },
    #' Deserialize JSON string into an instance of UsersLikesCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersLikesCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersLikesCreateResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`liked`)) {
        self$`liked` <- this_object$`liked`
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
    #' @return UsersLikesCreateResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`liked`)) {
          sprintf(
          '"liked":
            %s
                    ',
          tolower(self$`liked`)
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
    #' Deserialize JSON string into an instance of UsersLikesCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersLikesCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersLikesCreateResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`liked` <- this_object$`liked`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UsersLikesCreateResponseData
    #'
    #' @description
    #' Validate JSON input with respect to UsersLikesCreateResponseData and throw an exception if invalid
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
    #' @return String representation of UsersLikesCreateResponseData
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
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#UsersLikesCreateResponseData$unlock()
#
## Below is an example to define the print fnuction
#UsersLikesCreateResponseData$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#UsersLikesCreateResponseData$lock()

