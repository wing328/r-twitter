#' Create a new DisallowedResourceProblemAllOf
#'
#' @description
#' DisallowedResourceProblemAllOf Class
#'
#' @docType class
#' @title DisallowedResourceProblemAllOf
#' @description DisallowedResourceProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field resource_id  character
#' @field resource_type  character
#' @field section  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DisallowedResourceProblemAllOf <- R6::R6Class(
  "DisallowedResourceProblemAllOf",
  public = list(
    `resource_id` = NULL,
    `resource_type` = NULL,
    `section` = NULL,
    `_field_list` = c("resource_id", "resource_type", "section"),
    `additional_properties` = list(),
    #' Initialize a new DisallowedResourceProblemAllOf class.
    #'
    #' @description
    #' Initialize a new DisallowedResourceProblemAllOf class.
    #'
    #' @param resource_id resource_id
    #' @param resource_type resource_type
    #' @param section section
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`resource_id`, `resource_type`, `section`, additional_properties = NULL, ...) {
      if (!missing(`resource_id`)) {
        stopifnot(is.character(`resource_id`), length(`resource_id`) == 1)
        self$`resource_id` <- `resource_id`
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
    #' @return DisallowedResourceProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      DisallowedResourceProblemAllOfObject <- list()
      if (!is.null(self$`resource_id`)) {
        DisallowedResourceProblemAllOfObject[["resource_id"]] <-
          self$`resource_id`
      }
      if (!is.null(self$`resource_type`)) {
        DisallowedResourceProblemAllOfObject[["resource_type"]] <-
          self$`resource_type`
      }
      if (!is.null(self$`section`)) {
        DisallowedResourceProblemAllOfObject[["section"]] <-
          self$`section`
      }
      for (key in names(self$additional_properties)) {
        DisallowedResourceProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      DisallowedResourceProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of DisallowedResourceProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of DisallowedResourceProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of DisallowedResourceProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`resource_id`)) {
        self$`resource_id` <- this_object$`resource_id`
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
    #' @return DisallowedResourceProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`resource_id`)) {
          sprintf(
            '"resource_id":
            "%s"
                    ',
            self$`resource_id`
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
    #' Deserialize JSON string into an instance of DisallowedResourceProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of DisallowedResourceProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of DisallowedResourceProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`resource_id` <- this_object$`resource_id`
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
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to DisallowedResourceProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to DisallowedResourceProblemAllOf and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `resource_id`
      if (!is.null(input_json$`resource_id`)) {
        stopifnot(is.character(input_json$`resource_id`), length(input_json$`resource_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DisallowedResourceProblemAllOf: the required field `resource_id` is missing."))
      }
      # check the required field `resource_type`
      if (!is.null(input_json$`resource_type`)) {
        stopifnot(is.character(input_json$`resource_type`), length(input_json$`resource_type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DisallowedResourceProblemAllOf: the required field `resource_type` is missing."))
      }
      # check the required field `section`
      if (!is.null(input_json$`section`)) {
        stopifnot(is.character(input_json$`section`), length(input_json$`section`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DisallowedResourceProblemAllOf: the required field `section` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DisallowedResourceProblemAllOf
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
      # check if the required `resource_id` is null
      if (is.null(self$`resource_id`)) {
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
      # check if the required `resource_id` is null
      if (is.null(self$`resource_id`)) {
        invalid_fields["resource_id"] <- "Non-nullable required field `resource_id` cannot be null."
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
# DisallowedResourceProblemAllOf$unlock()
#
## Below is an example to define the print fnuction
# DisallowedResourceProblemAllOf$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DisallowedResourceProblemAllOf$lock()
