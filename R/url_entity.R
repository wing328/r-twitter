#' Create a new UrlEntity
#'
#' @description
#' Represent the portion of text recognized as a URL, and its start and end position within the text.
#'
#' @docType class
#' @title UrlEntity
#' @description UrlEntity Class
#' @format An \code{R6Class} generator object
#' @field end  integer
#' @field start  integer
#' @field description  character [optional]
#' @field display_url  character [optional]
#' @field expanded_url  character [optional]
#' @field images  list(\link{UrlImage}) [optional]
#' @field media_key  character [optional]
#' @field status  integer [optional]
#' @field title  character [optional]
#' @field unwound_url  character [optional]
#' @field url  character
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlEntity <- R6::R6Class(
  "UrlEntity",
  public = list(
    `end` = NULL,
    `start` = NULL,
    `description` = NULL,
    `display_url` = NULL,
    `expanded_url` = NULL,
    `images` = NULL,
    `media_key` = NULL,
    `status` = NULL,
    `title` = NULL,
    `unwound_url` = NULL,
    `url` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new UrlEntity class.
    #'
    #' @description
    #' Initialize a new UrlEntity class.
    #'
    #' @param end Index (zero-based) at which position this entity ends.  The index is exclusive.
    #' @param start Index (zero-based) at which position this entity starts.  The index is inclusive.
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
        `end`, `start`, `url`, `description` = NULL, `display_url` = NULL, `expanded_url` = NULL, `images` = NULL, `media_key` = NULL, `status` = NULL, `title` = NULL, `unwound_url` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`end`)) {
        stopifnot(is.numeric(`end`), length(`end`) == 1)
        self$`end` <- `end`
      }
      if (!missing(`start`)) {
        stopifnot(is.numeric(`start`), length(`start`) == 1)
        self$`start` <- `start`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
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
    #' @return UrlEntity in JSON format
    #' @export
    toJSON = function() {
      UrlEntityObject <- list()
      if (!is.null(self$`end`)) {
        UrlEntityObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`start`)) {
        UrlEntityObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`description`)) {
        UrlEntityObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`display_url`)) {
        UrlEntityObject[["display_url"]] <-
          self$`display_url`
      }
      if (!is.null(self$`expanded_url`)) {
        UrlEntityObject[["expanded_url"]] <-
          self$`expanded_url`
      }
      if (!is.null(self$`images`)) {
        UrlEntityObject[["images"]] <-
          lapply(self$`images`, function(x) x$toJSON())
      }
      if (!is.null(self$`media_key`)) {
        UrlEntityObject[["media_key"]] <-
          self$`media_key`
      }
      if (!is.null(self$`status`)) {
        UrlEntityObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        UrlEntityObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`unwound_url`)) {
        UrlEntityObject[["unwound_url"]] <-
          self$`unwound_url`
      }
      if (!is.null(self$`url`)) {
        UrlEntityObject[["url"]] <-
          self$`url`
      }
      for (key in names(self$additional_properties)) {
        UrlEntityObject[[key]] <- self$additional_properties[[key]]
      }

      UrlEntityObject
    },
    #' Deserialize JSON string into an instance of UrlEntity
    #'
    #' @description
    #' Deserialize JSON string into an instance of UrlEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlEntity
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`display_url`)) {
        self$`display_url` <- this_object$`display_url`
      }
      if (!is.null(this_object$`expanded_url`)) {
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
        self$`unwound_url` <- this_object$`unwound_url`
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
    #' @return UrlEntity in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`end`)) {
          sprintf(
          '"end":
            %d
                    ',
          self$`end`
          )
        },
        if (!is.null(self$`start`)) {
          sprintf(
          '"start":
            %d
                    ',
          self$`start`
          )
        },
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
    #' Deserialize JSON string into an instance of UrlEntity
    #'
    #' @description
    #' Deserialize JSON string into an instance of UrlEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlEntity
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`end` <- this_object$`end`
      self$`start` <- this_object$`start`
      self$`description` <- this_object$`description`
      self$`display_url` <- this_object$`display_url`
      self$`expanded_url` <- this_object$`expanded_url`
      self$`images` <- ApiClient$new()$deserializeObj(this_object$`images`, "array[UrlImage]", loadNamespace("twitter"))
      self$`media_key` <- this_object$`media_key`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`unwound_url` <- this_object$`unwound_url`
      self$`url` <- this_object$`url`
      self
    },
    #' Validate JSON input with respect to UrlEntity
    #'
    #' @description
    #' Validate JSON input with respect to UrlEntity and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
        stopifnot(is.numeric(input_json$`end`), length(input_json$`end`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlEntity: the required field `end` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
        stopifnot(is.numeric(input_json$`start`), length(input_json$`start`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlEntity: the required field `start` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        stopifnot(is.character(input_json$`url`), length(input_json$`url`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlEntity: the required field `url` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlEntity
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
      # check if the required `end` is null
      if (is.null(self$`end`)) {
        return(FALSE)
      }

      if (self$`end` < 0) {
        return(FALSE)
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        return(FALSE)
      }

      if (self$`start` < 0) {
        return(FALSE)
      }

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
      # check if the required `end` is null
      if (is.null(self$`end`)) {
        invalid_fields["end"] <- "Non-nullable required field `end` cannot be null."
      }

      if (self$`end` < 0) {
        invalid_fields["end"] <- "Invalid value for `end`, must be bigger than or equal to 0."
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        invalid_fields["start"] <- "Non-nullable required field `start` cannot be null."
      }

      if (self$`start` < 0) {
        invalid_fields["start"] <- "Invalid value for `start`, must be bigger than or equal to 0."
      }

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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
UrlEntity$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
UrlEntity$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
UrlEntity$lock()

