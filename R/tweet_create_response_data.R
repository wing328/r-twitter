#' Create a new TweetCreateResponseData
#'
#' @description
#' TweetCreateResponseData Class
#'
#' @docType class
#' @title TweetCreateResponseData
#' @description TweetCreateResponseData Class
#' @format An \code{R6Class} generator object
#' @field id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character
#' @field text The content of the Tweet. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetCreateResponseData <- R6::R6Class(
  "TweetCreateResponseData",
  public = list(
    `id` = NULL,
    `text` = NULL,
    `_field_list` = c("id", "text"),
    `additional_properties` = list(),
    #' Initialize a new TweetCreateResponseData class.
    #'
    #' @description
    #' Initialize a new TweetCreateResponseData class.
    #'
    #' @param id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param text The content of the Tweet.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `text`, additional_properties = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
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
    #' @return TweetCreateResponseData in JSON format
    #' @export
    toJSON = function() {
      TweetCreateResponseDataObject <- list()
      if (!is.null(self$`id`)) {
        TweetCreateResponseDataObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`text`)) {
        TweetCreateResponseDataObject[["text"]] <-
          self$`text`
      }
      for (key in names(self$additional_properties)) {
        TweetCreateResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      TweetCreateResponseDataObject
    },
    #' Deserialize JSON string into an instance of TweetCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
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
    #' @return TweetCreateResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
            '"id":
            "%s"
                    ',
            self$`id`
          )
        },
        if (!is.null(self$`text`)) {
          sprintf(
            '"text":
            "%s"
                    ',
            self$`text`
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
    #' Deserialize JSON string into an instance of TweetCreateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetCreateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetCreateResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`text` <- this_object$`text`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetCreateResponseData
    #'
    #' @description
    #' Validate JSON input with respect to TweetCreateResponseData and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetCreateResponseData: the required field `id` is missing."))
      }
      # check the required field `text`
      if (!is.null(input_json$`text`)) {
        if (!(is.character(input_json$`text`) && length(input_json$`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", input_json$`text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetCreateResponseData: the required field `text` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetCreateResponseData
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `text` is null
      if (is.null(self$`text`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `text` is null
      if (is.null(self$`text`)) {
        invalid_fields["text"] <- "Non-nullable required field `text` cannot be null."
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
# TweetCreateResponseData$unlock()
#
## Below is an example to define the print fnuction
# TweetCreateResponseData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetCreateResponseData$lock()
