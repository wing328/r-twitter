#' Create a new Get2UsersIdFollowersResponse
#'
#' @description
#' Get2UsersIdFollowersResponse Class
#'
#' @docType class
#' @title Get2UsersIdFollowersResponse
#' @description Get2UsersIdFollowersResponse Class
#' @format An \code{R6Class} generator object
#' @field data  list(\link{User}) [optional]
#' @field errors  list(\link{Problem}) [optional]
#' @field includes  \link{Expansions} [optional]
#' @field meta  \link{Get2ListsIdFollowersResponseMeta} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Get2UsersIdFollowersResponse <- R6::R6Class(
  "Get2UsersIdFollowersResponse",
  public = list(
    `data` = NULL,
    `errors` = NULL,
    `includes` = NULL,
    `meta` = NULL,
    #' Initialize a new Get2UsersIdFollowersResponse class.
    #'
    #' @description
    #' Initialize a new Get2UsersIdFollowersResponse class.
    #'
    #' @param data data
    #' @param errors errors
    #' @param includes includes
    #' @param meta meta
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `data` = NULL, `errors` = NULL, `includes` = NULL, `meta` = NULL, ...
    ) {
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
      }
      if (!is.null(`includes`)) {
        stopifnot(R6::is.R6(`includes`))
        self$`includes` <- `includes`
      }
      if (!is.null(`meta`)) {
        stopifnot(R6::is.R6(`meta`))
        self$`meta` <- `meta`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Get2UsersIdFollowersResponse in JSON format
    #' @export
    toJSON = function() {
      Get2UsersIdFollowersResponseObject <- list()
      if (!is.null(self$`data`)) {
        Get2UsersIdFollowersResponseObject[["data"]] <-
          lapply(self$`data`, function(x) x$toJSON())
      }
      if (!is.null(self$`errors`)) {
        Get2UsersIdFollowersResponseObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      if (!is.null(self$`includes`)) {
        Get2UsersIdFollowersResponseObject[["includes"]] <-
          self$`includes`$toJSON()
      }
      if (!is.null(self$`meta`)) {
        Get2UsersIdFollowersResponseObject[["meta"]] <-
          self$`meta`$toJSON()
      }

      Get2UsersIdFollowersResponseObject
    },
    #' Deserialize JSON string into an instance of Get2UsersIdFollowersResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2UsersIdFollowersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2UsersIdFollowersResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[User]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`includes`)) {
        includes_object <- Expansions$new()
        includes_object$fromJSON(jsonlite::toJSON(this_object$includes, auto_unbox = TRUE, digits = NA))
        self$`includes` <- includes_object
      }
      if (!is.null(this_object$`meta`)) {
        meta_object <- Get2ListsIdFollowersResponseMeta$new()
        meta_object$fromJSON(jsonlite::toJSON(this_object$meta, auto_unbox = TRUE, digits = NA))
        self$`meta` <- meta_object
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Get2UsersIdFollowersResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`data`)) {
          sprintf(
          '"data":
          [%s]
',
          paste(sapply(self$`data`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`errors`)) {
          sprintf(
          '"errors":
          [%s]
',
          paste(sapply(self$`errors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`includes`)) {
          sprintf(
          '"includes":
          %s
          ',
          jsonlite::toJSON(self$`includes`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`meta`)) {
          sprintf(
          '"meta":
          %s
          ',
          jsonlite::toJSON(self$`meta`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Get2UsersIdFollowersResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2UsersIdFollowersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2UsersIdFollowersResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[User]", loadNamespace("twitter"))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      self$`includes` <- Expansions$new()$fromJSON(jsonlite::toJSON(this_object$includes, auto_unbox = TRUE, digits = NA))
      self$`meta` <- Get2ListsIdFollowersResponseMeta$new()$fromJSON(jsonlite::toJSON(this_object$meta, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to Get2UsersIdFollowersResponse
    #'
    #' @description
    #' Validate JSON input with respect to Get2UsersIdFollowersResponse and throw an exception if invalid
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
    #' @return String representation of Get2UsersIdFollowersResponse
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
      if (length(self$`data`) < 1) {
        return(FALSE)
      }

      if (length(self$`errors`) < 1) {
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
      if (length(self$`data`) < 1) {
        invalid_fields["data"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`errors`) < 1) {
        invalid_fields["errors"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
Get2UsersIdFollowersResponse$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
Get2UsersIdFollowersResponse$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
Get2UsersIdFollowersResponse$lock()

