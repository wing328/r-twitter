#' Create a new ConnectionExceptionProblem
#'
#' @description
#' A problem that indicates something is wrong with the connection.
#'
#' @docType class
#' @title ConnectionExceptionProblem
#' @description ConnectionExceptionProblem Class
#' @format An \code{R6Class} generator object
#' @field detail  character [optional]
#' @field status  integer [optional]
#' @field title  character
#' @field type  character
#' @field connection_issue  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionExceptionProblem <- R6::R6Class(
  "ConnectionExceptionProblem",
  inherit = Problem,
  public = list(
    `detail` = NULL,
    `status` = NULL,
    `title` = NULL,
    `type` = NULL,
    `connection_issue` = NULL,
    `_field_list` = c("detail", "status", "title", "type", "connection_issue"),
    `additional_properties` = list(),
    #' Initialize a new ConnectionExceptionProblem class.
    #'
    #' @description
    #' Initialize a new ConnectionExceptionProblem class.
    #'
    #' @param title title
    #' @param type type
    #' @param detail detail
    #' @param status status
    #' @param connection_issue connection_issue
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`title`, `type`, `detail` = NULL, `status` = NULL, `connection_issue` = NULL, additional_properties = NULL, ...) {
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
      if (!is.null(`connection_issue`)) {
        if (!(`connection_issue` %in% c("TooManyConnections", "ProvisioningSubscription", "RuleConfigurationIssue", "RulesInvalidIssue"))) {
          stop(paste("Error! \"", `connection_issue`, "\" cannot be assigned to `connection_issue`. Must be \"TooManyConnections\", \"ProvisioningSubscription\", \"RuleConfigurationIssue\", \"RulesInvalidIssue\".", sep = ""))
        }
        stopifnot(is.character(`connection_issue`), length(`connection_issue`) == 1)
        self$`connection_issue` <- `connection_issue`
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
    #' @return ConnectionExceptionProblem in JSON format
    #' @export
    toJSON = function() {
      ConnectionExceptionProblemObject <- list()
      if (!is.null(self$`detail`)) {
        ConnectionExceptionProblemObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`status`)) {
        ConnectionExceptionProblemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        ConnectionExceptionProblemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        ConnectionExceptionProblemObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`connection_issue`)) {
        ConnectionExceptionProblemObject[["connection_issue"]] <-
          self$`connection_issue`
      }
      for (key in names(self$additional_properties)) {
        ConnectionExceptionProblemObject[[key]] <- self$additional_properties[[key]]
      }

      ConnectionExceptionProblemObject
    },
    #' Deserialize JSON string into an instance of ConnectionExceptionProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConnectionExceptionProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionExceptionProblem
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
      if (!is.null(this_object$`connection_issue`)) {
        if (!is.null(this_object$`connection_issue`) && !(this_object$`connection_issue` %in% c("TooManyConnections", "ProvisioningSubscription", "RuleConfigurationIssue", "RulesInvalidIssue"))) {
          stop(paste("Error! \"", this_object$`connection_issue`, "\" cannot be assigned to `connection_issue`. Must be \"TooManyConnections\", \"ProvisioningSubscription\", \"RuleConfigurationIssue\", \"RulesInvalidIssue\".", sep = ""))
        }
        self$`connection_issue` <- this_object$`connection_issue`
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
    #' @return ConnectionExceptionProblem in JSON format
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
        if (!is.null(self$`connection_issue`)) {
          sprintf(
            '"connection_issue":
            "%s"
                    ',
            self$`connection_issue`
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
    #' Deserialize JSON string into an instance of ConnectionExceptionProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConnectionExceptionProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionExceptionProblem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      if (!is.null(this_object$`connection_issue`) && !(this_object$`connection_issue` %in% c("TooManyConnections", "ProvisioningSubscription", "RuleConfigurationIssue", "RulesInvalidIssue"))) {
        stop(paste("Error! \"", this_object$`connection_issue`, "\" cannot be assigned to `connection_issue`. Must be \"TooManyConnections\", \"ProvisioningSubscription\", \"RuleConfigurationIssue\", \"RulesInvalidIssue\".", sep = ""))
      }
      self$`connection_issue` <- this_object$`connection_issue`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ConnectionExceptionProblem
    #'
    #' @description
    #' Validate JSON input with respect to ConnectionExceptionProblem and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        stopifnot(is.character(input_json$`title`), length(input_json$`title`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionExceptionProblem: the required field `title` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConnectionExceptionProblem: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionExceptionProblem
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
# ConnectionExceptionProblem$unlock()
#
## Below is an example to define the print fnuction
# ConnectionExceptionProblem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionExceptionProblem$lock()
