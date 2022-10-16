#' Create a new Get2TweetsCountsRecentResponse
#'
#' @description
#' Get2TweetsCountsRecentResponse Class
#'
#' @docType class
#' @title Get2TweetsCountsRecentResponse
#' @description Get2TweetsCountsRecentResponse Class
#' @format An \code{R6Class} generator object
#' @field data  list(\link{SearchCount}) [optional]
#' @field errors  list(\link{Problem}) [optional]
#' @field meta  \link{Get2TweetsCountsAllResponseMeta} [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Get2TweetsCountsRecentResponse <- R6::R6Class(
  "Get2TweetsCountsRecentResponse",
  public = list(
    `data` = NULL,
    `errors` = NULL,
    `meta` = NULL,
    `_field_list` = c("data", "errors", "meta"),
    `additional_properties` = list(),
    #' Initialize a new Get2TweetsCountsRecentResponse class.
    #'
    #' @description
    #' Initialize a new Get2TweetsCountsRecentResponse class.
    #'
    #' @param data data
    #' @param errors errors
    #' @param meta meta
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`data` = NULL, `errors` = NULL, `meta` = NULL, additional_properties = NULL, ...) {
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
      if (!is.null(`meta`)) {
        stopifnot(R6::is.R6(`meta`))
        self$`meta` <- `meta`
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
    #' @return Get2TweetsCountsRecentResponse in JSON format
    #' @export
    toJSON = function() {
      Get2TweetsCountsRecentResponseObject <- list()
      if (!is.null(self$`data`)) {
        Get2TweetsCountsRecentResponseObject[["data"]] <-
          lapply(self$`data`, function(x) x$toJSON())
      }
      if (!is.null(self$`errors`)) {
        Get2TweetsCountsRecentResponseObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      if (!is.null(self$`meta`)) {
        Get2TweetsCountsRecentResponseObject[["meta"]] <-
          self$`meta`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        Get2TweetsCountsRecentResponseObject[[key]] <- self$additional_properties[[key]]
      }

      Get2TweetsCountsRecentResponseObject
    },
    #' Deserialize JSON string into an instance of Get2TweetsCountsRecentResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2TweetsCountsRecentResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2TweetsCountsRecentResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[SearchCount]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`meta`)) {
        meta_object <- Get2TweetsCountsAllResponseMeta$new()
        meta_object$fromJSON(jsonlite::toJSON(this_object$meta, auto_unbox = TRUE, digits = NA))
        self$`meta` <- meta_object
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
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
    #' @return Get2TweetsCountsRecentResponse in JSON format
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
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
      json_obj <- jsonlite::fromJSON(json_string)
      for (key in names(self$additional_properties)) {
        json_obj[[key]] <- self$additional_properties[[key]]
      }
      json_string <- as.character(jsonlite::minify(jsonlite::toJSON(json_obj, auto_unbox = TRUE, digits = NA)))
    },
    #' Deserialize JSON string into an instance of Get2TweetsCountsRecentResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2TweetsCountsRecentResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2TweetsCountsRecentResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[SearchCount]", loadNamespace("twitter"))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      self$`meta` <- Get2TweetsCountsAllResponseMeta$new()$fromJSON(jsonlite::toJSON(this_object$meta, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Get2TweetsCountsRecentResponse
    #'
    #' @description
    #' Validate JSON input with respect to Get2TweetsCountsRecentResponse and throw an exception if invalid
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
    #' @return String representation of Get2TweetsCountsRecentResponse
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
# Get2TweetsCountsRecentResponse$unlock()
#
## Below is an example to define the print fnuction
# Get2TweetsCountsRecentResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Get2TweetsCountsRecentResponse$lock()
