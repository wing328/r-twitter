#' Create a new Variant
#'
#' @description
#' Variant Class
#'
#' @docType class
#' @title Variant
#' @description Variant Class
#' @format An \code{R6Class} generator object
#' @field bit_rate  integer [optional]
#' @field content_type  character [optional]
#' @field url  character [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Variant <- R6::R6Class(
  "Variant",
  public = list(
    `bit_rate` = NULL,
    `content_type` = NULL,
    `url` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new Variant class.
    #'
    #' @description
    #' Initialize a new Variant class.
    #'
    #' @param bit_rate The bit rate of the media.
    #' @param content_type The content type of the media.
    #' @param url The url to the media.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `bit_rate` = NULL, `content_type` = NULL, `url` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`bit_rate`)) {
        stopifnot(is.numeric(`bit_rate`), length(`bit_rate`) == 1)
        self$`bit_rate` <- `bit_rate`
      }
      if (!is.null(`content_type`)) {
        stopifnot(is.character(`content_type`), length(`content_type`) == 1)
        self$`content_type` <- `content_type`
      }
      if (!is.null(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
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
    #' @return Variant in JSON format
    #' @export
    toJSON = function() {
      VariantObject <- list()
      if (!is.null(self$`bit_rate`)) {
        VariantObject[["bit_rate"]] <-
          self$`bit_rate`
      }
      if (!is.null(self$`content_type`)) {
        VariantObject[["content_type"]] <-
          self$`content_type`
      }
      if (!is.null(self$`url`)) {
        VariantObject[["url"]] <-
          self$`url`
      }
      for (key in names(self$additional_properties)) {
        VariantObject[[key]] <- self$additional_properties[[key]]
      }

      VariantObject
    },
    #' Deserialize JSON string into an instance of Variant
    #'
    #' @description
    #' Deserialize JSON string into an instance of Variant
    #'
    #' @param input_json the JSON input
    #' @return the instance of Variant
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bit_rate`)) {
        self$`bit_rate` <- this_object$`bit_rate`
      }
      if (!is.null(this_object$`content_type`)) {
        self$`content_type` <- this_object$`content_type`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Variant in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`bit_rate`)) {
          sprintf(
          '"bit_rate":
            %d
                    ',
          self$`bit_rate`
          )
        },
        if (!is.null(self$`content_type`)) {
          sprintf(
          '"content_type":
            "%s"
                    ',
          self$`content_type`
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
    #' Deserialize JSON string into an instance of Variant
    #'
    #' @description
    #' Deserialize JSON string into an instance of Variant
    #'
    #' @param input_json the JSON input
    #' @return the instance of Variant
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bit_rate` <- this_object$`bit_rate`
      self$`content_type` <- this_object$`content_type`
      self$`url` <- this_object$`url`
      self
    },
    #' Validate JSON input with respect to Variant
    #'
    #' @description
    #' Validate JSON input with respect to Variant and throw an exception if invalid
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
    #' @return String representation of Variant
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
Variant$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
Variant$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
Variant$lock()

