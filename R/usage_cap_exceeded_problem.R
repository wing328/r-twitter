#' Create a new UsageCapExceededProblem
#'
#' @description
#' A problem that indicates that a usage cap has been exceeded.
#'
#' @docType class
#' @title UsageCapExceededProblem
#' @description UsageCapExceededProblem Class
#' @format An \code{R6Class} generator object
#' @field detail  character [optional]
#' @field status  integer [optional]
#' @field title  character
#' @field type  character
#' @field period  character [optional]
#' @field scope  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsageCapExceededProblem <- R6::R6Class(
  "UsageCapExceededProblem",
  inherit = Problem,
  public = list(
    `detail` = NULL,
    `status` = NULL,
    `title` = NULL,
    `type` = NULL,
    `period` = NULL,
    `scope` = NULL,
    `_field_list` = c("detail", "status", "title", "type", "period", "scope"),
    `additional_properties` = list(),
    #' Initialize a new UsageCapExceededProblem class.
    #'
    #' @description
    #' Initialize a new UsageCapExceededProblem class.
    #'
    #' @param title title
    #' @param type type
    #' @param detail detail
    #' @param status status
    #' @param period period
    #' @param scope scope
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`title`, `type`, `detail` = NULL, `status` = NULL, `period` = NULL, `scope` = NULL, additional_properties = NULL, ...) {
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!is.null(`detail`)) {
        stopifnot(is.character(`detail`), length(`detail`) == 1)
        self$`detail` <- `detail`
      }
      if (!is.null(`status`)) {
        stopifnot(is.numeric(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!is.null(`period`)) {
        if (!(`period` %in% c("Daily", "Monthly"))) {
          stop(paste("Error! \"", `period`, "\" cannot be assigned to `period`. Must be \"Daily\", \"Monthly\".", sep = ""))
        }
        stopifnot(is.character(`period`), length(`period`) == 1)
        self$`period` <- `period`
      }
      if (!is.null(`scope`)) {
        if (!(`scope` %in% c("Account", "Product"))) {
          stop(paste("Error! \"", `scope`, "\" cannot be assigned to `scope`. Must be \"Account\", \"Product\".", sep = ""))
        }
        stopifnot(is.character(`scope`), length(`scope`) == 1)
        self$`scope` <- `scope`
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
    #' @return UsageCapExceededProblem in JSON format
    #' @export
    toJSON = function() {
      UsageCapExceededProblemObject <- list()
      if (!is.null(self$`detail`)) {
        UsageCapExceededProblemObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`status`)) {
        UsageCapExceededProblemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        UsageCapExceededProblemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        UsageCapExceededProblemObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`period`)) {
        UsageCapExceededProblemObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`scope`)) {
        UsageCapExceededProblemObject[["scope"]] <-
          self$`scope`
      }
      for (key in names(self$additional_properties)) {
        UsageCapExceededProblemObject[[key]] <- self$additional_properties[[key]]
      }

      UsageCapExceededProblemObject
    },
    #' Deserialize JSON string into an instance of UsageCapExceededProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsageCapExceededProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsageCapExceededProblem
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
      if (!is.null(this_object$`period`)) {
        if (!is.null(this_object$`period`) && !(this_object$`period` %in% c("Daily", "Monthly"))) {
          stop(paste("Error! \"", this_object$`period`, "\" cannot be assigned to `period`. Must be \"Daily\", \"Monthly\".", sep = ""))
        }
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`scope`)) {
        if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("Account", "Product"))) {
          stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"Account\", \"Product\".", sep = ""))
        }
        self$`scope` <- this_object$`scope`
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
    #' @return UsageCapExceededProblem in JSON format
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
        if (!is.null(self$`period`)) {
          sprintf(
            '"period":
            "%s"
                    ',
            self$`period`
          )
        },
        if (!is.null(self$`scope`)) {
          sprintf(
            '"scope":
            "%s"
                    ',
            self$`scope`
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
    #' Deserialize JSON string into an instance of UsageCapExceededProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsageCapExceededProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsageCapExceededProblem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      if (!is.null(this_object$`period`) && !(this_object$`period` %in% c("Daily", "Monthly"))) {
        stop(paste("Error! \"", this_object$`period`, "\" cannot be assigned to `period`. Must be \"Daily\", \"Monthly\".", sep = ""))
      }
      self$`period` <- this_object$`period`
      if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("Account", "Product"))) {
        stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"Account\", \"Product\".", sep = ""))
      }
      self$`scope` <- this_object$`scope`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UsageCapExceededProblem
    #'
    #' @description
    #' Validate JSON input with respect to UsageCapExceededProblem and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        stopifnot(is.character(input_json$`title`), length(input_json$`title`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UsageCapExceededProblem: the required field `title` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UsageCapExceededProblem: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UsageCapExceededProblem
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
# UsageCapExceededProblem$unlock()
#
## Below is an example to define the print fnuction
# UsageCapExceededProblem$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UsageCapExceededProblem$lock()
