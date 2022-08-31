#' Create a new Expansions
#'
#' @description
#' Expansions Class
#'
#' @docType class
#' @title Expansions
#' @description Expansions Class
#' @format An \code{R6Class} generator object
#' @field media  list(\link{Media}) [optional]
#' @field places  list(\link{Place}) [optional]
#' @field polls  list(\link{Poll}) [optional]
#' @field topics  list(\link{Topic}) [optional]
#' @field tweets  list(\link{Tweet}) [optional]
#' @field users  list(\link{User}) [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Expansions <- R6::R6Class(
  "Expansions",
  public = list(
    `media` = NULL,
    `places` = NULL,
    `polls` = NULL,
    `topics` = NULL,
    `tweets` = NULL,
    `users` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new Expansions class.
    #'
    #' @description
    #' Initialize a new Expansions class.
    #'
    #' @param media media
    #' @param places places
    #' @param polls polls
    #' @param topics topics
    #' @param tweets tweets
    #' @param users users
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `media` = NULL, `places` = NULL, `polls` = NULL, `topics` = NULL, `tweets` = NULL, `users` = NULL, additional_properties = NULL, ...
    ) {
      if (!is.null(`media`)) {
        stopifnot(is.vector(`media`), length(`media`) != 0)
        sapply(`media`, function(x) stopifnot(R6::is.R6(x)))
        self$`media` <- `media`
      }
      if (!is.null(`places`)) {
        stopifnot(is.vector(`places`), length(`places`) != 0)
        sapply(`places`, function(x) stopifnot(R6::is.R6(x)))
        self$`places` <- `places`
      }
      if (!is.null(`polls`)) {
        stopifnot(is.vector(`polls`), length(`polls`) != 0)
        sapply(`polls`, function(x) stopifnot(R6::is.R6(x)))
        self$`polls` <- `polls`
      }
      if (!is.null(`topics`)) {
        stopifnot(is.vector(`topics`), length(`topics`) != 0)
        sapply(`topics`, function(x) stopifnot(R6::is.R6(x)))
        self$`topics` <- `topics`
      }
      if (!is.null(`tweets`)) {
        stopifnot(is.vector(`tweets`), length(`tweets`) != 0)
        sapply(`tweets`, function(x) stopifnot(R6::is.R6(x)))
        self$`tweets` <- `tweets`
      }
      if (!is.null(`users`)) {
        stopifnot(is.vector(`users`), length(`users`) != 0)
        sapply(`users`, function(x) stopifnot(R6::is.R6(x)))
        self$`users` <- `users`
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
    #' @return Expansions in JSON format
    #' @export
    toJSON = function() {
      ExpansionsObject <- list()
      if (!is.null(self$`media`)) {
        ExpansionsObject[["media"]] <-
          lapply(self$`media`, function(x) x$toJSON())
      }
      if (!is.null(self$`places`)) {
        ExpansionsObject[["places"]] <-
          lapply(self$`places`, function(x) x$toJSON())
      }
      if (!is.null(self$`polls`)) {
        ExpansionsObject[["polls"]] <-
          lapply(self$`polls`, function(x) x$toJSON())
      }
      if (!is.null(self$`topics`)) {
        ExpansionsObject[["topics"]] <-
          lapply(self$`topics`, function(x) x$toJSON())
      }
      if (!is.null(self$`tweets`)) {
        ExpansionsObject[["tweets"]] <-
          lapply(self$`tweets`, function(x) x$toJSON())
      }
      if (!is.null(self$`users`)) {
        ExpansionsObject[["users"]] <-
          lapply(self$`users`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        ExpansionsObject[[key]] <- self$additional_properties[[key]]
      }

      ExpansionsObject
    },
    #' Deserialize JSON string into an instance of Expansions
    #'
    #' @description
    #' Deserialize JSON string into an instance of Expansions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Expansions
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`media`)) {
        self$`media` <- ApiClient$new()$deserializeObj(this_object$`media`, "array[Media]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`places`)) {
        self$`places` <- ApiClient$new()$deserializeObj(this_object$`places`, "array[Place]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`polls`)) {
        self$`polls` <- ApiClient$new()$deserializeObj(this_object$`polls`, "array[Poll]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`topics`)) {
        self$`topics` <- ApiClient$new()$deserializeObj(this_object$`topics`, "array[Topic]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`tweets`)) {
        self$`tweets` <- ApiClient$new()$deserializeObj(this_object$`tweets`, "array[Tweet]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`users`)) {
        self$`users` <- ApiClient$new()$deserializeObj(this_object$`users`, "array[User]", loadNamespace("twitter"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Expansions in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`media`)) {
          sprintf(
          '"media":
          [%s]
',
          paste(sapply(self$`media`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`places`)) {
          sprintf(
          '"places":
          [%s]
',
          paste(sapply(self$`places`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`polls`)) {
          sprintf(
          '"polls":
          [%s]
',
          paste(sapply(self$`polls`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`topics`)) {
          sprintf(
          '"topics":
          [%s]
',
          paste(sapply(self$`topics`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`tweets`)) {
          sprintf(
          '"tweets":
          [%s]
',
          paste(sapply(self$`tweets`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`users`)) {
          sprintf(
          '"users":
          [%s]
',
          paste(sapply(self$`users`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of Expansions
    #'
    #' @description
    #' Deserialize JSON string into an instance of Expansions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Expansions
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`media` <- ApiClient$new()$deserializeObj(this_object$`media`, "array[Media]", loadNamespace("twitter"))
      self$`places` <- ApiClient$new()$deserializeObj(this_object$`places`, "array[Place]", loadNamespace("twitter"))
      self$`polls` <- ApiClient$new()$deserializeObj(this_object$`polls`, "array[Poll]", loadNamespace("twitter"))
      self$`topics` <- ApiClient$new()$deserializeObj(this_object$`topics`, "array[Topic]", loadNamespace("twitter"))
      self$`tweets` <- ApiClient$new()$deserializeObj(this_object$`tweets`, "array[Tweet]", loadNamespace("twitter"))
      self$`users` <- ApiClient$new()$deserializeObj(this_object$`users`, "array[User]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to Expansions
    #'
    #' @description
    #' Validate JSON input with respect to Expansions and throw an exception if invalid
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
    #' @return String representation of Expansions
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
      if (length(self$`media`) < 1) {
        return(FALSE)
      }

      if (length(self$`places`) < 1) {
        return(FALSE)
      }

      if (length(self$`polls`) < 1) {
        return(FALSE)
      }

      if (length(self$`topics`) < 1) {
        return(FALSE)
      }

      if (length(self$`tweets`) < 1) {
        return(FALSE)
      }

      if (length(self$`users`) < 1) {
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
      if (length(self$`media`) < 1) {
        invalid_fields["media"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`places`) < 1) {
        invalid_fields["places"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`polls`) < 1) {
        invalid_fields["polls"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`topics`) < 1) {
        invalid_fields["topics"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`tweets`) < 1) {
        invalid_fields["tweets"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`users`) < 1) {
        invalid_fields["users"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
Expansions$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
Expansions$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
Expansions$lock()

