#' Create a new RulesLookupResponse
#'
#' @description
#' RulesLookupResponse Class
#'
#' @docType class
#' @title RulesLookupResponse
#' @description RulesLookupResponse Class
#' @format An \code{R6Class} generator object
#' @field data  list(\link{Rule}) [optional]
#' @field meta  \link{RulesResponseMetadata}
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RulesLookupResponse <- R6::R6Class(
  "RulesLookupResponse",
  public = list(
    `data` = NULL,
    `meta` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new RulesLookupResponse class.
    #'
    #' @description
    #' Initialize a new RulesLookupResponse class.
    #'
    #' @param meta meta
    #' @param data data
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `meta`, `data` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`meta`)) {
        stopifnot(R6::is.R6(`meta`))
        self$`meta` <- `meta`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return RulesLookupResponse in JSON format
    #' @export
    toJSON = function() {
      RulesLookupResponseObject <- list()
      if (!is.null(self$`data`)) {
        RulesLookupResponseObject[["data"]] <-
          lapply(self$`data`, function(x) x$toJSON())
      }
      if (!is.null(self$`meta`)) {
        RulesLookupResponseObject[["meta"]] <-
          self$`meta`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        RulesLookupResponseObject[[key]] <- self$additional_properties[[key]]
      }

      RulesLookupResponseObject
    },
    #' Deserialize JSON string into an instance of RulesLookupResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesLookupResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesLookupResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[Rule]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`meta`)) {
        meta_object <- RulesResponseMetadata$new()
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
    #' @return RulesLookupResponse in JSON format
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
    #' Deserialize JSON string into an instance of RulesLookupResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesLookupResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesLookupResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[Rule]", loadNamespace("twitter"))
      self$`meta` <- RulesResponseMetadata$new()$fromJSON(jsonlite::toJSON(this_object$meta, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to RulesLookupResponse
    #'
    #' @description
    #' Validate JSON input with respect to RulesLookupResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `meta`
      if (!is.null(input_json$`meta`)) {
        stopifnot(R6::is.R6(input_json$`meta`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesLookupResponse: the required field `meta` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RulesLookupResponse
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
      # check if the required `meta` is null
      if (is.null(self$`meta`)) {
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
      # check if the required `meta` is null
      if (is.null(self$`meta`)) {
        invalid_fields["meta"] <- "Non-nullable required field `meta` cannot be null."
      }

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
RulesLookupResponse$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
RulesLookupResponse$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
RulesLookupResponse$lock()

