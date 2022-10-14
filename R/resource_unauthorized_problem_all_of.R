#' Create a new ResourceUnauthorizedProblemAllOf
#'
#' @description
#' ResourceUnauthorizedProblemAllOf Class
#'
#' @docType class
#' @title ResourceUnauthorizedProblemAllOf
#' @description ResourceUnauthorizedProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field parameter  character
#' @field resource_id  character
#' @field resource_type  character
#' @field section  character
#' @field value  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResourceUnauthorizedProblemAllOf <- R6::R6Class(
  "ResourceUnauthorizedProblemAllOf",
  public = list(
    `parameter` = NULL,
    `resource_id` = NULL,
    `resource_type` = NULL,
    `section` = NULL,
    `value` = NULL,
    `_field_list` = c("parameter", "resource_id", "resource_type", "section", "value"),
    `additional_properties` = list(),
    #' Initialize a new ResourceUnauthorizedProblemAllOf class.
    #'
    #' @description
    #' Initialize a new ResourceUnauthorizedProblemAllOf class.
    #'
    #' @param parameter parameter
    #' @param resource_id resource_id
    #' @param resource_type resource_type
    #' @param section section
    #' @param value value
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`parameter`, `resource_id`, `resource_type`, `section`, `value`, additional_properties = NULL, ...) {
      if (!missing(`parameter`)) {
        stopifnot(is.character(`parameter`), length(`parameter`) == 1)
        self$`parameter` <- `parameter`
      }
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
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
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
    #' @return ResourceUnauthorizedProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      ResourceUnauthorizedProblemAllOfObject <- list()
      if (!is.null(self$`parameter`)) {
        ResourceUnauthorizedProblemAllOfObject[["parameter"]] <-
          self$`parameter`
      }
      if (!is.null(self$`resource_id`)) {
        ResourceUnauthorizedProblemAllOfObject[["resource_id"]] <-
          self$`resource_id`
      }
      if (!is.null(self$`resource_type`)) {
        ResourceUnauthorizedProblemAllOfObject[["resource_type"]] <-
          self$`resource_type`
      }
      if (!is.null(self$`section`)) {
        ResourceUnauthorizedProblemAllOfObject[["section"]] <-
          self$`section`
      }
      if (!is.null(self$`value`)) {
        ResourceUnauthorizedProblemAllOfObject[["value"]] <-
          self$`value`
      }
      for (key in names(self$additional_properties)) {
        ResourceUnauthorizedProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      ResourceUnauthorizedProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResourceUnauthorizedProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`parameter`)) {
        self$`parameter` <- this_object$`parameter`
      }
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
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
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
    #' @return ResourceUnauthorizedProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`parameter`)) {
          sprintf(
            '"parameter":
            "%s"
                    ',
            self$`parameter`
          )
        },
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
        },
        if (!is.null(self$`value`)) {
          sprintf(
            '"value":
            "%s"
                    ',
            self$`value`
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
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResourceUnauthorizedProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`parameter` <- this_object$`parameter`
      self$`resource_id` <- this_object$`resource_id`
      if (!is.null(this_object$`resource_type`) && !(this_object$`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
        stop(paste("Error! \"", this_object$`resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
      }
      self$`resource_type` <- this_object$`resource_type`
      if (!is.null(this_object$`section`) && !(this_object$`section` %in% c("data", "includes"))) {
        stop(paste("Error! \"", this_object$`section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
      }
      self$`section` <- this_object$`section`
      self$`value` <- this_object$`value`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ResourceUnauthorizedProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to ResourceUnauthorizedProblemAllOf and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `parameter`
      if (!is.null(input_json$`parameter`)) {
        stopifnot(is.character(input_json$`parameter`), length(input_json$`parameter`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblemAllOf: the required field `parameter` is missing."))
      }
      # check the required field `resource_id`
      if (!is.null(input_json$`resource_id`)) {
        stopifnot(is.character(input_json$`resource_id`), length(input_json$`resource_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblemAllOf: the required field `resource_id` is missing."))
      }
      # check the required field `resource_type`
      if (!is.null(input_json$`resource_type`)) {
        stopifnot(is.character(input_json$`resource_type`), length(input_json$`resource_type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblemAllOf: the required field `resource_type` is missing."))
      }
      # check the required field `section`
      if (!is.null(input_json$`section`)) {
        stopifnot(is.character(input_json$`section`), length(input_json$`section`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblemAllOf: the required field `section` is missing."))
      }
      # check the required field `value`
      if (!is.null(input_json$`value`)) {
        stopifnot(is.character(input_json$`value`), length(input_json$`value`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblemAllOf: the required field `value` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ResourceUnauthorizedProblemAllOf
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
      # check if the required `parameter` is null
      if (is.null(self$`parameter`)) {
        return(FALSE)
      }

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

      # check if the required `value` is null
      if (is.null(self$`value`)) {
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
      # check if the required `parameter` is null
      if (is.null(self$`parameter`)) {
        invalid_fields["parameter"] <- "Non-nullable required field `parameter` cannot be null."
      }

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

      # check if the required `value` is null
      if (is.null(self$`value`)) {
        invalid_fields["value"] <- "Non-nullable required field `value` cannot be null."
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
# ResourceUnauthorizedProblemAllOf$unlock()
#
## Below is an example to define the print fnuction
# ResourceUnauthorizedProblemAllOf$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ResourceUnauthorizedProblemAllOf$lock()
