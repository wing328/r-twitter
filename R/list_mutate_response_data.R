#' Create a new ListMutateResponseData
#'
#' @description
#' ListMutateResponseData Class
#'
#' @docType class
#' @title ListMutateResponseData
#' @description ListMutateResponseData Class
#' @format An \code{R6Class} generator object
#' @field is_member  character [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListMutateResponseData <- R6::R6Class(
  "ListMutateResponseData",
  public = list(
    `is_member` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new ListMutateResponseData class.
    #'
    #' @description
    #' Initialize a new ListMutateResponseData class.
    #'
    #' @param is_member is_member
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `is_member` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`is_member`)) {
        stopifnot(is.logical(`is_member`), length(`is_member`) == 1)
        self$`is_member` <- `is_member`
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
    #' @return ListMutateResponseData in JSON format
    #' @export
    toJSON = function() {
      ListMutateResponseDataObject <- list()
      if (!is.null(self$`is_member`)) {
        ListMutateResponseDataObject[["is_member"]] <-
          self$`is_member`
      }
      for (key in names(self$additional_properties)) {
        ListMutateResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      ListMutateResponseDataObject
    },
    #' Deserialize JSON string into an instance of ListMutateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListMutateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListMutateResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`is_member`)) {
        self$`is_member` <- this_object$`is_member`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ListMutateResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`is_member`)) {
          sprintf(
          '"is_member":
            %s
                    ',
          tolower(self$`is_member`)
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
    #' Deserialize JSON string into an instance of ListMutateResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListMutateResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListMutateResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`is_member` <- this_object$`is_member`
      self
    },
    #' Validate JSON input with respect to ListMutateResponseData
    #'
    #' @description
    #' Validate JSON input with respect to ListMutateResponseData and throw an exception if invalid
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
    #' @return String representation of ListMutateResponseData
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
ListMutateResponseData$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
ListMutateResponseData$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
ListMutateResponseData$lock()

