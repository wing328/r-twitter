#' Create a new ListCreateRequest
#'
#' @description
#' ListCreateRequest Class
#'
#' @docType class
#' @title ListCreateRequest
#' @description ListCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field name  character
#' @field item_private  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListCreateRequest <- R6::R6Class(
  "ListCreateRequest",
  public = list(
    `description` = NULL,
    `name` = NULL,
    `item_private` = NULL,
    #' Initialize a new ListCreateRequest class.
    #'
    #' @description
    #' Initialize a new ListCreateRequest class.
    #'
    #' @param name name
    #' @param description description
    #' @param item_private item_private. Default to FALSE.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `name`, `description` = NULL, `item_private` = FALSE, ...
    ) {
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!is.null(`item_private`)) {
        stopifnot(is.logical(`item_private`), length(`item_private`) == 1)
        self$`item_private` <- `item_private`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ListCreateRequest in JSON format
    #' @export
    toJSON = function() {
      ListCreateRequestObject <- list()
      if (!is.null(self$`description`)) {
        ListCreateRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`name`)) {
        ListCreateRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`item_private`)) {
        ListCreateRequestObject[["private"]] <-
          self$`item_private`
      }

      ListCreateRequestObject
    },
    #' Deserialize JSON string into an instance of ListCreateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListCreateRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`private`)) {
        self$`item_private` <- this_object$`private`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ListCreateRequest in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`item_private`)) {
          sprintf(
          '"private":
            %s
                    ',
          tolower(self$`item_private`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ListCreateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListCreateRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`item_private` <- this_object$`item_private`
      self
    },
    #' Validate JSON input with respect to ListCreateRequest
    #'
    #' @description
    #' Validate JSON input with respect to ListCreateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        stopifnot(is.character(input_json$`name`), length(input_json$`name`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ListCreateRequest: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ListCreateRequest
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
      if (nchar(self$`description`) > 100) {
        return(FALSE)
      }
      if (nchar(self$`description`) < 0) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 25) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 1) {
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
      if (nchar(self$`description`) > 100) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 100."
      }
      if (nchar(self$`description`) < 0) {
        invalid_fields["description"] <- "Invalid length for `description`, must be bigger than or equal to 0."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 25) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 25."
      }
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
ListCreateRequest$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
ListCreateRequest$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
ListCreateRequest$lock()

