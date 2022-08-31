#' Create a new ListUpdateResponseData
#'
#' @description
#' ListUpdateResponseData Class
#'
#' @docType class
#' @title ListUpdateResponseData
#' @description ListUpdateResponseData Class
#' @format An \code{R6Class} generator object
#' @field updated  character [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListUpdateResponseData <- R6::R6Class(
  "ListUpdateResponseData",
  public = list(
    `updated` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new ListUpdateResponseData class.
    #'
    #' @description
    #' Initialize a new ListUpdateResponseData class.
    #'
    #' @param updated updated
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `updated` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`updated`)) {
        stopifnot(is.logical(`updated`), length(`updated`) == 1)
        self$`updated` <- `updated`
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
    #' @return ListUpdateResponseData in JSON format
    #' @export
    toJSON = function() {
      ListUpdateResponseDataObject <- list()
      if (!is.null(self$`updated`)) {
        ListUpdateResponseDataObject[["updated"]] <-
          self$`updated`
      }
      for (key in names(self$additional_properties)) {
        ListUpdateResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      ListUpdateResponseDataObject
    },
    #' Deserialize JSON string into an instance of ListUpdateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListUpdateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListUpdateResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ListUpdateResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`updated`)) {
          sprintf(
          '"updated":
            %s
                    ',
          tolower(self$`updated`)
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
    #' Deserialize JSON string into an instance of ListUpdateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListUpdateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListUpdateResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`updated` <- this_object$`updated`
      self
    },
    #' Validate JSON input with respect to ListUpdateResponseData
    #'
    #' @description
    #' Validate JSON input with respect to ListUpdateResponseData and throw an exception if invalid
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
    #' @return String representation of ListUpdateResponseData
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
      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
ListUpdateResponseData$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
ListUpdateResponseData$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
ListUpdateResponseData$lock()

