#' Create a new FullTextEntities
#'
#' @description
#' FullTextEntities Class
#'
#' @docType class
#' @title FullTextEntities
#' @description FullTextEntities Class
#' @format An \code{R6Class} generator object
#' @field annotations  list(\link{FullTextEntitiesAnnotationsInner}) [optional]
#' @field cashtags  list(\link{CashtagEntity}) [optional]
#' @field hashtags  list(\link{HashtagEntity}) [optional]
#' @field mentions  list(\link{MentionEntity}) [optional]
#' @field urls  list(\link{UrlEntity}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FullTextEntities <- R6::R6Class(
  "FullTextEntities",
  public = list(
    `annotations` = NULL,
    `cashtags` = NULL,
    `hashtags` = NULL,
    `mentions` = NULL,
    `urls` = NULL,
    #' Initialize a new FullTextEntities class.
    #'
    #' @description
    #' Initialize a new FullTextEntities class.
    #'
    #' @param annotations annotations
    #' @param cashtags cashtags
    #' @param hashtags hashtags
    #' @param mentions mentions
    #' @param urls urls
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `annotations` = NULL, `cashtags` = NULL, `hashtags` = NULL, `mentions` = NULL, `urls` = NULL, ...
    ) {
      if (!is.null(`annotations`)) {
        stopifnot(is.vector(`annotations`), length(`annotations`) != 0)
        sapply(`annotations`, function(x) stopifnot(R6::is.R6(x)))
        self$`annotations` <- `annotations`
      }
      if (!is.null(`cashtags`)) {
        stopifnot(is.vector(`cashtags`), length(`cashtags`) != 0)
        sapply(`cashtags`, function(x) stopifnot(R6::is.R6(x)))
        self$`cashtags` <- `cashtags`
      }
      if (!is.null(`hashtags`)) {
        stopifnot(is.vector(`hashtags`), length(`hashtags`) != 0)
        sapply(`hashtags`, function(x) stopifnot(R6::is.R6(x)))
        self$`hashtags` <- `hashtags`
      }
      if (!is.null(`mentions`)) {
        stopifnot(is.vector(`mentions`), length(`mentions`) != 0)
        sapply(`mentions`, function(x) stopifnot(R6::is.R6(x)))
        self$`mentions` <- `mentions`
      }
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
    #' @return FullTextEntities in JSON format
    #' @export
    toJSON = function() {
      FullTextEntitiesObject <- list()
      if (!is.null(self$`annotations`)) {
        FullTextEntitiesObject[["annotations"]] <-
          lapply(self$`annotations`, function(x) x$toJSON())
      }
      if (!is.null(self$`cashtags`)) {
        FullTextEntitiesObject[["cashtags"]] <-
          lapply(self$`cashtags`, function(x) x$toJSON())
      }
      if (!is.null(self$`hashtags`)) {
        FullTextEntitiesObject[["hashtags"]] <-
          lapply(self$`hashtags`, function(x) x$toJSON())
      }
      if (!is.null(self$`mentions`)) {
        FullTextEntitiesObject[["mentions"]] <-
          lapply(self$`mentions`, function(x) x$toJSON())
      }
      if (!is.null(self$`urls`)) {
        FullTextEntitiesObject[["urls"]] <-
          lapply(self$`urls`, function(x) x$toJSON())
      }

      FullTextEntitiesObject
    },
    #' Deserialize JSON string into an instance of FullTextEntities
    #'
    #' @description
    #' Deserialize JSON string into an instance of FullTextEntities
    #'
    #' @param input_json the JSON input
    #' @return the instance of FullTextEntities
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`annotations`)) {
        self$`annotations` <- ApiClient$new()$deserializeObj(this_object$`annotations`, "array[FullTextEntitiesAnnotationsInner]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`cashtags`)) {
        self$`cashtags` <- ApiClient$new()$deserializeObj(this_object$`cashtags`, "array[CashtagEntity]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`hashtags`)) {
        self$`hashtags` <- ApiClient$new()$deserializeObj(this_object$`hashtags`, "array[HashtagEntity]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- ApiClient$new()$deserializeObj(this_object$`mentions`, "array[MentionEntity]", loadNamespace("twitter"))
      }
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
    #' @return FullTextEntities in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`annotations`)) {
          sprintf(
          '"annotations":
          [%s]
',
          paste(sapply(self$`annotations`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`cashtags`)) {
          sprintf(
          '"cashtags":
          [%s]
',
          paste(sapply(self$`cashtags`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`hashtags`)) {
          sprintf(
          '"hashtags":
          [%s]
',
          paste(sapply(self$`hashtags`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`mentions`)) {
          sprintf(
          '"mentions":
          [%s]
',
          paste(sapply(self$`mentions`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
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
    #' Deserialize JSON string into an instance of FullTextEntities
    #'
    #' @description
    #' Deserialize JSON string into an instance of FullTextEntities
    #'
    #' @param input_json the JSON input
    #' @return the instance of FullTextEntities
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`annotations` <- ApiClient$new()$deserializeObj(this_object$`annotations`, "array[FullTextEntitiesAnnotationsInner]", loadNamespace("twitter"))
      self$`cashtags` <- ApiClient$new()$deserializeObj(this_object$`cashtags`, "array[CashtagEntity]", loadNamespace("twitter"))
      self$`hashtags` <- ApiClient$new()$deserializeObj(this_object$`hashtags`, "array[HashtagEntity]", loadNamespace("twitter"))
      self$`mentions` <- ApiClient$new()$deserializeObj(this_object$`mentions`, "array[MentionEntity]", loadNamespace("twitter"))
      self$`urls` <- ApiClient$new()$deserializeObj(this_object$`urls`, "array[UrlEntity]", loadNamespace("twitter"))
      self
    },
    #' Validate JSON input with respect to FullTextEntities
    #'
    #' @description
    #' Validate JSON input with respect to FullTextEntities and throw an exception if invalid
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
    #' @return String representation of FullTextEntities
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
      if (length(self$`annotations`) < 1) {
        return(FALSE)
      }

      if (length(self$`cashtags`) < 1) {
        return(FALSE)
      }

      if (length(self$`hashtags`) < 1) {
        return(FALSE)
      }

      if (length(self$`mentions`) < 1) {
        return(FALSE)
      }

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
      if (length(self$`annotations`) < 1) {
        invalid_fields["annotations"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`cashtags`) < 1) {
        invalid_fields["cashtags"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`hashtags`) < 1) {
        invalid_fields["hashtags"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`mentions`) < 1) {
        invalid_fields["mentions"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      if (length(self$`urls`) < 1) {
        invalid_fields["urls"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
FullTextEntities$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
FullTextEntities$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
FullTextEntities$lock()

