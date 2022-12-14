#' Create a new FullTextEntitiesAnnotationsInnerAllOf
#'
#' @description
#' Represents the data for the annotation.
#'
#' @docType class
#' @title FullTextEntitiesAnnotationsInnerAllOf
#' @description FullTextEntitiesAnnotationsInnerAllOf Class
#' @format An \code{R6Class} generator object
#' @field normalized_text Text used to determine annotation. character [optional]
#' @field probability Confidence factor for annotation type. numeric [optional]
#' @field type Annotation type. character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FullTextEntitiesAnnotationsInnerAllOf <- R6::R6Class(
  "FullTextEntitiesAnnotationsInnerAllOf",
  public = list(
    `normalized_text` = NULL,
    `probability` = NULL,
    `type` = NULL,
    `_field_list` = c("normalized_text", "probability", "type"),
    `additional_properties` = list(),
    #' Initialize a new FullTextEntitiesAnnotationsInnerAllOf class.
    #'
    #' @description
    #' Initialize a new FullTextEntitiesAnnotationsInnerAllOf class.
    #'
    #' @param normalized_text Text used to determine annotation.
    #' @param probability Confidence factor for annotation type.
    #' @param type Annotation type.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`normalized_text` = NULL, `probability` = NULL, `type` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`normalized_text`)) {
        if (!(is.character(`normalized_text`) && length(`normalized_text`) == 1)) {
          stop(paste("Error! Invalid data for `normalized_text`. Must be a string:", `normalized_text`))
        }
        self$`normalized_text` <- `normalized_text`
      }
      if (!is.null(`probability`)) {
        if (!(is.numeric(`probability`) && length(`probability`) == 1)) {
          stop(paste("Error! Invalid data for `probability`. Must be a number:", `probability`))
        }
        self$`probability` <- `probability`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return FullTextEntitiesAnnotationsInnerAllOf in JSON format
    #' @export
    toJSON = function() {
      FullTextEntitiesAnnotationsInnerAllOfObject <- list()
      if (!is.null(self$`normalized_text`)) {
        FullTextEntitiesAnnotationsInnerAllOfObject[["normalized_text"]] <-
          self$`normalized_text`
      }
      if (!is.null(self$`probability`)) {
        FullTextEntitiesAnnotationsInnerAllOfObject[["probability"]] <-
          self$`probability`
      }
      if (!is.null(self$`type`)) {
        FullTextEntitiesAnnotationsInnerAllOfObject[["type"]] <-
          self$`type`
      }
      for (key in names(self$additional_properties)) {
        FullTextEntitiesAnnotationsInnerAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      FullTextEntitiesAnnotationsInnerAllOfObject
    },
    #' Deserialize JSON string into an instance of FullTextEntitiesAnnotationsInnerAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of FullTextEntitiesAnnotationsInnerAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of FullTextEntitiesAnnotationsInnerAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`normalized_text`)) {
        self$`normalized_text` <- this_object$`normalized_text`
      }
      if (!is.null(this_object$`probability`)) {
        self$`probability` <- this_object$`probability`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
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
    #' @return FullTextEntitiesAnnotationsInnerAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`normalized_text`)) {
          sprintf(
            '"normalized_text":
            "%s"
                    ',
            self$`normalized_text`
          )
        },
        if (!is.null(self$`probability`)) {
          sprintf(
            '"probability":
            %d
                    ',
            self$`probability`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
            '"type":
            "%s"
                    ',
            self$`type`
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
    #' Deserialize JSON string into an instance of FullTextEntitiesAnnotationsInnerAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of FullTextEntitiesAnnotationsInnerAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of FullTextEntitiesAnnotationsInnerAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`normalized_text` <- this_object$`normalized_text`
      self$`probability` <- this_object$`probability`
      self$`type` <- this_object$`type`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to FullTextEntitiesAnnotationsInnerAllOf
    #'
    #' @description
    #' Validate JSON input with respect to FullTextEntitiesAnnotationsInnerAllOf and throw an exception if invalid
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
    #' @return String representation of FullTextEntitiesAnnotationsInnerAllOf
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
      if (self$`probability` > 1) {
        return(FALSE)
      }
      if (self$`probability` < 0) {
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
      if (self$`probability` > 1) {
        invalid_fields["probability"] <- "Invalid value for `probability`, must be smaller than or equal to 1."
      }
      if (self$`probability` < 0) {
        invalid_fields["probability"] <- "Invalid value for `probability`, must be bigger than or equal to 0."
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
# FullTextEntitiesAnnotationsInnerAllOf$unlock()
#
## Below is an example to define the print fnuction
# FullTextEntitiesAnnotationsInnerAllOf$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FullTextEntitiesAnnotationsInnerAllOf$lock()
