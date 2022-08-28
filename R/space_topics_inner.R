#' Create a new SpaceTopicsInner
#'
#' @description
#' The Twitter Topic object.
#'
#' @docType class
#' @title SpaceTopicsInner
#' @description SpaceTopicsInner Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field id  character
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpaceTopicsInner <- R6::R6Class(
  "SpaceTopicsInner",
  public = list(
    `description` = NULL,
    `id` = NULL,
    `name` = NULL,
    #' Initialize a new SpaceTopicsInner class.
    #'
    #' @description
    #' Initialize a new SpaceTopicsInner class.
    #'
    #' @param id An ID suitable for use in the REST API.
    #' @param name The name of the given topic.
    #' @param description The description of the given topic.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `id`, `name`, `description` = NULL, ...
    ) {
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpaceTopicsInner in JSON format
    #' @export
    toJSON = function() {
      SpaceTopicsInnerObject <- list()
      if (!is.null(self$`description`)) {
        SpaceTopicsInnerObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`id`)) {
        SpaceTopicsInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        SpaceTopicsInnerObject[["name"]] <-
          self$`name`
      }

      SpaceTopicsInnerObject
    },
    #' Deserialize JSON string into an instance of SpaceTopicsInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpaceTopicsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpaceTopicsInner
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
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SpaceTopicsInner in JSON format
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
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SpaceTopicsInner
    #'
    #' @description
    #' Deserialize JSON string into an instance of SpaceTopicsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SpaceTopicsInner
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self
    },
    #' Validate JSON input with respect to SpaceTopicsInner
    #'
    #' @description
    #' Validate JSON input with respect to SpaceTopicsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        stopifnot(is.character(input_json$`id`), length(input_json$`id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpaceTopicsInner: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        stopifnot(is.character(input_json$`name`), length(input_json$`name`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SpaceTopicsInner: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SpaceTopicsInner
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      invalid_fields
    }
  )
)

