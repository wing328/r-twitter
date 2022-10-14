#' Create a new ConnectionExceptionProblemAllOf
#'
#' @description
#' ConnectionExceptionProblemAllOf Class
#'
#' @docType class
#' @title ConnectionExceptionProblemAllOf
#' @description ConnectionExceptionProblemAllOf Class
#' @format An \code{R6Class} generator object
#' @field connection_issue  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConnectionExceptionProblemAllOf <- R6::R6Class(
  "ConnectionExceptionProblemAllOf",
  public = list(
    `connection_issue` = NULL,
    `_field_list` = c("connection_issue"),
    `additional_properties` = list(),
    #' Initialize a new ConnectionExceptionProblemAllOf class.
    #'
    #' @description
    #' Initialize a new ConnectionExceptionProblemAllOf class.
    #'
    #' @param connection_issue connection_issue
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`connection_issue` = NULL, additional_properties = NULL, ...) {
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
    #' @return ConnectionExceptionProblemAllOf in JSON format
    #' @export
    toJSON = function() {
      ConnectionExceptionProblemAllOfObject <- list()
      if (!is.null(self$`connection_issue`)) {
        ConnectionExceptionProblemAllOfObject[["connection_issue"]] <-
          self$`connection_issue`
      }
      for (key in names(self$additional_properties)) {
        ConnectionExceptionProblemAllOfObject[[key]] <- self$additional_properties[[key]]
      }

      ConnectionExceptionProblemAllOfObject
    },
    #' Deserialize JSON string into an instance of ConnectionExceptionProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConnectionExceptionProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionExceptionProblemAllOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`connection_issue`)) {
        if (!is.null(this_object$`connection_issue`) && !(this_object$`connection_issue` %in% c("TooManyConnections", "ProvisioningSubscription", "RuleConfigurationIssue", "RulesInvalidIssue"))) {
          stop(paste("Error! \"", this_object$`connection_issue`, "\" cannot be assigned to `connection_issue`. Must be \"TooManyConnections\", \"ProvisioningSubscription\", \"RuleConfigurationIssue\", \"RulesInvalidIssue\".", sep = ""))
        }
        self$`connection_issue` <- this_object$`connection_issue`
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
    #' @return ConnectionExceptionProblemAllOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
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
    #' Deserialize JSON string into an instance of ConnectionExceptionProblemAllOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of ConnectionExceptionProblemAllOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConnectionExceptionProblemAllOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`connection_issue`) && !(this_object$`connection_issue` %in% c("TooManyConnections", "ProvisioningSubscription", "RuleConfigurationIssue", "RulesInvalidIssue"))) {
        stop(paste("Error! \"", this_object$`connection_issue`, "\" cannot be assigned to `connection_issue`. Must be \"TooManyConnections\", \"ProvisioningSubscription\", \"RuleConfigurationIssue\", \"RulesInvalidIssue\".", sep = ""))
      }
      self$`connection_issue` <- this_object$`connection_issue`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ConnectionExceptionProblemAllOf
    #'
    #' @description
    #' Validate JSON input with respect to ConnectionExceptionProblemAllOf and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConnectionExceptionProblemAllOf
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
# ConnectionExceptionProblemAllOf$unlock()
#
## Below is an example to define the print fnuction
# ConnectionExceptionProblemAllOf$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConnectionExceptionProblemAllOf$lock()
