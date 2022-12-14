#' Create a new FullTextEntitiesAnnotationsInner
#'
#' @description
#' Annotation for entities based on the Tweet text.
#'
#' @docType class
#' @title FullTextEntitiesAnnotationsInner
#' @description FullTextEntitiesAnnotationsInner Class
#' @format An \code{R6Class} generator object
#' @field end Index (zero-based) at which position this entity ends.  The index is inclusive. integer
#' @field start Index (zero-based) at which position this entity starts.  The index is inclusive. integer
#' @field normalized_text Text used to determine annotation. character [optional]
#' @field probability Confidence factor for annotation type. numeric [optional]
#' @field type Annotation type. character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FullTextEntitiesAnnotationsInner <- R6::R6Class(
  "FullTextEntitiesAnnotationsInner",
  public = list(
    `end` = NULL,
    `start` = NULL,
    `normalized_text` = NULL,
    `probability` = NULL,
    `type` = NULL,
    `_field_list` = c("end", "start", "normalized_text", "probability", "type"),
    `additional_properties` = list(),
    #' Initialize a new FullTextEntitiesAnnotationsInner class.
    #'
    #' @description
    #' Initialize a new FullTextEntitiesAnnotationsInner class.
    #'
    #' @param end Index (zero-based) at which position this entity ends.  The index is inclusive.
    #' @param start Index (zero-based) at which position this entity starts.  The index is inclusive.
    #' @param normalized_text Text used to determine annotation.
    #' @param probability Confidence factor for annotation type.
    #' @param type Annotation type.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`end`, `start`, `normalized_text` = NULL, `probability` = NULL, `type` = NULL, additional_properties = NULL, ...) {
      if (!missing(`end`)) {
        if (!(is.numeric(`end`) && length(`end`) == 1)) {
          stop(paste("Error! Invalid data for `end`. Must be an integer:", `end`))
        }
        self$`end` <- `end`
      }
      if (!missing(`start`)) {
        if (!(is.numeric(`start`) && length(`start`) == 1)) {
          stop(paste("Error! Invalid data for `start`. Must be an integer:", `start`))
        }
        self$`start` <- `start`
      }
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
    #' @return FullTextEntitiesAnnotationsInner in JSON format
    #' @export
    toJSON = function() {
      FullTextEntitiesAnnotationsInnerObject <- list()
      if (!is.null(self$`end`)) {
        FullTextEntitiesAnnotationsInnerObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`start`)) {
        FullTextEntitiesAnnotationsInnerObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`normalized_text`)) {
        FullTextEntitiesAnnotationsInnerObject[["normalized_text"]] <-
          self$`normalized_text`
      }
      if (!is.null(self$`probability`)) {
        FullTextEntitiesAnnotationsInnerObject[["probability"]] <-
          self$`probability`
      }
      if (!is.null(self$`type`)) {
        FullTextEntitiesAnnotationsInnerObject[["type"]] <-
          self$`type`
      }
      for (key in names(self$additional_properties)) {
        FullTextEntitiesAnnotationsInnerObject[[key]] <- self$additional_properties[[key]]
      }

      FullTextEntitiesAnnotationsInnerObject
    },
    #' Deserialize JSON string into an instance of FullTextEntitiesAnnotationsInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of FullTextEntitiesAnnotationsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of FullTextEntitiesAnnotationsInner
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
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
    #' @return FullTextEntitiesAnnotationsInner in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`end`)) {
          sprintf(
            '"end":
            %d
                    ',
            self$`end`
          )
        },
        if (!is.null(self$`start`)) {
          sprintf(
            '"start":
            %d
                    ',
            self$`start`
          )
        },
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
    #' Deserialize JSON string into an instance of FullTextEntitiesAnnotationsInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of FullTextEntitiesAnnotationsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of FullTextEntitiesAnnotationsInner
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`end` <- this_object$`end`
      self$`start` <- this_object$`start`
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
    #' Validate JSON input with respect to FullTextEntitiesAnnotationsInner
    #'
    #' @description
    #' Validate JSON input with respect to FullTextEntitiesAnnotationsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
        if (!(is.numeric(input_json$`end`) && length(input_json$`end`) == 1)) {
          stop(paste("Error! Invalid data for `end`. Must be an integer:", input_json$`end`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FullTextEntitiesAnnotationsInner: the required field `end` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
        if (!(is.numeric(input_json$`start`) && length(input_json$`start`) == 1)) {
          stop(paste("Error! Invalid data for `start`. Must be an integer:", input_json$`start`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FullTextEntitiesAnnotationsInner: the required field `start` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FullTextEntitiesAnnotationsInner
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
      # check if the required `end` is null
      if (is.null(self$`end`)) {
        return(FALSE)
      }

      if (self$`end` < 0) {
        return(FALSE)
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        return(FALSE)
      }

      if (self$`start` < 0) {
        return(FALSE)
      }

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
      # check if the required `end` is null
      if (is.null(self$`end`)) {
        invalid_fields["end"] <- "Non-nullable required field `end` cannot be null."
      }

      if (self$`end` < 0) {
        invalid_fields["end"] <- "Invalid value for `end`, must be bigger than or equal to 0."
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        invalid_fields["start"] <- "Non-nullable required field `start` cannot be null."
      }

      if (self$`start` < 0) {
        invalid_fields["start"] <- "Invalid value for `start`, must be bigger than or equal to 0."
      }

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
# FullTextEntitiesAnnotationsInner$unlock()
#
## Below is an example to define the print fnuction
# FullTextEntitiesAnnotationsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FullTextEntitiesAnnotationsInner$lock()
