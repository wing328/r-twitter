#' Create a new ReportUsersRequest
#'
#' @description
#' ReportUsersRequest Class
#'
#' @docType class
#' @title ReportUsersRequest
#' @description ReportUsersRequest Class
#' @format An \code{R6Class} generator object
#' @field description  character
#' @field user_ids  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportUsersRequest <- R6::R6Class(
  "ReportUsersRequest",
  public = list(
    `description` = NULL,
    `user_ids` = NULL,
    #' Initialize a new ReportUsersRequest class.
    #'
    #' @description
    #' Initialize a new ReportUsersRequest class.
    #'
    #' @param description description
    #' @param user_ids user_ids
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`description`, `user_ids`, ...) {
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`user_ids`)) {
        stopifnot(is.vector(`user_ids`), length(`user_ids`) != 0)
        sapply(`user_ids`, function(x) stopifnot(is.character(x)))
        self$`user_ids` <- `user_ids`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ReportUsersRequest in JSON format
    #' @export
    toJSON = function() {
      ReportUsersRequestObject <- list()
      if (!is.null(self$`description`)) {
        ReportUsersRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`user_ids`)) {
        ReportUsersRequestObject[["user_ids"]] <-
          self$`user_ids`
      }
      ReportUsersRequestObject
    },
    #' Deserialize JSON string into an instance of ReportUsersRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of ReportUsersRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportUsersRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`user_ids`)) {
        self$`user_ids` <- ApiClient$new()$deserializeObj(this_object$`user_ids`, "array[character]", loadNamespace("twitter"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ReportUsersRequest in JSON format
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
        if (!is.null(self$`user_ids`)) {
          sprintf(
            '"user_ids":
             [%s]
          ',
            paste(unlist(lapply(self$`user_ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ReportUsersRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of ReportUsersRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportUsersRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`user_ids` <- ApiClient$new()$deserializeObj(this_object$`user_ids`, "array[character]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to ReportUsersRequest
    #'
    #' @description
    #' Validate JSON input with respect to ReportUsersRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReportUsersRequest: the required field `description` is missing."))
      }
      # check the required field `user_ids`
      if (!is.null(input_json$`user_ids`)) {
        stopifnot(is.vector(input_json$`user_ids`), length(input_json$`user_ids`) != 0)
        tmp <- sapply(input_json$`user_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReportUsersRequest: the required field `user_ids` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReportUsersRequest
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
      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 5000) {
        return(FALSE)
      }
      if (nchar(self$`description`) < 1) {
        return(FALSE)
      }

      # check if the required `user_ids` is null
      if (is.null(self$`user_ids`)) {
        return(FALSE)
      }

      if (length(self$`user_ids`) > 10000) {
        return(FALSE)
      }
      if (length(self$`user_ids`) < 1) {
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
      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      if (nchar(self$`description`) > 5000) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 5000."
      }
      if (nchar(self$`description`) < 1) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 1."
      }

      # check if the required `user_ids` is null
      if (is.null(self$`user_ids`)) {
        invalid_fields["user_ids"] <- "Non-nullable required field `user_ids` cannot be null."
      }

      if (length(self$`user_ids`) > 10000) {
        invalid_fields["user_ids"] <- "Invalid length for `user_ids`, number of items must be less than or equal to 10000."
      }
      if (length(self$`user_ids`) < 1) {
        invalid_fields["user_ids"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
# ReportUsersRequest$unlock()
#
## Below is an example to define the print fnuction
# ReportUsersRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReportUsersRequest$lock()
