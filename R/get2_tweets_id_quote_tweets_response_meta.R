#' Create a new Get2TweetsIdQuoteTweetsResponseMeta
#'
#' @description
#' Get2TweetsIdQuoteTweetsResponseMeta Class
#'
#' @docType class
#' @title Get2TweetsIdQuoteTweetsResponseMeta
#' @description Get2TweetsIdQuoteTweetsResponseMeta Class
#' @format An \code{R6Class} generator object
#' @field next_token The next token. character [optional]
#' @field result_count The number of results returned in this response. integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Get2TweetsIdQuoteTweetsResponseMeta <- R6::R6Class(
  "Get2TweetsIdQuoteTweetsResponseMeta",
  public = list(
    `next_token` = NULL,
    `result_count` = NULL,
    `_field_list` = c("next_token", "result_count"),
    `additional_properties` = list(),
    #' Initialize a new Get2TweetsIdQuoteTweetsResponseMeta class.
    #'
    #' @description
    #' Initialize a new Get2TweetsIdQuoteTweetsResponseMeta class.
    #'
    #' @param next_token The next token.
    #' @param result_count The number of results returned in this response.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`next_token` = NULL, `result_count` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`next_token`)) {
        if (!(is.character(`next_token`) && length(`next_token`) == 1)) {
          stop(paste("Error! Invalid data for `next_token`. Must be a string:", `next_token`))
        }
        self$`next_token` <- `next_token`
      }
      if (!is.null(`result_count`)) {
        if (!(is.numeric(`result_count`) && length(`result_count`) == 1)) {
          stop(paste("Error! Invalid data for `result_count`. Must be an integer:", `result_count`))
        }
        self$`result_count` <- `result_count`
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
    #' @return Get2TweetsIdQuoteTweetsResponseMeta in JSON format
    #' @export
    toJSON = function() {
      Get2TweetsIdQuoteTweetsResponseMetaObject <- list()
      if (!is.null(self$`next_token`)) {
        Get2TweetsIdQuoteTweetsResponseMetaObject[["next_token"]] <-
          self$`next_token`
      }
      if (!is.null(self$`result_count`)) {
        Get2TweetsIdQuoteTweetsResponseMetaObject[["result_count"]] <-
          self$`result_count`
      }
      for (key in names(self$additional_properties)) {
        Get2TweetsIdQuoteTweetsResponseMetaObject[[key]] <- self$additional_properties[[key]]
      }

      Get2TweetsIdQuoteTweetsResponseMetaObject
    },
    #' Deserialize JSON string into an instance of Get2TweetsIdQuoteTweetsResponseMeta
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2TweetsIdQuoteTweetsResponseMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2TweetsIdQuoteTweetsResponseMeta
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`next_token`)) {
        self$`next_token` <- this_object$`next_token`
      }
      if (!is.null(this_object$`result_count`)) {
        self$`result_count` <- this_object$`result_count`
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
    #' @return Get2TweetsIdQuoteTweetsResponseMeta in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`next_token`)) {
          sprintf(
            '"next_token":
            "%s"
                    ',
            self$`next_token`
          )
        },
        if (!is.null(self$`result_count`)) {
          sprintf(
            '"result_count":
            %d
                    ',
            self$`result_count`
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
    #' Deserialize JSON string into an instance of Get2TweetsIdQuoteTweetsResponseMeta
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2TweetsIdQuoteTweetsResponseMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2TweetsIdQuoteTweetsResponseMeta
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`next_token` <- this_object$`next_token`
      self$`result_count` <- this_object$`result_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Get2TweetsIdQuoteTweetsResponseMeta
    #'
    #' @description
    #' Validate JSON input with respect to Get2TweetsIdQuoteTweetsResponseMeta and throw an exception if invalid
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
    #' @return String representation of Get2TweetsIdQuoteTweetsResponseMeta
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
      if (nchar(self$`next_token`) < 1) {
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
      if (nchar(self$`next_token`) < 1) {
        invalid_fields["next_token"] <- "Invalid length for `next_token`, must be bigger than or equal to 1."
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
# Get2TweetsIdQuoteTweetsResponseMeta$unlock()
#
## Below is an example to define the print fnuction
# Get2TweetsIdQuoteTweetsResponseMeta$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Get2TweetsIdQuoteTweetsResponseMeta$lock()
