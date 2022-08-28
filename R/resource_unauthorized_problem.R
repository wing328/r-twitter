#' Create a new ResourceUnauthorizedProblem
#'
#' @description
#' A problem that indicates you are not allowed to see a particular Tweet, User, etc.
#'
#' @docType class
#' @title ResourceUnauthorizedProblem
#' @description ResourceUnauthorizedProblem Class
#' @format An \code{R6Class} generator object
#' @field detail  character [optional]
#' @field status  integer [optional]
#' @field title  character
#' @field type  character
#' @field parameter  character
#' @field resource_id  character
#' @field resource_type  character
#' @field section  character
#' @field value  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResourceUnauthorizedProblem <- R6::R6Class(
  "ResourceUnauthorizedProblem",
  inherit = Problem,
  public = list(
    `detail` = NULL,
    `status` = NULL,
    `title` = NULL,
    `type` = NULL,
    `parameter` = NULL,
    `resource_id` = NULL,
    `resource_type` = NULL,
    `section` = NULL,
    `value` = NULL,
    #' Initialize a new ResourceUnauthorizedProblem class.
    #'
    #' @description
    #' Initialize a new ResourceUnauthorizedProblem class.
    #'
    #' @param title title
    #' @param type type
    #' @param parameter parameter
    #' @param resource_id resource_id
    #' @param resource_type resource_type
    #' @param section section
    #' @param value value
    #' @param detail detail
    #' @param status status
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `title`, `type`, `parameter`, `resource_id`, `resource_type`, `section`, `value`, `detail` = NULL, `status` = NULL, ...
    ) {
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`parameter`)) {
        stopifnot(is.character(`parameter`), length(`parameter`) == 1)
        self$`parameter` <- `parameter`
      }
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
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
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
    #' @return ResourceUnauthorizedProblem in JSON format
    #' @export
    toJSON = function() {
      ResourceUnauthorizedProblemObject <- list()
      if (!is.null(self$`detail`)) {
        ResourceUnauthorizedProblemObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`status`)) {
        ResourceUnauthorizedProblemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        ResourceUnauthorizedProblemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        ResourceUnauthorizedProblemObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`parameter`)) {
        ResourceUnauthorizedProblemObject[["parameter"]] <-
          self$`parameter`
      }
      if (!is.null(self$`resource_id`)) {
        ResourceUnauthorizedProblemObject[["resource_id"]] <-
          self$`resource_id`
      }
      if (!is.null(self$`resource_type`)) {
        ResourceUnauthorizedProblemObject[["resource_type"]] <-
          self$`resource_type`
      }
      if (!is.null(self$`section`)) {
        ResourceUnauthorizedProblemObject[["section"]] <-
          self$`section`
      }
      if (!is.null(self$`value`)) {
        ResourceUnauthorizedProblemObject[["value"]] <-
          self$`value`
      }

      ResourceUnauthorizedProblemObject
    },
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResourceUnauthorizedProblem
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
      if (!is.null(this_object$`parameter`)) {
        self$`parameter` <- this_object$`parameter`
      }
      if (!is.null(this_object$`resource_id`)) {
        self$`resource_id` <- this_object$`resource_id`
      }
      if (!is.null(this_object$`resource_type`)) {
        self$`resource_type` <- this_object$`resource_type`
      }
      if (!is.null(this_object$`section`)) {
        self$`section` <- this_object$`section`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ResourceUnauthorizedProblem in JSON format
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
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResourceUnauthorizedProblem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      self$`parameter` <- this_object$`parameter`
      self$`resource_id` <- this_object$`resource_id`
      self$`resource_type` <- this_object$`resource_type`
      self$`section` <- this_object$`section`
      self$`value` <- this_object$`value`
      self
    },
    #' Validate JSON input with respect to ResourceUnauthorizedProblem
    #'
    #' @description
    #' Validate JSON input with respect to ResourceUnauthorizedProblem and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        stopifnot(is.character(input_json$`title`), length(input_json$`title`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `title` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `type` is missing."))
      }
      # check the required field `parameter`
      if (!is.null(input_json$`parameter`)) {
        stopifnot(is.character(input_json$`parameter`), length(input_json$`parameter`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `parameter` is missing."))
      }
      # check the required field `resource_id`
      if (!is.null(input_json$`resource_id`)) {
        stopifnot(is.character(input_json$`resource_id`), length(input_json$`resource_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `resource_id` is missing."))
      }
      # check the required field `resource_type`
      if (!is.null(input_json$`resource_type`)) {
        stopifnot(is.character(input_json$`resource_type`), length(input_json$`resource_type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `resource_type` is missing."))
      }
      # check the required field `section`
      if (!is.null(input_json$`section`)) {
        stopifnot(is.character(input_json$`section`), length(input_json$`section`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `section` is missing."))
      }
      # check the required field `value`
      if (!is.null(input_json$`value`)) {
        stopifnot(is.character(input_json$`value`), length(input_json$`value`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `value` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ResourceUnauthorizedProblem
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
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

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
    }
  )
)

