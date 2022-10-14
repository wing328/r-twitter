#' Create a new CashtagEntity
#'
#' @description
#' CashtagEntity Class
#'
#' @docType class
#' @title CashtagEntity
#' @description CashtagEntity Class
#' @format An \code{R6Class} generator object
#' @field end Index (zero-based) at which position this entity ends.  The index is exclusive. integer
#' @field start Index (zero-based) at which position this entity starts.  The index is inclusive. integer
#' @field tag  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CashtagEntity <- R6::R6Class(
  "CashtagEntity",
  public = list(
    `end` = NULL,
    `start` = NULL,
    `tag` = NULL,
    `_field_list` = c("end", "start", "tag"),
    `additional_properties` = list(),
    #' Initialize a new CashtagEntity class.
    #'
    #' @description
    #' Initialize a new CashtagEntity class.
    #'
    #' @param end Index (zero-based) at which position this entity ends.  The index is exclusive.
    #' @param start Index (zero-based) at which position this entity starts.  The index is inclusive.
    #' @param tag tag
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`end`, `start`, `tag`, additional_properties = NULL, ...) {
      if (!missing(`end`)) {
        stopifnot(is.numeric(`end`), length(`end`) == 1)
        self$`end` <- `end`
      }
      if (!missing(`start`)) {
        stopifnot(is.numeric(`start`), length(`start`) == 1)
        self$`start` <- `start`
      }
      if (!missing(`tag`)) {
        stopifnot(is.character(`tag`), length(`tag`) == 1)
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
    #' @return CashtagEntity in JSON format
    #' @export
    toJSON = function() {
      CashtagEntityObject <- list()
      if (!is.null(self$`end`)) {
        CashtagEntityObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`start`)) {
        CashtagEntityObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`tag`)) {
        CashtagEntityObject[["tag"]] <-
          self$`tag`
      }
      for (key in names(self$additional_properties)) {
        CashtagEntityObject[[key]] <- self$additional_properties[[key]]
      }

      CashtagEntityObject
    },
    #' Deserialize JSON string into an instance of CashtagEntity
    #'
    #' @description
    #' Deserialize JSON string into an instance of CashtagEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of CashtagEntity
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`tag`)) {
        self$`tag` <- this_object$`tag`
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
    #' @return CashtagEntity in JSON format
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
    #' Deserialize JSON string into an instance of CashtagEntity
    #'
    #' @description
    #' Deserialize JSON string into an instance of CashtagEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of CashtagEntity
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`end` <- this_object$`end`
      self$`start` <- this_object$`start`
      self$`tag` <- this_object$`tag`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CashtagEntity
    #'
    #' @description
    #' Validate JSON input with respect to CashtagEntity and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
        stopifnot(is.numeric(input_json$`end`), length(input_json$`end`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashtagEntity: the required field `end` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
        stopifnot(is.numeric(input_json$`start`), length(input_json$`start`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashtagEntity: the required field `start` is missing."))
      }
      # check the required field `tag`
      if (!is.null(input_json$`tag`)) {
        stopifnot(is.character(input_json$`tag`), length(input_json$`tag`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CashtagEntity: the required field `tag` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CashtagEntity
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
# CashtagEntity$unlock()
#
## Below is an example to define the print fnuction
# CashtagEntity$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CashtagEntity$lock()
