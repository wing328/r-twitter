#' Create a new EntityIndicesInclusiveInclusive
#'
#' @description
#' Represent a boundary range (start and end index) for a recognized entity (for example a hashtag or a mention). `start` must be smaller than `end`.  The start index is inclusive, the end index is inclusive.
#'
#' @docType class
#' @title EntityIndicesInclusiveInclusive
#' @description EntityIndicesInclusiveInclusive Class
#' @format An \code{R6Class} generator object
#' @field end Index (zero-based) at which position this entity ends.  The index is inclusive. integer
#' @field start Index (zero-based) at which position this entity starts.  The index is inclusive. integer
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EntityIndicesInclusiveInclusive <- R6::R6Class(
  "EntityIndicesInclusiveInclusive",
  public = list(
    `end` = NULL,
    `start` = NULL,
    `_field_list` = c("end", "start"),
    `additional_properties` = list(),
    #' Initialize a new EntityIndicesInclusiveInclusive class.
    #'
    #' @description
    #' Initialize a new EntityIndicesInclusiveInclusive class.
    #'
    #' @param end Index (zero-based) at which position this entity ends.  The index is inclusive.
    #' @param start Index (zero-based) at which position this entity starts.  The index is inclusive.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`end`, `start`, additional_properties = NULL, ...) {
      if (!missing(`end`)) {
        stopifnot(is.numeric(`end`), length(`end`) == 1)
        self$`end` <- `end`
      }
      if (!missing(`start`)) {
        stopifnot(is.numeric(`start`), length(`start`) == 1)
        self$`start` <- `start`
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
    #' @return EntityIndicesInclusiveInclusive in JSON format
    #' @export
    toJSON = function() {
      EntityIndicesInclusiveInclusiveObject <- list()
      if (!is.null(self$`end`)) {
        EntityIndicesInclusiveInclusiveObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`start`)) {
        EntityIndicesInclusiveInclusiveObject[["start"]] <-
          self$`start`
      }
      for (key in names(self$additional_properties)) {
        EntityIndicesInclusiveInclusiveObject[[key]] <- self$additional_properties[[key]]
      }

      EntityIndicesInclusiveInclusiveObject
    },
    #' Deserialize JSON string into an instance of EntityIndicesInclusiveInclusive
    #'
    #' @description
    #' Deserialize JSON string into an instance of EntityIndicesInclusiveInclusive
    #'
    #' @param input_json the JSON input
    #' @return the instance of EntityIndicesInclusiveInclusive
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
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
    #' @return EntityIndicesInclusiveInclusive in JSON format
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
    #' Deserialize JSON string into an instance of EntityIndicesInclusiveInclusive
    #'
    #' @description
    #' Deserialize JSON string into an instance of EntityIndicesInclusiveInclusive
    #'
    #' @param input_json the JSON input
    #' @return the instance of EntityIndicesInclusiveInclusive
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`end` <- this_object$`end`
      self$`start` <- this_object$`start`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to EntityIndicesInclusiveInclusive
    #'
    #' @description
    #' Validate JSON input with respect to EntityIndicesInclusiveInclusive and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
        stopifnot(is.numeric(input_json$`end`), length(input_json$`end`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EntityIndicesInclusiveInclusive: the required field `end` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
        stopifnot(is.numeric(input_json$`start`), length(input_json$`start`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EntityIndicesInclusiveInclusive: the required field `start` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EntityIndicesInclusiveInclusive
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
# EntityIndicesInclusiveInclusive$unlock()
#
## Below is an example to define the print fnuction
# EntityIndicesInclusiveInclusive$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EntityIndicesInclusiveInclusive$lock()
