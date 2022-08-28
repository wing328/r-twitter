#' Create a new Rule
#'
#' @description
#' A user-provided stream filtering rule.
#'
#' @docType class
#' @title Rule
#' @description Rule Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field tag  character [optional]
#' @field value  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Rule <- R6::R6Class(
  "Rule",
  public = list(
    `id` = NULL,
    `tag` = NULL,
    `value` = NULL,
    #' Initialize a new Rule class.
    #'
    #' @description
    #' Initialize a new Rule class.
    #'
    #' @param value The filterlang value of the rule.
    #' @param id Unique identifier of this rule.
    #' @param tag A tag meant for the labeling of user provided rules.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `value`, `id` = NULL, `tag` = NULL, ...
    ) {
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
      }
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`tag`)) {
        stopifnot(is.character(`tag`), length(`tag`) == 1)
        self$`tag` <- `tag`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Rule in JSON format
    #' @export
    toJSON = function() {
      RuleObject <- list()
      if (!is.null(self$`id`)) {
        RuleObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`tag`)) {
        RuleObject[["tag"]] <-
          self$`tag`
      }
      if (!is.null(self$`value`)) {
        RuleObject[["value"]] <-
          self$`value`
      }

      RuleObject
    },
    #' Deserialize JSON string into an instance of Rule
    #'
    #' @description
    #' Deserialize JSON string into an instance of Rule
    #'
    #' @param input_json the JSON input
    #' @return the instance of Rule
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`tag`)) {
        self$`tag` <- this_object$`tag`
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
    #' @return Rule in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`tag`)) {
          sprintf(
          '"tag":
            "%s"
                    ',
          self$`tag`
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
    #' Deserialize JSON string into an instance of Rule
    #'
    #' @description
    #' Deserialize JSON string into an instance of Rule
    #'
    #' @param input_json the JSON input
    #' @return the instance of Rule
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`tag` <- this_object$`tag`
      self$`value` <- this_object$`value`
      self
    },
    #' Validate JSON input with respect to Rule
    #'
    #' @description
    #' Validate JSON input with respect to Rule and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `value`
      if (!is.null(input_json$`value`)) {
        stopifnot(is.character(input_json$`value`), length(input_json$`value`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Rule: the required field `value` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Rule
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
      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
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
      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `value` is null
      if (is.null(self$`value`)) {
        invalid_fields["value"] <- "Non-nullable required field `value` cannot be null."
      }

      invalid_fields
    }
  )
)

