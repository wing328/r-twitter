#' Create a new UserUnprotectComplianceSchema
#'
#' @description
#' UserUnprotectComplianceSchema Class
#'
#' @docType class
#' @title UserUnprotectComplianceSchema
#' @description UserUnprotectComplianceSchema Class
#' @format An \code{R6Class} generator object
#' @field user_unprotect  \link{UserComplianceSchema}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserUnprotectComplianceSchema <- R6::R6Class(
  "UserUnprotectComplianceSchema",
  public = list(
    `user_unprotect` = NULL,
    #' Initialize a new UserUnprotectComplianceSchema class.
    #'
    #' @description
    #' Initialize a new UserUnprotectComplianceSchema class.
    #'
    #' @param user_unprotect user_unprotect
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `user_unprotect`, ...
    ) {
      if (!missing(`user_unprotect`)) {
        stopifnot(R6::is.R6(`user_unprotect`))
        self$`user_unprotect` <- `user_unprotect`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserUnprotectComplianceSchema in JSON format
    #' @export
    toJSON = function() {
      UserUnprotectComplianceSchemaObject <- list()
      if (!is.null(self$`user_unprotect`)) {
        UserUnprotectComplianceSchemaObject[["user_unprotect"]] <-
          self$`user_unprotect`$toJSON()
      }

      UserUnprotectComplianceSchemaObject
    },
    #' Deserialize JSON string into an instance of UserUnprotectComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserUnprotectComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserUnprotectComplianceSchema
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_unprotect`)) {
        user_unprotect_object <- UserComplianceSchema$new()
        user_unprotect_object$fromJSON(jsonlite::toJSON(this_object$user_unprotect, auto_unbox = TRUE, digits = NA))
        self$`user_unprotect` <- user_unprotect_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserUnprotectComplianceSchema in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`user_unprotect`)) {
          sprintf(
          '"user_unprotect":
          %s
          ',
          jsonlite::toJSON(self$`user_unprotect`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UserUnprotectComplianceSchema
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserUnprotectComplianceSchema
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserUnprotectComplianceSchema
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_unprotect` <- UserComplianceSchema$new()$fromJSON(jsonlite::toJSON(this_object$user_unprotect, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to UserUnprotectComplianceSchema
    #'
    #' @description
    #' Validate JSON input with respect to UserUnprotectComplianceSchema and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_unprotect`
      if (!is.null(input_json$`user_unprotect`)) {
        stopifnot(R6::is.R6(input_json$`user_unprotect`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserUnprotectComplianceSchema: the required field `user_unprotect` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserUnprotectComplianceSchema
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
      # check if the required `user_unprotect` is null
      if (is.null(self$`user_unprotect`)) {
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
      # check if the required `user_unprotect` is null
      if (is.null(self$`user_unprotect`)) {
        invalid_fields["user_unprotect"] <- "Non-nullable required field `user_unprotect` cannot be null."
      }

      invalid_fields
    }
  )
)

