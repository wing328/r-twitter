#' Create a new ListPinnedResponseData
#'
#' @description
#' ListPinnedResponseData Class
#'
#' @docType class
#' @title ListPinnedResponseData
#' @description ListPinnedResponseData Class
#' @format An \code{R6Class} generator object
#' @field pinned  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListPinnedResponseData <- R6::R6Class(
  "ListPinnedResponseData",
  public = list(
    `pinned` = NULL,
    `_field_list` = c("pinned"),
    `additional_properties` = list(),
    #' Initialize a new ListPinnedResponseData class.
    #'
    #' @description
    #' Initialize a new ListPinnedResponseData class.
    #'
    #' @param pinned pinned
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `pinned` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`pinned`)) {
        stopifnot(is.logical(`pinned`), length(`pinned`) == 1)
        self$`pinned` <- `pinned`
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
    #' @return ListPinnedResponseData in JSON format
    #' @export
    toJSON = function() {
      ListPinnedResponseDataObject <- list()
      if (!is.null(self$`pinned`)) {
        ListPinnedResponseDataObject[["pinned"]] <-
          self$`pinned`
      }
      for (key in names(self$additional_properties)) {
        ListPinnedResponseDataObject[[key]] <- self$additional_properties[[key]]
      }

      ListPinnedResponseDataObject
    },
    #' Deserialize JSON string into an instance of ListPinnedResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListPinnedResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListPinnedResponseData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pinned`)) {
        self$`pinned` <- this_object$`pinned`
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
    #' @return ListPinnedResponseData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`pinned`)) {
          sprintf(
          '"pinned":
            %s
                    ',
          tolower(self$`pinned`)
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
    #' Deserialize JSON string into an instance of ListPinnedResponseData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListPinnedResponseData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListPinnedResponseData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pinned` <- this_object$`pinned`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ListPinnedResponseData
    #'
    #' @description
    #' Validate JSON input with respect to ListPinnedResponseData and throw an exception if invalid
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
    #' @return String representation of ListPinnedResponseData
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
#ListPinnedResponseData$unlock()
#
## Below is an example to define the print fnuction
#ListPinnedResponseData$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ListPinnedResponseData$lock()

