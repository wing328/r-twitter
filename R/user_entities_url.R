#' Create a new UserEntitiesUrl
#'
#' @description
#' Expanded details for the URL specified in the User's profile, with start and end indices.
#'
#' @docType class
#' @title UserEntitiesUrl
#' @description UserEntitiesUrl Class
#' @format An \code{R6Class} generator object
#' @field urls  list(\link{UrlEntity}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserEntitiesUrl <- R6::R6Class(
  "UserEntitiesUrl",
  public = list(
    `urls` = NULL,
    #' Initialize a new UserEntitiesUrl class.
    #'
    #' @description
    #' Initialize a new UserEntitiesUrl class.
    #'
    #' @param urls urls
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `urls` = NULL, ...
    ) {
      if (!is.null(`urls`)) {
        stopifnot(is.vector(`urls`), length(`urls`) != 0)
        sapply(`urls`, function(x) stopifnot(R6::is.R6(x)))
        self$`urls` <- `urls`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserEntitiesUrl in JSON format
    #' @export
    toJSON = function() {
      UserEntitiesUrlObject <- list()
      if (!is.null(self$`urls`)) {
        UserEntitiesUrlObject[["urls"]] <-
          lapply(self$`urls`, function(x) x$toJSON())
      }

      UserEntitiesUrlObject
    },
    #' Deserialize JSON string into an instance of UserEntitiesUrl
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserEntitiesUrl
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserEntitiesUrl
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`urls`)) {
        self$`urls` <- ApiClient$new()$deserializeObj(this_object$`urls`, "array[UrlEntity]", loadNamespace("twitter"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UserEntitiesUrl in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`urls`)) {
          sprintf(
          '"urls":
          [%s]
',
          paste(sapply(self$`urls`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of UserEntitiesUrl
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserEntitiesUrl
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserEntitiesUrl
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`urls` <- ApiClient$new()$deserializeObj(this_object$`urls`, "array[UrlEntity]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to UserEntitiesUrl
    #'
    #' @description
    #' Validate JSON input with respect to UserEntitiesUrl and throw an exception if invalid
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
    #' @return String representation of UserEntitiesUrl
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
      if (length(self$`urls`) < 1) {
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
      if (length(self$`urls`) < 1) {
        invalid_fields["urls"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      invalid_fields
    }
  )
)

