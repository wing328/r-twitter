#' Create a new Photo
#'
#' @description
#' Photo Class
#'
#' @docType class
#' @title Photo
#' @description Photo Class
#' @format An \code{R6Class} generator object
#' @field height The height of the media in pixels. integer [optional]
#' @field media_key The Media Key identifier for this attachment. character [optional]
#' @field type  character
#' @field width The width of the media in pixels. integer [optional]
#' @field alt_text  character [optional]
#' @field url  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Photo <- R6::R6Class(
  "Photo",
  inherit = Media,
  public = list(
    `height` = NULL,
    `media_key` = NULL,
    `type` = NULL,
    `width` = NULL,
    `alt_text` = NULL,
    `url` = NULL,
    `_field_list` = c("height", "media_key", "type", "width", "alt_text", "url"),
    `additional_properties` = list(),
    #' Initialize a new Photo class.
    #'
    #' @description
    #' Initialize a new Photo class.
    #'
    #' @param type type
    #' @param height The height of the media in pixels.
    #' @param media_key The Media Key identifier for this attachment.
    #' @param width The width of the media in pixels.
    #' @param alt_text alt_text
    #' @param url url
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type`, `height` = NULL, `media_key` = NULL, `width` = NULL, `alt_text` = NULL, `url` = NULL, additional_properties = NULL, ...) {
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`height`)) {
        if (!(is.numeric(`height`) && length(`height`) == 1)) {
          stop(paste("Error! Invalid data for `height`. Must be an integer:", `height`))
        }
        self$`height` <- `height`
      }
      if (!is.null(`media_key`)) {
        if (!(is.character(`media_key`) && length(`media_key`) == 1)) {
          stop(paste("Error! Invalid data for `media_key`. Must be a string:", `media_key`))
        }
        self$`media_key` <- `media_key`
      }
      if (!is.null(`width`)) {
        if (!(is.numeric(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be an integer:", `width`))
        }
        self$`width` <- `width`
      }
      if (!is.null(`alt_text`)) {
        if (!(is.character(`alt_text`) && length(`alt_text`) == 1)) {
          stop(paste("Error! Invalid data for `alt_text`. Must be a string:", `alt_text`))
        }
        self$`alt_text` <- `alt_text`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `url`. Must be a URL:", `url`))
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
    #' @return Photo in JSON format
    #' @export
    toJSON = function() {
      PhotoObject <- list()
      if (!is.null(self$`height`)) {
        PhotoObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`media_key`)) {
        PhotoObject[["media_key"]] <-
          self$`media_key`
      }
      if (!is.null(self$`type`)) {
        PhotoObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`width`)) {
        PhotoObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`alt_text`)) {
        PhotoObject[["alt_text"]] <-
          self$`alt_text`
      }
      if (!is.null(self$`url`)) {
        PhotoObject[["url"]] <-
          self$`url`
      }
      for (key in names(self$additional_properties)) {
        PhotoObject[[key]] <- self$additional_properties[[key]]
      }

      PhotoObject
    },
    #' Deserialize JSON string into an instance of Photo
    #'
    #' @description
    #' Deserialize JSON string into an instance of Photo
    #'
    #' @param input_json the JSON input
    #' @return the instance of Photo
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`height`)) {
        self$`height` <- this_object$`height`
      }
      if (!is.null(this_object$`media_key`)) {
        self$`media_key` <- this_object$`media_key`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`width`)) {
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`alt_text`)) {
        self$`alt_text` <- this_object$`alt_text`
      }
      if (!is.null(this_object$`url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `url`. Must be a URL:", this_object$`url`))
        }
        self$`url` <- this_object$`url`
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
    #' @return Photo in JSON format
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
        if (!is.null(self$`media_key`)) {
          sprintf(
            '"media_key":
            "%s"
                    ',
            self$`media_key`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
            '"type":
            "%s"
                    ',
            self$`type`
          )
        },
        if (!is.null(self$`width`)) {
          sprintf(
            '"width":
            %d
                    ',
            self$`width`
          )
        },
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
    #' Deserialize JSON string into an instance of Photo
    #'
    #' @description
    #' Deserialize JSON string into an instance of Photo
    #'
    #' @param input_json the JSON input
    #' @return the instance of Photo
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`height` <- this_object$`height`
      self$`media_key` <- this_object$`media_key`
      self$`type` <- this_object$`type`
      self$`width` <- this_object$`width`
      self$`alt_text` <- this_object$`alt_text`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `url`. Must be a URL:", this_object$`url`))
      }
      self$`url` <- this_object$`url`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Photo
    #'
    #' @description
    #' Validate JSON input with respect to Photo and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Photo: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Photo
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

      if (!str_detect(self$`media_key`, "^([0-9]+)_([0-9]+)$")) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
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

      if (!str_detect(self$`media_key`, "^([0-9]+)_([0-9]+)$")) {
        invalid_fields["media_key"] <- "Invalid value for `media_key`, must conform to the pattern ^([0-9]+)_([0-9]+)$."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      if (self$`width` < 0) {
        invalid_fields["width"] <- "Invalid value for `width`, must be bigger than or equal to 0."
      }

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
# Photo$unlock()
#
## Below is an example to define the print fnuction
# Photo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Photo$lock()
