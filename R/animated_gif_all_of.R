#' Create a new AnimatedGifAllOf
#'
#' @description
#' AnimatedGifAllOf Class
#'
#' @docType class
#' @title AnimatedGifAllOf
#' @description AnimatedGifAllOf Class
#' @format An \code{R6Class} generator object
#' @field preview_image_url  character [optional]
#' @field variants An array of all available variants of the media. list(\link{Variant}) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnimatedGifAllOf <- R6::R6Class(
  "AnimatedGifAllOf",
  public = list(
    `preview_image_url` = NULL,
    `variants` = NULL,
    `_field_list` = c("preview_image_url", "variants"),
    `additional_properties` = list(),
    #' Initialize a new AnimatedGifAllOf class.
    #'
    #' @description
    #' Initialize a new AnimatedGifAllOf class.
    #'
    #' @param preview_image_url preview_image_url
    #' @param variants An array of all available variants of the media.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`preview_image_url` = NULL, `variants` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`preview_image_url`)) {
        stopifnot(is.character(`preview_image_url`), length(`preview_image_url`) == 1)
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`preview_image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", `preview_image_url`))
        }
        self$`preview_image_url` <- `preview_image_url`
      }
      if (!is.null(`variants`)) {
        stopifnot(is.vector(`variants`), length(`variants`) != 0)
        sapply(`variants`, function(x) stopifnot(R6::is.R6(x)))
        self$`variants` <- `variants`
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
    #' @return AnimatedGifAllOf in JSON format
    #' @export
    toJSON = function() {
      AnimatedGifAllOfObject <- list()
      if (!is.null(self$`preview_image_url`)) {
        AnimatedGifAllOfObject[["preview_image_url"]] <-
          self$`preview_image_url`
      }
      if (!is.null(self$`variants`)) {
        AnimatedGifAllOfObject[["variants"]] <-
          lapply(self$`variants`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        AnimatedGifAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      AnimatedGifAllOfObject
    },
    #' Deserialize JSON string into an instance of AnimatedGifAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnimatedGifAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnimatedGifAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`preview_image_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`preview_image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", this_object$`preview_image_url`))
        }
        self$`preview_image_url` <- this_object$`preview_image_url`
      }
      if (!is.null(this_object$`variants`)) {
        self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[Variant]", loadNamespace("twitter"))
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
    #' @return AnimatedGifAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`preview_image_url`)) {
          sprintf(
            '"preview_image_url":
            "%s"
                    ',
            self$`preview_image_url`
          )
        },
        if (!is.null(self$`variants`)) {
          sprintf(
            '"variants":
          [%s]
',
            paste(sapply(self$`variants`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of AnimatedGifAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnimatedGifAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnimatedGifAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`preview_image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid URL:", this_object$`preview_image_url`))
      }
      self$`preview_image_url` <- this_object$`preview_image_url`
      self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[Variant]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to AnimatedGifAllOf
    #'
    #' @description
    #' Validate JSON input with respect to AnimatedGifAllOf and throw an exception if invalid
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
    #' @return String representation of AnimatedGifAllOf
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
# AnimatedGifAllOf$unlock()
#
## Below is an example to define the print fnuction
# AnimatedGifAllOf$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnimatedGifAllOf$lock()
