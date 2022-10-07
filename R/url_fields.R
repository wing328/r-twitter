#' Create a new UrlFields
#'
#' @description
#' Represent the portion of text recognized as a URL.
#'
#' @docType class
#' @title UrlFields
#' @description UrlFields Class
#' @format An \code{R6Class} generator object
#' @field description Description of the URL landing page. character [optional]
#' @field display_url The URL as displayed in the Twitter client. character [optional]
#' @field expanded_url A validly formatted URL. character [optional]
#' @field images  list(\link{UrlImage}) [optional]
#' @field media_key The Media Key identifier for this attachment. character [optional]
#' @field status HTTP Status Code. integer [optional]
#' @field title Title of the page the URL points to. character [optional]
#' @field unwound_url Fully resolved url. character [optional]
#' @field url A validly formatted URL. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlFields <- R6::R6Class(
  "UrlFields",
  public = list(
    `description` = NULL,
    `display_url` = NULL,
    `expanded_url` = NULL,
    `images` = NULL,
    `media_key` = NULL,
    `status` = NULL,
    `title` = NULL,
    `unwound_url` = NULL,
    `url` = NULL,
    `_field_list` = c("description", "display_url", "expanded_url", "images", "media_key", "status", "title", "unwound_url", "url"),
    `additional_properties` = list(),
    #' Initialize a new UrlFields class.
    #'
    #' @description
    #' Initialize a new UrlFields class.
    #'
    #' @param url A validly formatted URL.
    #' @param description Description of the URL landing page.
    #' @param display_url The URL as displayed in the Twitter client.
    #' @param expanded_url A validly formatted URL.
    #' @param images images
    #' @param media_key The Media Key identifier for this attachment.
    #' @param status HTTP Status Code.
    #' @param title Title of the page the URL points to.
    #' @param unwound_url Fully resolved url.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `url`, `description` = NULL, `display_url` = NULL, `expanded_url` = NULL, `images` = NULL, `media_key` = NULL, `status` = NULL, `title` = NULL, `unwound_url` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!is.null(`display_url`)) {
        stopifnot(is.character(`display_url`), length(`display_url`) == 1)
        self$`display_url` <- `display_url`
      }
      if (!is.null(`expanded_url`)) {
        stopifnot(is.character(`expanded_url`), length(`expanded_url`) == 1)
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`expanded_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", `expanded_url`))
        }
        self$`expanded_url` <- `expanded_url`
      }
      if (!is.null(`images`)) {
        stopifnot(is.vector(`images`), length(`images`) != 0)
        sapply(`images`, function(x) stopifnot(R6::is.R6(x)))
        self$`images` <- `images`
      }
      if (!is.null(`media_key`)) {
        stopifnot(is.character(`media_key`), length(`media_key`) == 1)
        self$`media_key` <- `media_key`
      }
      if (!is.null(`status`)) {
        stopifnot(is.numeric(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!is.null(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!is.null(`unwound_url`)) {
        stopifnot(is.character(`unwound_url`), length(`unwound_url`) == 1)
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`unwound_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", `unwound_url`))
        }
        self$`unwound_url` <- `unwound_url`
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
    #' @return UrlFields in JSON format
    #' @export
    toJSON = function() {
      UrlFieldsObject <- list()
      if (!is.null(self$`description`)) {
        UrlFieldsObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`display_url`)) {
        UrlFieldsObject[["display_url"]] <-
          self$`display_url`
      }
      if (!is.null(self$`expanded_url`)) {
        UrlFieldsObject[["expanded_url"]] <-
          self$`expanded_url`
      }
      if (!is.null(self$`images`)) {
        UrlFieldsObject[["images"]] <-
          lapply(self$`images`, function(x) x$toJSON())
      }
      if (!is.null(self$`media_key`)) {
        UrlFieldsObject[["media_key"]] <-
          self$`media_key`
      }
      if (!is.null(self$`status`)) {
        UrlFieldsObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        UrlFieldsObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`unwound_url`)) {
        UrlFieldsObject[["unwound_url"]] <-
          self$`unwound_url`
      }
      if (!is.null(self$`url`)) {
        UrlFieldsObject[["url"]] <-
          self$`url`
      }
      for (key in names(self$additional_properties)) {
        UrlFieldsObject[[key]] <- self$additional_properties[[key]]
      }

      UrlFieldsObject
    },
    #' Deserialize JSON string into an instance of UrlFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of UrlFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlFields
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`display_url`)) {
        self$`display_url` <- this_object$`display_url`
      }
      if (!is.null(this_object$`expanded_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`expanded_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", this_object$`expanded_url`))
        }
        self$`expanded_url` <- this_object$`expanded_url`
      }
      if (!is.null(this_object$`images`)) {
        self$`images` <- ApiClient$new()$deserializeObj(this_object$`images`, "array[UrlImage]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`media_key`)) {
        self$`media_key` <- this_object$`media_key`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`unwound_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`unwound_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", this_object$`unwound_url`))
        }
        self$`unwound_url` <- this_object$`unwound_url`
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
    #' @return UrlFields in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`display_url`)) {
          sprintf(
          '"display_url":
            "%s"
                    ',
          self$`display_url`
          )
        },
        if (!is.null(self$`expanded_url`)) {
          sprintf(
          '"expanded_url":
            "%s"
                    ',
          self$`expanded_url`
          )
        },
        if (!is.null(self$`images`)) {
          sprintf(
          '"images":
          [%s]
',
          paste(sapply(self$`images`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            %d
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`title`)) {
          sprintf(
          '"title":
            "%s"
                    ',
          self$`title`
          )
        },
        if (!is.null(self$`unwound_url`)) {
          sprintf(
          '"unwound_url":
            "%s"
                    ',
          self$`unwound_url`
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
    #' Deserialize JSON string into an instance of UrlFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of UrlFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlFields
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`display_url` <- this_object$`display_url`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`expanded_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid URL:", this_object$`expanded_url`))
      }
      self$`expanded_url` <- this_object$`expanded_url`
      self$`images` <- ApiClient$new()$deserializeObj(this_object$`images`, "array[UrlImage]", loadNamespace("twitter"))
      self$`media_key` <- this_object$`media_key`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`unwound_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid URL:", this_object$`unwound_url`))
      }
      self$`unwound_url` <- this_object$`unwound_url`
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
    #' Validate JSON input with respect to UrlFields
    #'
    #' @description
    #' Validate JSON input with respect to UrlFields and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        stopifnot(is.character(input_json$`url`), length(input_json$`url`) == 1)
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid URL:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlFields: the required field `url` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlFields
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
      if (length(self$`images`) < 1) {
        return(FALSE)
      }

      if (!str_detect(self$`media_key`, "^([0-9]+)_([0-9]+)$")) {
        return(FALSE)
      }

      if (self$`status` > 599) {
        return(FALSE)
      }
      if (self$`status` < 100) {
        return(FALSE)
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
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
      if (length(self$`images`) < 1) {
        invalid_fields["images"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (!str_detect(self$`media_key`, "^([0-9]+)_([0-9]+)$")) {
        invalid_fields["media_key"] <- "Invalid value for `media_key`, must conform to the pattern ^([0-9]+)_([0-9]+)$."
      }

      if (self$`status` > 599) {
        invalid_fields["status"] <- "Invalid value for `status`, must be smaller than or equal to 599."
      }
      if (self$`status` < 100) {
        invalid_fields["status"] <- "Invalid value for `status`, must be bigger than or equal to 100."
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        invalid_fields["url"] <- "Non-nullable required field `url` cannot be null."
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
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#UrlFields$unlock()
#
## Below is an example to define the print fnuction
#UrlFields$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#UrlFields$lock()

