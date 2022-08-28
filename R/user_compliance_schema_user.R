#' Create a new UserComplianceSchemaUser
#'
#' @description
#' UserComplianceSchemaUser Class
#'
#' @docType class
#' @title UserComplianceSchemaUser
#' @description UserComplianceSchemaUser Class
#' @format An \code{R6Class} generator object
#' @field id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserComplianceSchemaUser <- R6::R6Class(
  "UserComplianceSchemaUser",
  public = list(
    `id` = NULL,
    #' Initialize a new UserComplianceSchemaUser class.
    #'
    #' @description
    #' Initialize a new UserComplianceSchemaUser class.
    #'
    #' @param id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `id`, ...
    ) {
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserComplianceSchemaUser in JSON format
    #' @export
    toJSON = function() {
      UserComplianceSchemaUserObject <- list()
      if (!is.null(self$`id`)) {
        UserComplianceSchemaUserObject[["id"]] <-
          self$`id`
      }

      UserComplianceSchemaUserObject
    },
    #' Deserialize JSON string into an instance of UserComplianceSchemaUser
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserComplianceSchemaUser
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserComplianceSchemaUser
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserComplianceSchemaUser in JSON format
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UserComplianceSchemaUser
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserComplianceSchemaUser
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserComplianceSchemaUser
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self
    },
    #' Validate JSON input with respect to UserComplianceSchemaUser
    #'
    #' @description
    #' Validate JSON input with respect to UserComplianceSchemaUser and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        stopifnot(is.character(input_json$`id`), length(input_json$`id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserComplianceSchemaUser: the required field `id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserComplianceSchemaUser
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

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
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

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      invalid_fields
    }
  )
)

