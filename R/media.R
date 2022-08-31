#' Create a new Media
#'
#' @description
#' Media Class
#'
#' @docType class
#' @title Media
#' @description Media Class
#' @format An \code{R6Class} generator object
#' @field height  integer [optional]
#' @field media_key  character [optional]
#' @field type  character
#' @field width  integer [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Media <- R6::R6Class(
  "Media",
  public = list(
    `height` = NULL,
    `media_key` = NULL,
    `type` = NULL,
    `width` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new Media class.
    #'
    #' @description
    #' Initialize a new Media class.
    #'
    #' @param type type
    #' @param height The height of the media in pixels.
    #' @param media_key The Media Key identifier for this attachment.
    #' @param width The width of the media in pixels.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `type`, `height` = NULL, `media_key` = NULL, `width` = NULL, additional_properties = NULL, ...
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
    #' @return Media in JSON format
    #' @export
    toJSON = function() {
      MediaObject <- list()
      if (!is.null(self$`height`)) {
        MediaObject[["height"]] <-
          self$`height`
      }
      if (!is.null(self$`media_key`)) {
        MediaObject[["media_key"]] <-
          self$`media_key`
      }
      if (!is.null(self$`type`)) {
        MediaObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`width`)) {
        MediaObject[["width"]] <-
          self$`width`
      }
      for (key in names(self$additional_properties)) {
        MediaObject[[key]] <- self$additional_properties[[key]]
      }

      MediaObject
    },
    #' Deserialize JSON string into an instance of Media
    #'
    #' @description
    #' Deserialize JSON string into an instance of Media
    #'
    #' @param input_json the JSON input
    #' @return the instance of Media
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
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Media in JSON format
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
    #' Deserialize JSON string into an instance of Media
    #'
    #' @description
    #' Deserialize JSON string into an instance of Media
    #'
    #' @param input_json the JSON input
    #' @return the instance of Media
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`height` <- this_object$`height`
      self$`media_key` <- this_object$`media_key`
      self$`type` <- this_object$`type`
      self$`width` <- this_object$`width`
      self
    },
    #' Validate JSON input with respect to Media
    #'
    #' @description
    #' Validate JSON input with respect to Media and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Media: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Media
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
Media$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
Media$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
Media$lock()

