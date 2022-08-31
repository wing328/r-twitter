#' Create a new EntityIndicesInclusiveExclusive
#'
#' @description
#' Represent a boundary range (start and end index) for a recognized entity (for example a hashtag or a mention). `start` must be smaller than `end`.  The start index is inclusive, the end index is exclusive.
#'
#' @docType class
#' @title EntityIndicesInclusiveExclusive
#' @description EntityIndicesInclusiveExclusive Class
#' @format An \code{R6Class} generator object
#' @field end  integer
#' @field start  integer
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EntityIndicesInclusiveExclusive <- R6::R6Class(
  "EntityIndicesInclusiveExclusive",
  public = list(
    `end` = NULL,
    `start` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new EntityIndicesInclusiveExclusive class.
    #'
    #' @description
    #' Initialize a new EntityIndicesInclusiveExclusive class.
    #'
    #' @param end Index (zero-based) at which position this entity ends.  The index is exclusive.
    #' @param start Index (zero-based) at which position this entity starts.  The index is inclusive.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `end`, `start`, additional_properties = NULL, ...
    ) {
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
    #' @return EntityIndicesInclusiveExclusive in JSON format
    #' @export
    toJSON = function() {
      EntityIndicesInclusiveExclusiveObject <- list()
      if (!is.null(self$`end`)) {
        EntityIndicesInclusiveExclusiveObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`start`)) {
        EntityIndicesInclusiveExclusiveObject[["start"]] <-
          self$`start`
      }
      for (key in names(self$additional_properties)) {
        EntityIndicesInclusiveExclusiveObject[[key]] <- self$additional_properties[[key]]
      }

      EntityIndicesInclusiveExclusiveObject
    },
    #' Deserialize JSON string into an instance of EntityIndicesInclusiveExclusive
    #'
    #' @description
    #' Deserialize JSON string into an instance of EntityIndicesInclusiveExclusive
    #'
    #' @param input_json the JSON input
    #' @return the instance of EntityIndicesInclusiveExclusive
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return EntityIndicesInclusiveExclusive in JSON format
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
    #' Deserialize JSON string into an instance of EntityIndicesInclusiveExclusive
    #'
    #' @description
    #' Deserialize JSON string into an instance of EntityIndicesInclusiveExclusive
    #'
    #' @param input_json the JSON input
    #' @return the instance of EntityIndicesInclusiveExclusive
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`end` <- this_object$`end`
      self$`start` <- this_object$`start`
      self
    },
    #' Validate JSON input with respect to EntityIndicesInclusiveExclusive
    #'
    #' @description
    #' Validate JSON input with respect to EntityIndicesInclusiveExclusive and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
        stopifnot(is.numeric(input_json$`end`), length(input_json$`end`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EntityIndicesInclusiveExclusive: the required field `end` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
        stopifnot(is.numeric(input_json$`start`), length(input_json$`start`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EntityIndicesInclusiveExclusive: the required field `start` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EntityIndicesInclusiveExclusive
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
EntityIndicesInclusiveExclusive$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
EntityIndicesInclusiveExclusive$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
EntityIndicesInclusiveExclusive$lock()

