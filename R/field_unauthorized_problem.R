#' Create a new FieldUnauthorizedProblem
#'
#' @description
#' A problem that indicates that you are not allowed to see a particular field on a Tweet, User, etc.
#'
#' @docType class
#' @title FieldUnauthorizedProblem
#' @description FieldUnauthorizedProblem Class
#' @format An \code{R6Class} generator object
#' @field detail  character [optional]
#' @field status  integer [optional]
#' @field title  character
#' @field type  character
#' @field field  character
#' @field resource_type  character
#' @field section  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FieldUnauthorizedProblem <- R6::R6Class(
  "FieldUnauthorizedProblem",
  inherit = Problem,
  public = list(
    `detail` = NULL,
    `status` = NULL,
    `title` = NULL,
    `type` = NULL,
    `field` = NULL,
    `resource_type` = NULL,
    `section` = NULL,
    #' Initialize a new FieldUnauthorizedProblem class.
    #'
    #' @description
    #' Initialize a new FieldUnauthorizedProblem class.
    #'
    #' @param title title
    #' @param type type
    #' @param field field
    #' @param resource_type resource_type
    #' @param section section
    #' @param detail detail
    #' @param status status
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `title`, `type`, `field`, `resource_type`, `section`, `detail` = NULL, `status` = NULL, ...
    ) {
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`field`)) {
        stopifnot(is.character(`field`), length(`field`) == 1)
        self$`field` <- `field`
      }
      if (!missing(`resource_type`)) {
        stopifnot(is.character(`resource_type`), length(`resource_type`) == 1)
        self$`resource_type` <- `resource_type`
      }
      if (!missing(`section`)) {
        stopifnot(is.character(`section`), length(`section`) == 1)
        self$`section` <- `section`
      }
      if (!is.null(`detail`)) {
        stopifnot(is.character(`detail`), length(`detail`) == 1)
        self$`detail` <- `detail`
      }
      if (!is.null(`status`)) {
        stopifnot(is.numeric(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FieldUnauthorizedProblem in JSON format
    #' @export
    toJSON = function() {
      FieldUnauthorizedProblemObject <- list()
      if (!is.null(self$`detail`)) {
        FieldUnauthorizedProblemObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`status`)) {
        FieldUnauthorizedProblemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        FieldUnauthorizedProblemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        FieldUnauthorizedProblemObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`field`)) {
        FieldUnauthorizedProblemObject[["field"]] <-
          self$`field`
      }
      if (!is.null(self$`resource_type`)) {
        FieldUnauthorizedProblemObject[["resource_type"]] <-
          self$`resource_type`
      }
      if (!is.null(self$`section`)) {
        FieldUnauthorizedProblemObject[["section"]] <-
          self$`section`
      }

      FieldUnauthorizedProblemObject
    },
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of FieldUnauthorizedProblem
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`field`)) {
        self$`field` <- this_object$`field`
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
    #' @return FieldUnauthorizedProblem in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`detail`)) {
          sprintf(
          '"detail":
            "%s"
                    ',
          self$`detail`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
          '"status":
            %d
                    ',
          self$`status`
          )
        },
        if (!is.null(self$`title`)) {
          sprintf(
          '"title":
            "%s"
                    ',
          self$`title`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
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
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of FieldUnauthorizedProblem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      self$`field` <- this_object$`field`
      self$`resource_type` <- this_object$`resource_type`
      self$`section` <- this_object$`section`
      self
    },
    #' Validate JSON input with respect to FieldUnauthorizedProblem
    #'
    #' @description
    #' Validate JSON input with respect to FieldUnauthorizedProblem and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        stopifnot(is.character(input_json$`title`), length(input_json$`title`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `title` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `type` is missing."))
      }
      # check the required field `field`
      if (!is.null(input_json$`field`)) {
        stopifnot(is.character(input_json$`field`), length(input_json$`field`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `field` is missing."))
      }
      # check the required field `resource_type`
      if (!is.null(input_json$`resource_type`)) {
        stopifnot(is.character(input_json$`resource_type`), length(input_json$`resource_type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `resource_type` is missing."))
      }
      # check the required field `section`
      if (!is.null(input_json$`section`)) {
        stopifnot(is.character(input_json$`section`), length(input_json$`section`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `section` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FieldUnauthorizedProblem
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
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

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
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
FieldUnauthorizedProblem$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
FieldUnauthorizedProblem$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
FieldUnauthorizedProblem$lock()

