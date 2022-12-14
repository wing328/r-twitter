#' Create a new Rule
#'
#' @description
#' A user-provided stream filtering rule.
#'
#' @docType class
#' @title Rule
#' @description Rule Class
#' @format An \code{R6Class} generator object
#' @field id Unique identifier of this rule. character [optional]
#' @field tag A tag meant for the labeling of user provided rules. character [optional]
#' @field value The filterlang value of the rule. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Rule <- R6::R6Class(
  "Rule",
  public = list(
    `id` = NULL,
    `tag` = NULL,
    `value` = NULL,
    `_field_list` = c("id", "tag", "value"),
    `additional_properties` = list(),
    #' Initialize a new Rule class.
    #'
    #' @description
    #' Initialize a new Rule class.
    #'
    #' @param value The filterlang value of the rule.
    #' @param id Unique identifier of this rule.
    #' @param tag A tag meant for the labeling of user provided rules.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`value`, `id` = NULL, `tag` = NULL, additional_properties = NULL, ...) {
      if (!missing(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`tag`)) {
        if (!(is.character(`tag`) && length(`tag`) == 1)) {
          stop(paste("Error! Invalid data for `tag`. Must be a string:", `tag`))
        }
        self$`tag` <- `tag`
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
      for (key in names(self$additional_properties)) {
        RuleObject[[key]] <- self$additional_properties[[key]]
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
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
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
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

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
        if (!(is.character(input_json$`value`) && length(input_json$`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", input_json$`value`))
        }
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
# Rule$unlock()
#
## Below is an example to define the print fnuction
# Rule$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Rule$lock()
