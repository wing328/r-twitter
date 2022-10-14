#' Create a new ContextAnnotationEntityFields
#'
#' @description
#' Represents the data for the context annotation entity.
#'
#' @docType class
#' @title ContextAnnotationEntityFields
#' @description ContextAnnotationEntityFields Class
#' @format An \code{R6Class} generator object
#' @field description Description of the context annotation entity. character [optional]
#' @field id The unique id for a context annotation entity. character
#' @field name Name of the context annotation entity. character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContextAnnotationEntityFields <- R6::R6Class(
  "ContextAnnotationEntityFields",
  public = list(
    `description` = NULL,
    `id` = NULL,
    `name` = NULL,
    `_field_list` = c("description", "id", "name"),
    `additional_properties` = list(),
    #' Initialize a new ContextAnnotationEntityFields class.
    #'
    #' @description
    #' Initialize a new ContextAnnotationEntityFields class.
    #'
    #' @param id The unique id for a context annotation entity.
    #' @param description Description of the context annotation entity.
    #' @param name Name of the context annotation entity.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `description` = NULL, `name` = NULL, additional_properties = NULL, ...) {
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!is.null(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
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
    #' @return ContextAnnotationEntityFields in JSON format
    #' @export
    toJSON = function() {
      ContextAnnotationEntityFieldsObject <- list()
      if (!is.null(self$`description`)) {
        ContextAnnotationEntityFieldsObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`id`)) {
        ContextAnnotationEntityFieldsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ContextAnnotationEntityFieldsObject[["name"]] <-
          self$`name`
      }
      for (key in names(self$additional_properties)) {
        ContextAnnotationEntityFieldsObject[[key]] <- self$additional_properties[[key]]
      }

      ContextAnnotationEntityFieldsObject
    },
    #' Deserialize JSON string into an instance of ContextAnnotationEntityFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContextAnnotationEntityFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContextAnnotationEntityFields
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
    #' @return ContextAnnotationEntityFields in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`description`)) {
          sprintf(
            '"description":
            "%s"
                    ',
            self$`description`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
            '"id":
            "%s"
                    ',
            self$`id`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
            '"name":
            "%s"
                    ',
            self$`name`
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
    #' Deserialize JSON string into an instance of ContextAnnotationEntityFields
    #'
    #' @description
    #' Deserialize JSON string into an instance of ContextAnnotationEntityFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContextAnnotationEntityFields
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ContextAnnotationEntityFields
    #'
    #' @description
    #' Validate JSON input with respect to ContextAnnotationEntityFields and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        stopifnot(is.character(input_json$`id`), length(input_json$`id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContextAnnotationEntityFields: the required field `id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ContextAnnotationEntityFields
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
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
# ContextAnnotationEntityFields$unlock()
#
## Below is an example to define the print fnuction
# ContextAnnotationEntityFields$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContextAnnotationEntityFields$lock()
