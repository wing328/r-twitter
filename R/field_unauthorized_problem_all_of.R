#' Create a new FieldUnauthorizedProblemAllOf
#'
#' @description
#' FieldUnauthorizedProblemAllOf Class
#'
#' @docType class
#' @title FieldUnauthorizedProblemAllOf
#' @description FieldUnauthorizedProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field field  character
#' @field resource_type  character
#' @field section  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FieldUnauthorizedProblemAllOf <- R6::R6Class(
  "FieldUnauthorizedProblemAllOf",
  public = list(
    `field` = NULL,
    `resource_type` = NULL,
    `section` = NULL,
    `_field_list` = c("field", "resource_type", "section"),
    `additional_properties` = list(),
    #' Initialize a new FieldUnauthorizedProblemAllOf class.
    #'
    #' @description
    #' Initialize a new FieldUnauthorizedProblemAllOf class.
    #'
    #' @param field field
    #' @param resource_type resource_type
    #' @param section section
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`field`, `resource_type`, `section`, additional_properties = NULL, ...) {
      if (!missing(`field`)) {
        stopifnot(is.character(`field`), length(`field`) == 1)
        self$`field` <- `field`
      }
      if (!missing(`resource_type`)) {
        if (!(`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
          stop(paste("Error! \"", `resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
        }
        stopifnot(is.character(`resource_type`), length(`resource_type`) == 1)
        self$`resource_type` <- `resource_type`
      }
      if (!missing(`section`)) {
        if (!(`section` %in% c("data", "includes"))) {
          stop(paste("Error! \"", `section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
        }
        stopifnot(is.character(`section`), length(`section`) == 1)
        self$`section` <- `section`
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
    #' @return FieldUnauthorizedProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      FieldUnauthorizedProblemAllOfObject <- list()
      if (!is.null(self$`field`)) {
        FieldUnauthorizedProblemAllOfObject[["field"]] <-
          self$`field`
      }
      if (!is.null(self$`resource_type`)) {
        FieldUnauthorizedProblemAllOfObject[["resource_type"]] <-
          self$`resource_type`
      }
      if (!is.null(self$`section`)) {
        FieldUnauthorizedProblemAllOfObject[["section"]] <-
          self$`section`
      }
      for (key in names(self$additional_properties)) {
        FieldUnauthorizedProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      FieldUnauthorizedProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of FieldUnauthorizedProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`field`)) {
        self$`field` <- this_object$`field`
      }
      if (!is.null(this_object$`resource_type`)) {
        if (!is.null(this_object$`resource_type`) && !(this_object$`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
          stop(paste("Error! \"", this_object$`resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
        }
        self$`resource_type` <- this_object$`resource_type`
      }
      if (!is.null(this_object$`section`)) {
        if (!is.null(this_object$`section`) && !(this_object$`section` %in% c("data", "includes"))) {
          stop(paste("Error! \"", this_object$`section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
        }
        self$`section` <- this_object$`section`
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
    #' @return FieldUnauthorizedProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`field`)) {
          sprintf(
            '"field":
            "%s"
                    ',
            self$`field`
          )
        },
        if (!is.null(self$`resource_type`)) {
          sprintf(
            '"resource_type":
            "%s"
                    ',
            self$`resource_type`
          )
        },
        if (!is.null(self$`section`)) {
          sprintf(
            '"section":
            "%s"
                    ',
            self$`section`
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
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of FieldUnauthorizedProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`field` <- this_object$`field`
      if (!is.null(this_object$`resource_type`) && !(this_object$`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
        stop(paste("Error! \"", this_object$`resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
      }
      self$`resource_type` <- this_object$`resource_type`
      if (!is.null(this_object$`section`) && !(this_object$`section` %in% c("data", "includes"))) {
        stop(paste("Error! \"", this_object$`section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
      }
      self$`section` <- this_object$`section`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to FieldUnauthorizedProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to FieldUnauthorizedProblemAllOf and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `field`
      if (!is.null(input_json$`field`)) {
        stopifnot(is.character(input_json$`field`), length(input_json$`field`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblemAllOf: the required field `field` is missing."))
      }
      # check the required field `resource_type`
      if (!is.null(input_json$`resource_type`)) {
        stopifnot(is.character(input_json$`resource_type`), length(input_json$`resource_type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblemAllOf: the required field `resource_type` is missing."))
      }
      # check the required field `section`
      if (!is.null(input_json$`section`)) {
        stopifnot(is.character(input_json$`section`), length(input_json$`section`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblemAllOf: the required field `section` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FieldUnauthorizedProblemAllOf
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
      # check if the required `field` is null
      if (is.null(self$`field`)) {
        return(FALSE)
      }

      # check if the required `resource_type` is null
      if (is.null(self$`resource_type`)) {
        return(FALSE)
      }

      # check if the required `section` is null
      if (is.null(self$`section`)) {
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
      # check if the required `field` is null
      if (is.null(self$`field`)) {
        invalid_fields["field"] <- "Non-nullable required field `field` cannot be null."
      }

      # check if the required `resource_type` is null
      if (is.null(self$`resource_type`)) {
        invalid_fields["resource_type"] <- "Non-nullable required field `resource_type` cannot be null."
      }

      # check if the required `section` is null
      if (is.null(self$`section`)) {
        invalid_fields["section"] <- "Non-nullable required field `section` cannot be null."
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
# FieldUnauthorizedProblemAllOf$unlock()
#
## Below is an example to define the print fnuction
# FieldUnauthorizedProblemAllOf$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FieldUnauthorizedProblemAllOf$lock()
