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
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DisallowedResourceProblemAllOf <- R6::R6Class(
  "DisallowedResourceProblemAllOf",
  public = list(
    `resource_id` = NULL,
    `resource_type` = NULL,
    `section` = NULL,
    #' Initialize a new DisallowedResourceProblemAllOf class.
    #'
    #' @description
    #' Initialize a new DisallowedResourceProblemAllOf class.
    #'
    #' @param resource_id resource_id
    #' @param resource_type resource_type
    #' @param section section
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `resource_id`, `resource_type`, `section`, ...
    ) {
      if (!missing(`resource_id`)) {
        stopifnot(is.character(`resource_id`), length(`resource_id`) == 1)
        self$`resource_id` <- `resource_id`
      }
      if (!missing(`resource_type`)) {
        stopifnot(is.character(`resource_type`), length(`resource_type`) == 1)
        self$`resource_type` <- `resource_type`
      }
      if (!missing(`section`)) {
        stopifnot(is.character(`section`), length(`section`) == 1)
        self$`section` <- `section`
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
        self$`resource_type` <- this_object$`resource_type`
      }
      if (!is.null(this_object$`section`)) {
        self$`section` <- this_object$`section`
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
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
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
      self$`resource_type` <- this_object$`resource_type`
      self$`section` <- this_object$`section`
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
DisallowedResourceProblemAllOf$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
DisallowedResourceProblemAllOf$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
DisallowedResourceProblemAllOf$lock()

