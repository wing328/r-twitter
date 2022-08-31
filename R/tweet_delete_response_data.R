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
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetDeleteResponseData <- R6::R6Class(
  "TweetDeleteResponseData",
  public = list(
    `deleted` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new TweetDeleteResponseData class.
    #'
    #' @description
    #' Initialize a new TweetDeleteResponseData class.
    #'
    #' @param deleted deleted
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `deleted`, additional_properties = NULL, ...
    ) {
      if (!missing(`deleted`)) {
        stopifnot(is.logical(`deleted`), length(`deleted`) == 1)
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
        stopifnot(is.logical(input_json$`deleted`), length(input_json$`deleted`) == 1)
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetDeleteResponseData$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetDeleteResponseData$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetDeleteResponseData$lock()

