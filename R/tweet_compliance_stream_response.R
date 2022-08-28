#' @docType class
#' @title TweetComplianceStreamResponse
#'
#' @description TweetComplianceStreamResponse Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetComplianceStreamResponse <- R6::R6Class(
  "TweetComplianceStreamResponse",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("TweetComplianceStreamResponseOneOf", "TweetComplianceStreamResponseOneOf1"),
    #' Initialize a new TweetComplianceStreamResponse.
    #'
    #' @description
    #' Initialize a new TweetComplianceStreamResponse.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "TweetComplianceStreamResponseOneOf", "TweetComplianceStreamResponseOneOf1"
    #' @export
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "TweetComplianceStreamResponseOneOf") {
        self$actual_instance <- instance
        self$actual_type <- "TweetComplianceStreamResponseOneOf"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "TweetComplianceStreamResponseOneOf1") {
        self$actual_instance <- instance
        self$actual_type <- "TweetComplianceStreamResponseOneOf1"
      } else {
        stop(paste("Failed to initialize TweetComplianceStreamResponse with oneOf schemas TweetComplianceStreamResponseOneOf, TweetComplianceStreamResponseOneOf1. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponse.
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponse.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #' @return An instance of TweetComplianceStreamResponse.
    #' @export
    fromJSONString = function(input) {
      self$fromJSON(input)
    },
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponse.
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceStreamResponse.
    #'
    #' @param input The input JSON.
    #' @return An instance of TweetComplianceStreamResponse.
    #' @export
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      TweetComplianceStreamResponseOneOf_result <- tryCatch({
          TweetComplianceStreamResponseOneOf$public_methods$validateJSON(input)
          TweetComplianceStreamResponseOneOf_instance <- TweetComplianceStreamResponseOneOf$new()
          instance <- TweetComplianceStreamResponseOneOf_instance$fromJSON(input)
          instance_type <- "TweetComplianceStreamResponseOneOf"
          matched_schemas <- append(matched_schemas, "TweetComplianceStreamResponseOneOf")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(TweetComplianceStreamResponseOneOf_result["error"])) {
        error_messages <- append(error_messages, TweetComplianceStreamResponseOneOf_result["message"])
      }

      TweetComplianceStreamResponseOneOf1_result <- tryCatch({
          TweetComplianceStreamResponseOneOf1$public_methods$validateJSON(input)
          TweetComplianceStreamResponseOneOf1_instance <- TweetComplianceStreamResponseOneOf1$new()
          instance <- TweetComplianceStreamResponseOneOf1_instance$fromJSON(input)
          instance_type <- "TweetComplianceStreamResponseOneOf1"
          matched_schemas <- append(matched_schemas, "TweetComplianceStreamResponseOneOf1")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(TweetComplianceStreamResponseOneOf1_result["error"])) {
        error_messages <- append(error_messages, TweetComplianceStreamResponseOneOf1_result["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop("Multiple matches found when deserializing the payload into TweetComplianceStreamResponse with oneOf schemas TweetComplianceStreamResponseOneOf, TweetComplianceStreamResponseOneOf1.")
      } else {
        # no match
        stop(paste("No match found when deserializing the payload into TweetComplianceStreamResponse with oneOf schemas TweetComplianceStreamResponseOneOf, TweetComplianceStreamResponseOneOf1. Details: ",
                   paste(error_messages, collapse = ", ")))
      }

      self
    },
    #' Serialize TweetComplianceStreamResponse to JSON string.
    #'
    #' @description
    #' Serialize TweetComplianceStreamResponse to JSON string.
    #'
    #' @return JSON string representation of the TweetComplianceStreamResponse.
    #' @export
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },
    #' Serialize TweetComplianceStreamResponse to JSON.
    #'
    #' @description
    #' Serialize TweetComplianceStreamResponse to JSON.
    #'
    #' @return JSON representation of the TweetComplianceStreamResponse.
    #' @export
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },
    #' Validate the input JSON with respect to TweetComplianceStreamResponse.
    #'
    #' @description
    #' Validate the input JSON with respect to TweetComplianceStreamResponse and
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
TweetComplianceStreamResponse$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
TweetComplianceStreamResponse$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
TweetComplianceStreamResponse$lock()

