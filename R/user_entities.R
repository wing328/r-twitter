#' Create a new UserEntities
#'
#' @description
#' A list of metadata found in the User's profile description.
#'
#' @docType class
#' @title UserEntities
#' @description UserEntities Class
#' @format An \code{R6Class} generator object
#' @field description  \link{FullTextEntities} [optional]
#' @field url  \link{UserEntitiesUrl} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserEntities <- R6::R6Class(
  "UserEntities",
  public = list(
    `description` = NULL,
    `url` = NULL,
    #' Initialize a new UserEntities class.
    #'
    #' @description
    #' Initialize a new UserEntities class.
    #'
    #' @param description description
    #' @param url url
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `description` = NULL, `url` = NULL, ...
    ) {
      if (!is.null(`description`)) {
        stopifnot(R6::is.R6(`description`))
        self$`description` <- `description`
      }
      if (!is.null(`url`)) {
        stopifnot(R6::is.R6(`url`))
        self$`url` <- `url`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserEntities in JSON format
    #' @export
    toJSON = function() {
      UserEntitiesObject <- list()
      if (!is.null(self$`description`)) {
        UserEntitiesObject[["description"]] <-
          self$`description`$toJSON()
      }
      if (!is.null(self$`url`)) {
        UserEntitiesObject[["url"]] <-
          self$`url`$toJSON()
      }

      UserEntitiesObject
    },
    #' Deserialize JSON string into an instance of UserEntities
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserEntities
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserEntities
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        description_object <- FullTextEntities$new()
        description_object$fromJSON(jsonlite::toJSON(this_object$description, auto_unbox = TRUE, digits = NA))
        self$`description` <- description_object
      }
      if (!is.null(this_object$`url`)) {
        url_object <- UserEntitiesUrl$new()
        url_object$fromJSON(jsonlite::toJSON(this_object$url, auto_unbox = TRUE, digits = NA))
        self$`url` <- url_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserEntities in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
          %s
          ',
          jsonlite::toJSON(self$`description`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
          %s
          ',
          jsonlite::toJSON(self$`url`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UserEntities
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserEntities
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserEntities
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- FullTextEntities$new()$fromJSON(jsonlite::toJSON(this_object$description, auto_unbox = TRUE, digits = NA))
      self$`url` <- UserEntitiesUrl$new()$fromJSON(jsonlite::toJSON(this_object$url, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to UserEntities
    #'
    #' @description
    #' Validate JSON input with respect to UserEntities and throw an exception if invalid
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
    #' @return String representation of UserEntities
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
    }
  )
)

