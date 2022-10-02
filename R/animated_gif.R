#' Create a new AnimatedGif
#'
#' @description
#' AnimatedGif Class
#'
#' @docType class
#' @title AnimatedGif
#' @description AnimatedGif Class
#' @format An \code{R6Class} generator object
#' @field height The height of the media in pixels. integer [optional]
#' @field media_key The Media Key identifier for this attachment. character [optional]
#' @field type  character
#' @field width The width of the media in pixels. integer [optional]
#' @field preview_image_url  character [optional]
#' @field variants An array of all available variants of the media. list(\link{Variant}) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnimatedGif <- R6::R6Class(
  "AnimatedGif",
  inherit = Media,
  public = list(
    `height` = NULL,
    `media_key` = NULL,
    `type` = NULL,
    `width` = NULL,
    `preview_image_url` = NULL,
    `variants` = NULL,
    `_field_list` = c("height", "media_key", "type", "width", "preview_image_url", "variants"),
    `additional_properties` = list(),
    #' Initialize a new AnimatedGif class.
    #'
    #' @description
    #' Initialize a new AnimatedGif class.
    #'
    #' @param type type
    #' @param height The height of the media in pixels.
    #' @param media_key The Media Key identifier for this attachment.
    #' @param width The width of the media in pixels.
    #' @param preview_image_url preview_image_url
    #' @param variants An array of all available variants of the media.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `type`, `height` = NULL, `media_key` = NULL, `width` = NULL, `preview_image_url` = NULL, `variants` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!is.null(`height`)) {
        stopifnot(is.numeric(`height`), length(`height`) == 1)
        self$`height` <- `height`
      }
      if (!is.null(`media_key`)) {
        stopifnot(is.character(`media_key`), length(`media_key`) == 1)
        self$`media_key` <- `media_key`
      }
      if (!is.null(`width`)) {
        stopifnot(is.numeric(`width`), length(`width`) == 1)
        self$`width` <- `width`
      }
      if (!is.null(`preview_image_url`)) {
        stopifnot(is.character(`preview_image_url`), length(`preview_image_url`) == 1)
        # validate URL using https://github.com/cran/librarian/blob/master/R/internal_functions.R#L131 credit: Desi Quintans
        if (!any(grepl("(https?|ftp)://[^\\s/$.?#].[^\\s]*", `preview_image_url`))) {
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
    #' @return AnimatedGif in JSON format
    #' @export
    toJSON = function() {
      AnimatedGifObject <- list()
      if (!is.null(self$`height`)) {
        AnimatedGifObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`media_key`)) {
        AnimatedGifObject[["media_key"]] <-
          self$`media_key`
      }
      if (!is.null(self$`type`)) {
        AnimatedGifObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`width`)) {
        AnimatedGifObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`preview_image_url`)) {
        AnimatedGifObject[["preview_image_url"]] <-
          self$`preview_image_url`
      }
      if (!is.null(self$`variants`)) {
        AnimatedGifObject[["variants"]] <-
          lapply(self$`variants`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        AnimatedGifObject[[key]] <- self$additional_properties[[key]]
      }

      AnimatedGifObject
    },
    #' Deserialize JSON string into an instance of AnimatedGif
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnimatedGif
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnimatedGif
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
      if (!is.null(this_object$`preview_image_url`)) {
        # validate URL using https://github.com/cran/librarian/blob/master/R/internal_functions.R#L131 credit: Desi Quintans
        if (!any(grepl("(https?|ftp)://[^\\s/$.?#].[^\\s]*", this_object$`preview_image_url`))) {
          stop(paste("Error! Invalid URL:", this_object$`preview_image_url`))
        }
        self$`preview_image_url` <- this_object$`preview_image_url`
      }
      if (!is.null(this_object$`variants`)) {
        self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[Variant]", loadNamespace("twitter"))
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
    #' @return AnimatedGif in JSON format
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
    #' Deserialize JSON string into an instance of AnimatedGif
    #'
    #' @description
    #' Deserialize JSON string into an instance of AnimatedGif
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnimatedGif
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`height` <- this_object$`height`
      self$`media_key` <- this_object$`media_key`
      self$`type` <- this_object$`type`
      self$`width` <- this_object$`width`
      # validate URL using https://github.com/cran/librarian/blob/master/R/internal_functions.R#L131 credit: Desi Quintans
      if (!any(grepl("(https?|ftp)://[^\\s/$.?#].[^\\s]*", this_object$`preview_image_url`))) {
        stop(paste("Error! Invalid URL:", this_object$`preview_image_url`))
      }
      self$`preview_image_url` <- this_object$`preview_image_url`
      self$`variants` <- ApiClient$new()$deserializeObj(this_object$`variants`, "array[Variant]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to AnimatedGif
    #'
    #' @description
    #' Validate JSON input with respect to AnimatedGif and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnimatedGif: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnimatedGif
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
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#AnimatedGif$unlock()
#
## Below is an example to define the print fnuction
#AnimatedGif$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#AnimatedGif$lock()

