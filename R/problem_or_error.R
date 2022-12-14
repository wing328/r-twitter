#' @docType class
#' @title ProblemOrError
#'
#' @description ProblemOrError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProblemOrError <- R6::R6Class(
  "ProblemOrError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("Error", "Problem"),
    #' Initialize a new ProblemOrError.
    #'
    #' @description
    #' Initialize a new ProblemOrError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "Error", "Problem"
    #' @export
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname == "Error") {
        self$actual_instance <- instance
        self$actual_type <- "Error"
      } else if (get(class(instance)[[1]], pos = -1)$classname == "Problem") {
        self$actual_instance <- instance
        self$actual_type <- "Problem"
      } else {
        stop(paste(
          "Failed to initialize ProblemOrError with oneOf schemas Error, Problem. Provided class name: ",
          get(class(instance)[[1]], pos = -1)$classname
        ))
      }
    },
    #' Deserialize JSON string into an instance of ProblemOrError.
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProblemOrError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #' @return An instance of ProblemOrError.
    #' @export
    fromJSONString = function(input) {
      self$fromJSON(input)
    },
    #' Deserialize JSON string into an instance of ProblemOrError.
    #'
    #' @description
    #' Deserialize JSON string into an instance of ProblemOrError.
    #'
    #' @param input The input JSON.
    #' @return An instance of ProblemOrError.
    #' @export
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() # names of matched schemas
      error_messages <- list()
      instance <- NULL

      Error_result <- tryCatch(
        {
          Error$public_methods$validateJSON(input)
          Error_instance <- Error$new()
          instance <- Error_instance$fromJSON(input)
          instance_type <- "Error"
          matched_schemas <- append(matched_schemas, "Error")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(Error_result["error"])) {
        error_messages <- append(error_messages, Error_result["message"])
      }

      Problem_result <- tryCatch(
        {
          Problem$public_methods$validateJSON(input)
          Problem_instance <- Problem$new()
          instance <- Problem_instance$fromJSON(input)
          instance_type <- "Problem"
          matched_schemas <- append(matched_schemas, "Problem")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(Problem_result["error"])) {
        error_messages <- append(error_messages, Problem_result["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop("Multiple matches found when deserializing the payload into ProblemOrError with oneOf schemas Error, Problem.")
      } else {
        # no match
        stop(paste(
          "No match found when deserializing the payload into ProblemOrError with oneOf schemas Error, Problem. Details: ",
          paste(error_messages, collapse = ", ")
        ))
      }

      self
    },
    #' Serialize ProblemOrError to JSON string.
    #'
    #' @description
    #' Serialize ProblemOrError to JSON string.
    #'
    #' @return JSON string representation of the ProblemOrError.
    #' @export
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },
    #' Serialize ProblemOrError to JSON.
    #'
    #' @description
    #' Serialize ProblemOrError to JSON.
    #'
    #' @return JSON representation of the ProblemOrError.
    #' @export
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },
    #' Validate the input JSON with respect to ProblemOrError.
    #'
    #' @description
    #' Validate the input JSON with respect to ProblemOrError and
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
# ProblemOrError$unlock()
#
## Below is an example to define the print fnuction
# ProblemOrError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProblemOrError$lock()
