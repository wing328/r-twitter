#' Create a new PhotoAllOf
#'
#' @description
#' PhotoAllOf Class
#'
#' @docType class
#' @title PhotoAllOf
#' @description PhotoAllOf Class
#' @format An \code{R6Class} generator object
#' @field alt_text  character [optional]
#' @field url  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PhotoAllOf <- R6::R6Class(
  "PhotoAllOf",
  public = list(
    `alt_text` = NULL,
    `url` = NULL,
    `_field_list` = c("alt_text", "url"),
    `additional_properties` = list(),
    #' Initialize a new PhotoAllOf class.
    #'
    #' @description
    #' Initialize a new PhotoAllOf class.
    #'
    #' @param alt_text alt_text
    #' @param url url
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `alt_text` = NULL, `url` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`alt_text`)) {
        stopifnot(is.character(`alt_text`), length(`alt_text`) == 1)
        self$`alt_text` <- `alt_text`
      }
      if (!is.null(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", `url`))
        }
        self$`url` <- `url`
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
    #' @return PhotoAllOf in JSON format
    #' @export
    toJSON = function() {
      PhotoAllOfObject <- list()
      if (!is.null(self$`alt_text`)) {
        PhotoAllOfObject[["alt_text"]] <-
          self$`alt_text`
      }
      if (!is.null(self$`url`)) {
        PhotoAllOfObject[["url"]] <-
          self$`url`
      }
      for (key in names(self$additional_properties)) {
        PhotoAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      PhotoAllOfObject
    },
    #' Deserialize JSON string into an instance of PhotoAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of PhotoAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of PhotoAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alt_text`)) {
        self$`alt_text` <- this_object$`alt_text`
      }
      if (!is.null(this_object$`url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", this_object$`url`))
        }
        self$`url` <- this_object$`url`
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
    #' @return PhotoAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`alt_text`)) {
          sprintf(
          '"alt_text":
            "%s"
                    ',
          self$`alt_text`
          )
        },
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
            "%s"
                    ',
          self$`url`
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
    #' Deserialize JSON string into an instance of PhotoAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of PhotoAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of PhotoAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alt_text` <- this_object$`alt_text`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid URL:", this_object$`url`))
      }
      self$`url` <- this_object$`url`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to PhotoAllOf
    #'
    #' @description
    #' Validate JSON input with respect to PhotoAllOf and throw an exception if invalid
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
    #' @return String representation of PhotoAllOf
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
#PhotoAllOf$unlock()
#
## Below is an example to define the print fnuction
#PhotoAllOf$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PhotoAllOf$lock()

