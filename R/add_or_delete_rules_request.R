#' @docType class
#' @title AddOrDeleteRulesRequest
#'
#' @description AddOrDeleteRulesRequest Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AddOrDeleteRulesRequest <- R6::R6Class(
  "AddOrDeleteRulesRequest",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("AddRulesRequest", "DeleteRulesRequest"),
    #' Initialize a new AddOrDeleteRulesRequest.
    #'
    #' @description
    #' Initialize a new AddOrDeleteRulesRequest.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "AddRulesRequest", "DeleteRulesRequest"
    #' @export
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "AddRulesRequest") {
        self$actual_instance <- instance
        self$actual_type <- "AddRulesRequest"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DeleteRulesRequest") {
        self$actual_instance <- instance
        self$actual_type <- "DeleteRulesRequest"
      } else {
        stop(paste("Failed to initialize AddOrDeleteRulesRequest with oneOf schemas AddRulesRequest, DeleteRulesRequest. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },
    #' Deserialize JSON string into an instance of AddOrDeleteRulesRequest.
    #'
    #' @description
    #' Deserialize JSON string into an instance of AddOrDeleteRulesRequest.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #' @return An instance of AddOrDeleteRulesRequest.
    #' @export
    fromJSONString = function(input) {
      self$fromJSON(input)
    },
    #' Deserialize JSON string into an instance of AddOrDeleteRulesRequest.
    #'
    #' @description
    #' Deserialize JSON string into an instance of AddOrDeleteRulesRequest.
    #'
    #' @param input The input JSON.
    #' @return An instance of AddOrDeleteRulesRequest.
    #' @export
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      AddRulesRequest_result <- tryCatch({
          AddRulesRequest$public_methods$validateJSON(input)
          AddRulesRequest_instance <- AddRulesRequest$new()
          instance <- AddRulesRequest_instance$fromJSON(input)
          instance_type <- "AddRulesRequest"
          matched_schemas <- append(matched_schemas, "AddRulesRequest")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(AddRulesRequest_result["error"])) {
        error_messages <- append(error_messages, AddRulesRequest_result["message"])
      }

      DeleteRulesRequest_result <- tryCatch({
          DeleteRulesRequest$public_methods$validateJSON(input)
          DeleteRulesRequest_instance <- DeleteRulesRequest$new()
          instance <- DeleteRulesRequest_instance$fromJSON(input)
          instance_type <- "DeleteRulesRequest"
          matched_schemas <- append(matched_schemas, "DeleteRulesRequest")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(DeleteRulesRequest_result["error"])) {
        error_messages <- append(error_messages, DeleteRulesRequest_result["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop("Multiple matches found when deserializing the payload into AddOrDeleteRulesRequest with oneOf schemas AddRulesRequest, DeleteRulesRequest.")
      } else {
        # no match
        stop(paste("No match found when deserializing the payload into AddOrDeleteRulesRequest with oneOf schemas AddRulesRequest, DeleteRulesRequest. Details: ",
                   paste(error_messages, collapse = ", ")))
      }

      self
    },
    #' Serialize AddOrDeleteRulesRequest to JSON string.
    #'
    #' @description
    #' Serialize AddOrDeleteRulesRequest to JSON string.
    #'
    #' @return JSON string representation of the AddOrDeleteRulesRequest.
    #' @export
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },
    #' Serialize AddOrDeleteRulesRequest to JSON.
    #'
    #' @description
    #' Serialize AddOrDeleteRulesRequest to JSON.
    #'
    #' @return JSON representation of the AddOrDeleteRulesRequest.
    #' @export
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },
    #' Validate the input JSON with respect to AddOrDeleteRulesRequest.
    #'
    #' @description
    #' Validate the input JSON with respect to AddOrDeleteRulesRequest and
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
#AddOrDeleteRulesRequest$unlock()
#
## Below is an example to define the print fnuction
#AddOrDeleteRulesRequest$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#AddOrDeleteRulesRequest$lock()

