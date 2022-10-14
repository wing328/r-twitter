#' Create a new BookmarkAddRequest
#'
#' @description
#' BookmarkAddRequest Class
#'
#' @docType class
#' @title BookmarkAddRequest
#' @description BookmarkAddRequest Class
#' @format An \code{R6Class} generator object
#' @field tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BookmarkAddRequest <- R6::R6Class(
  "BookmarkAddRequest",
  public = list(
    `tweet_id` = NULL,
    `_field_list` = c("tweet_id"),
    `additional_properties` = list(),
    #' Initialize a new BookmarkAddRequest class.
    #'
    #' @description
    #' Initialize a new BookmarkAddRequest class.
    #'
    #' @param tweet_id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`tweet_id`, additional_properties = NULL, ...) {
      if (!missing(`tweet_id`)) {
        stopifnot(is.character(`tweet_id`), length(`tweet_id`) == 1)
        self$`tweet_id` <- `tweet_id`
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
    #' @return BookmarkAddRequest in JSON format
    #' @export
    toJSON = function() {
      BookmarkAddRequestObject <- list()
      if (!is.null(self$`tweet_id`)) {
        BookmarkAddRequestObject[["tweet_id"]] <-
          self$`tweet_id`
      }
      for (key in names(self$additional_properties)) {
        BookmarkAddRequestObject[[key]] <- self$additional_properties[[key]]
      }

      BookmarkAddRequestObject
    },
    #' Deserialize JSON string into an instance of BookmarkAddRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of BookmarkAddRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BookmarkAddRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tweet_id`)) {
        self$`tweet_id` <- this_object$`tweet_id`
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
    #' @return BookmarkAddRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`tweet_id`)) {
          sprintf(
            '"tweet_id":
            "%s"
                    ',
            self$`tweet_id`
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
    #' Deserialize JSON string into an instance of BookmarkAddRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of BookmarkAddRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BookmarkAddRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tweet_id` <- this_object$`tweet_id`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to BookmarkAddRequest
    #'
    #' @description
    #' Validate JSON input with respect to BookmarkAddRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `tweet_id`
      if (!is.null(input_json$`tweet_id`)) {
        stopifnot(is.character(input_json$`tweet_id`), length(input_json$`tweet_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BookmarkAddRequest: the required field `tweet_id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BookmarkAddRequest
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
      # check if the required `tweet_id` is null
      if (is.null(self$`tweet_id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`tweet_id`, "^[0-9]{1,19}$")) {
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
      # check if the required `tweet_id` is null
      if (is.null(self$`tweet_id`)) {
        invalid_fields["tweet_id"] <- "Non-nullable required field `tweet_id` cannot be null."
      }

      if (!str_detect(self$`tweet_id`, "^[0-9]{1,19}$")) {
        invalid_fields["tweet_id"] <- "Invalid value for `tweet_id`, must conform to the pattern ^[0-9]{1,19}$."
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
# BookmarkAddRequest$unlock()
#
## Below is an example to define the print fnuction
# BookmarkAddRequest$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BookmarkAddRequest$lock()
