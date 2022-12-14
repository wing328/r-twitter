#' Create a new TweetDeleteResponseData
#'
#' @description
#' TweetDeleteResponseData Class
#'
#' @docType class
#' @title TweetDeleteResponseData
#' @description TweetDeleteResponseData Class
#' @format An \code{R6Class} generator object
#' @field deleted  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetDeleteResponseData <- R6::R6Class(
  "TweetDeleteResponseData",
  public = list(
    `deleted` = NULL,
    `_field_list` = c("deleted"),
    `additional_properties` = list(),
    #' Initialize a new TweetDeleteResponseData class.
    #'
    #' @description
    #' Initialize a new TweetDeleteResponseData class.
    #'
    #' @param deleted deleted
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`deleted`, additional_properties = NULL, ...) {
      if (!missing(`deleted`)) {
        if (!(is.logical(`deleted`) && length(`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a boolean:", `deleted`))
        }
        self$`deleted` <- `deleted`
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
    #' @return TweetDeleteResponseData in JSON format
    #' @export
    toJSON = function() {
      TweetDeleteResponseDataObject <- list()
      if (!is.null(self$`deleted`)) {
        TweetDeleteResponseDataObject[["deleted"]] <-
          self$`deleted`
      }
      for (key in names(self$additional_properties)) {
        TweetDeleteResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      TweetDeleteResponseDataObject
    },
    #' Deserialize JSON string into an instance of TweetDeleteResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetDeleteResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetDeleteResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`deleted`)) {
        self$`deleted` <- this_object$`deleted`
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
    #' @return TweetDeleteResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`deleted`)) {
          sprintf(
            '"deleted":
            %s
                    ',
            tolower(self$`deleted`)
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
    #' Deserialize JSON string into an instance of TweetDeleteResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetDeleteResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetDeleteResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`deleted` <- this_object$`deleted`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetDeleteResponseData
    #'
    #' @description
    #' Validate JSON input with respect to TweetDeleteResponseData and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `deleted`
      if (!is.null(input_json$`deleted`)) {
        if (!(is.logical(input_json$`deleted`) && length(input_json$`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a boolean:", input_json$`deleted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetDeleteResponseData: the required field `deleted` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetDeleteResponseData
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
      # check if the required `deleted` is null
      if (is.null(self$`deleted`)) {
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
      # check if the required `deleted` is null
      if (is.null(self$`deleted`)) {
        invalid_fields["deleted"] <- "Non-nullable required field `deleted` cannot be null."
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
# TweetDeleteResponseData$unlock()
#
## Below is an example to define the print fnuction
# TweetDeleteResponseData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetDeleteResponseData$lock()
