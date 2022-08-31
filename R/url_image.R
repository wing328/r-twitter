#' Create a new UrlImage
#'
#' @description
#' Represent the information for the URL image.
#'
#' @docType class
#' @title UrlImage
#' @description UrlImage Class
#' @format An \code{R6Class} generator object
#' @field height  integer [optional]
#' @field url  character [optional]
#' @field width  integer [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlImage <- R6::R6Class(
  "UrlImage",
  public = list(
    `height` = NULL,
    `url` = NULL,
    `width` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new UrlImage class.
    #'
    #' @description
    #' Initialize a new UrlImage class.
    #'
    #' @param height The height of the media in pixels.
    #' @param url A validly formatted URL.
    #' @param width The width of the media in pixels.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `height` = NULL, `url` = NULL, `width` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`height`)) {
        stopifnot(is.numeric(`height`), length(`height`) == 1)
        self$`height` <- `height`
      }
      if (!is.null(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!is.null(`width`)) {
        stopifnot(is.numeric(`width`), length(`width`) == 1)
        self$`width` <- `width`
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
    #' @return UrlImage in JSON format
    #' @export
    toJSON = function() {
      UrlImageObject <- list()
      if (!is.null(self$`height`)) {
        UrlImageObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`url`)) {
        UrlImageObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`width`)) {
        UrlImageObject[["width"]] <-
          self$`width`
      }
      for (key in names(self$additional_properties)) {
        UrlImageObject[[key]] <- self$additional_properties[[key]]
      }

      UrlImageObject
    },
    #' Deserialize JSON string into an instance of UrlImage
    #'
    #' @description
    #' Deserialize JSON string into an instance of UrlImage
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlImage
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UrlImage in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`height`)) {
          sprintf(
          '"height":
            %d
                    ',
          self$`height`
          )
        },
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
            "%s"
                    ',
          self$`url`
          )
        },
        if (!is.null(self$`width`)) {
          sprintf(
          '"width":
            %d
                    ',
          self$`width`
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
    #' Deserialize JSON string into an instance of UrlImage
    #'
    #' @description
    #' Deserialize JSON string into an instance of UrlImage
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlImage
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`height` <- this_object$`height`
      self$`url` <- this_object$`url`
      self$`width` <- this_object$`width`
      self
    },
    #' Validate JSON input with respect to UrlImage
    #'
    #' @description
    #' Validate JSON input with respect to UrlImage and throw an exception if invalid
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
    #' @return String representation of UrlImage
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
      if (self$`height` < 0) {
        return(FALSE)
      }

      if (self$`width` < 0) {
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
      if (self$`height` < 0) {
        invalid_fields["height"] <- "Invalid value for `height`, must be bigger than or equal to 0."
      }

      if (self$`width` < 0) {
        invalid_fields["width"] <- "Invalid value for `width`, must be bigger than or equal to 0."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
UrlImage$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
UrlImage$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
UrlImage$lock()

