#' @docType class
#' @title RulesRequestSummary
#'
#' @description RulesRequestSummary Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RulesRequestSummary <- R6::R6Class(
  "RulesRequestSummary",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("RulesRequestSummaryOneOf", "RulesRequestSummaryOneOf1"),
    #' Initialize a new RulesRequestSummary.
    #'
    #' @description
    #' Initialize a new RulesRequestSummary.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "RulesRequestSummaryOneOf", "RulesRequestSummaryOneOf1"
    #' @export
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "RulesRequestSummaryOneOf") {
        self$actual_instance <- instance
        self$actual_type <- "RulesRequestSummaryOneOf"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "RulesRequestSummaryOneOf1") {
        self$actual_instance <- instance
        self$actual_type <- "RulesRequestSummaryOneOf1"
      } else {
        stop(paste("Failed to initialize RulesRequestSummary with oneOf schemas RulesRequestSummaryOneOf, RulesRequestSummaryOneOf1. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },
    #' Deserialize JSON string into an instance of RulesRequestSummary.
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesRequestSummary.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #' @return An instance of RulesRequestSummary.
    #' @export
    fromJSONString = function(input) {
      self$fromJSON(input)
    },
    #' Deserialize JSON string into an instance of RulesRequestSummary.
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesRequestSummary.
    #'
    #' @param input The input JSON.
    #' @return An instance of RulesRequestSummary.
    #' @export
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      RulesRequestSummaryOneOf_result <- tryCatch({
          RulesRequestSummaryOneOf$public_methods$validateJSON(input)
          RulesRequestSummaryOneOf_instance <- RulesRequestSummaryOneOf$new()
          instance <- RulesRequestSummaryOneOf_instance$fromJSON(input)
          instance_type <- "RulesRequestSummaryOneOf"
          matched_schemas <- append(matched_schemas, "RulesRequestSummaryOneOf")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(RulesRequestSummaryOneOf_result["error"])) {
        error_messages <- append(error_messages, RulesRequestSummaryOneOf_result["message"])
      }

      RulesRequestSummaryOneOf1_result <- tryCatch({
          RulesRequestSummaryOneOf1$public_methods$validateJSON(input)
          RulesRequestSummaryOneOf1_instance <- RulesRequestSummaryOneOf1$new()
          instance <- RulesRequestSummaryOneOf1_instance$fromJSON(input)
          instance_type <- "RulesRequestSummaryOneOf1"
          matched_schemas <- append(matched_schemas, "RulesRequestSummaryOneOf1")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(RulesRequestSummaryOneOf1_result["error"])) {
        error_messages <- append(error_messages, RulesRequestSummaryOneOf1_result["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop("Multiple matches found when deserializing the payload into RulesRequestSummary with oneOf schemas RulesRequestSummaryOneOf, RulesRequestSummaryOneOf1.")
      } else {
        # no match
        stop(paste("No match found when deserializing the payload into RulesRequestSummary with oneOf schemas RulesRequestSummaryOneOf, RulesRequestSummaryOneOf1. Details: ",
                   paste(error_messages, collapse = ", ")))
      }

      self
    },
    #' Serialize RulesRequestSummary to JSON string.
    #'
    #' @description
    #' Serialize RulesRequestSummary to JSON string.
    #'
    #' @return JSON string representation of the RulesRequestSummary.
    #' @export
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },
    #' Serialize RulesRequestSummary to JSON.
    #'
    #' @description
    #' Serialize RulesRequestSummary to JSON.
    #'
    #' @return JSON representation of the RulesRequestSummary.
    #' @export
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },
    #' Validate the input JSON with respect to RulesRequestSummary.
    #'
    #' @description
    #' Validate the input JSON with respect to RulesRequestSummary and
    #' throw exception if invalid.
    #'
    #' @param input The input JSON.
    #' @export
    validateJSON = function(input) {
      # backup current values
      actual_instance_bak <- self$actual_instance
      actual_type_bak <- self$actual_type

      # if it's not valid, an error will be thrown
      self$fromJSON(input)

      # no error thrown, restore old values
      self$actual_instance <- actual_instance_bak
      self$actual_type <- actual_type_bak
    },
    #' Returns the string representation of the instance.
    #'
    #' @description
    #' Returns the string representation of the instance.
    #'
    #' @return The string representation of the instance.
    #' @export
    toString = function() {
      jsoncontent <- c(
        sprintf('"actual_instance": %s', if (is.null(self$actual_instance)) NULL else self$actual_instance$toJSONString()),
        sprintf('"actual_type": "%s"', self$actual_type),
        sprintf('"one_of": "%s"', paste(unlist(self$one_of), collapse = ", "))
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::prettify(paste("{", jsoncontent, "}", sep = "")))
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
#RulesRequestSummary$unlock()
#
## Below is an example to define the print fnuction
#RulesRequestSummary$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#RulesRequestSummary$lock()

