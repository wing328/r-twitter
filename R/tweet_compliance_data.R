#' @docType class
#' @title TweetComplianceData
#'
#' @description TweetComplianceData Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetComplianceData <- R6::R6Class(
  "TweetComplianceData",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("TweetDeleteComplianceSchema", "TweetDropComplianceSchema", "TweetUndropComplianceSchema", "TweetWithheldComplianceSchema"),
    #' Initialize a new TweetComplianceData.
    #'
    #' @description
    #' Initialize a new TweetComplianceData.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "TweetDeleteComplianceSchema", "TweetDropComplianceSchema", "TweetUndropComplianceSchema", "TweetWithheldComplianceSchema"
    #' @export
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "TweetDeleteComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "TweetDeleteComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "TweetDropComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "TweetDropComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "TweetUndropComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "TweetUndropComplianceSchema"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "TweetWithheldComplianceSchema") {
        self$actual_instance <- instance
        self$actual_type <- "TweetWithheldComplianceSchema"
      } else {
        stop(paste("Failed to initialize TweetComplianceData with oneOf schemas TweetDeleteComplianceSchema, TweetDropComplianceSchema, TweetUndropComplianceSchema, TweetWithheldComplianceSchema. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },
    #' Deserialize JSON string into an instance of TweetComplianceData.
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceData.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #' @return An instance of TweetComplianceData.
    #' @export
    fromJSONString = function(input) {
      self$fromJSON(input)
    },
    #' Deserialize JSON string into an instance of TweetComplianceData.
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceData.
    #'
    #' @param input The input JSON.
    #' @return An instance of TweetComplianceData.
    #' @export
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      TweetDeleteComplianceSchema_result <- tryCatch({
          TweetDeleteComplianceSchema$public_methods$validateJSON(input)
          TweetDeleteComplianceSchema_instance <- TweetDeleteComplianceSchema$new()
          instance <- TweetDeleteComplianceSchema_instance$fromJSON(input)
          instance_type <- "TweetDeleteComplianceSchema"
          matched_schemas <- append(matched_schemas, "TweetDeleteComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(TweetDeleteComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, TweetDeleteComplianceSchema_result["message"])
      }

      TweetWithheldComplianceSchema_result <- tryCatch({
          TweetWithheldComplianceSchema$public_methods$validateJSON(input)
          TweetWithheldComplianceSchema_instance <- TweetWithheldComplianceSchema$new()
          instance <- TweetWithheldComplianceSchema_instance$fromJSON(input)
          instance_type <- "TweetWithheldComplianceSchema"
          matched_schemas <- append(matched_schemas, "TweetWithheldComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(TweetWithheldComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, TweetWithheldComplianceSchema_result["message"])
      }

      TweetDropComplianceSchema_result <- tryCatch({
          TweetDropComplianceSchema$public_methods$validateJSON(input)
          TweetDropComplianceSchema_instance <- TweetDropComplianceSchema$new()
          instance <- TweetDropComplianceSchema_instance$fromJSON(input)
          instance_type <- "TweetDropComplianceSchema"
          matched_schemas <- append(matched_schemas, "TweetDropComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(TweetDropComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, TweetDropComplianceSchema_result["message"])
      }

      TweetUndropComplianceSchema_result <- tryCatch({
          TweetUndropComplianceSchema$public_methods$validateJSON(input)
          TweetUndropComplianceSchema_instance <- TweetUndropComplianceSchema$new()
          instance <- TweetUndropComplianceSchema_instance$fromJSON(input)
          instance_type <- "TweetUndropComplianceSchema"
          matched_schemas <- append(matched_schemas, "TweetUndropComplianceSchema")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(TweetUndropComplianceSchema_result["error"])) {
        error_messages <- append(error_messages, TweetUndropComplianceSchema_result["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop("Multiple matches found when deserializing the payload into TweetComplianceData with oneOf schemas TweetDeleteComplianceSchema, TweetDropComplianceSchema, TweetUndropComplianceSchema, TweetWithheldComplianceSchema.")
      } else {
        # no match
        stop(paste("No match found when deserializing the payload into TweetComplianceData with oneOf schemas TweetDeleteComplianceSchema, TweetDropComplianceSchema, TweetUndropComplianceSchema, TweetWithheldComplianceSchema. Details: ",
                   paste(error_messages, collapse = ", ")))
      }

      self
    },
    #' Serialize TweetComplianceData to JSON string.
    #'
    #' @description
    #' Serialize TweetComplianceData to JSON string.
    #'
    #' @return JSON string representation of the TweetComplianceData.
    #' @export
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },
    #' Serialize TweetComplianceData to JSON.
    #'
    #' @description
    #' Serialize TweetComplianceData to JSON.
    #'
    #' @return JSON representation of the TweetComplianceData.
    #' @export
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },
    #' Validate the input JSON with respect to TweetComplianceData.
    #'
    #' @description
    #' Validate the input JSON with respect to TweetComplianceData and
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
  )
)
