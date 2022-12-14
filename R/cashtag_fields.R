#' Create a new CashtagFields
#'
#' @description
#' Represent the portion of text recognized as a Cashtag, and its start and end position within the text.
#'
#' @docType class
#' @title CashtagFields
#' @description CashtagFields Class
#' @format An \code{R6Class} generator object
#' @field tag  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CashtagFields <- R6::R6Class(
  "CashtagFields",
  public = list(
    `tag` = NULL,
    `_field_list` = c("tag"),
    `additional_properties` = list(),
    #' Initialize a new CashtagFields class.
    #'
    #' @description
    #' Initialize a new CashtagFields class.
    #'
    #' @param tag tag
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`tag`, additional_properties = NULL, ...) {
      if (!missing(`tag`)) {
        if (!(is.character(`tag`) && length(`tag`) == 1)) {
          stop(paste("Error! Invalid data for `tag`. Must be a string:", `tag`))
        }
        self$`tag` <- `tag`
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
    #' @return CashtagFields in JSON format
    #' @export
    toJSON = function() {
      CashtagFieldsObject <- list()
      if (!is.null(self$`tag`)) {
        CashtagFieldsObject[["tag"]] <-
          self$`tag`
      }
      for (key in names(self$additional_properties)) {
        CashtagFieldsObject[[key]] <- self$additional_properties[[key]]
      }

      CashtagFieldsObject
    },
    #' Deserialize JSON string into an instance of CashtagFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of CashtagFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of CashtagFields
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tag`)) {
        self$`tag` <- this_object$`tag`
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
    #' @return CashtagFields in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`tag`)) {
          sprintf(
            '"tag":
            "%s"
                    ',
            self$`tag`
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
    #' Deserialize JSON string into an instance of CashtagFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of CashtagFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of CashtagFields
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tag` <- this_object$`tag`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CashtagFields
    #'
    #' @description
    #' Validate JSON input with respect to CashtagFields and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `tag`
      if (!is.null(input_json$`tag`)) {
        if (!(is.character(input_json$`tag`) && length(input_json$`tag`) == 1)) {
          stop(paste("Error! Invalid data for `tag`. Must be a string:", input_json$`tag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashtagFields: the required field `tag` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CashtagFields
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
      # check if the required `tag` is null
      if (is.null(self$`tag`)) {
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
      # check if the required `tag` is null
      if (is.null(self$`tag`)) {
        invalid_fields["tag"] <- "Non-nullable required field `tag` cannot be null."
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
# CashtagFields$unlock()
#
## Below is an example to define the print fnuction
# CashtagFields$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CashtagFields$lock()
