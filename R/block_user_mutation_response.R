#' Create a new BlockUserMutationResponse
#'
#' @description
#' BlockUserMutationResponse Class
#'
#' @docType class
#' @title BlockUserMutationResponse
#' @description BlockUserMutationResponse Class
#' @format An \code{R6Class} generator object
#' @field data  \link{BlockUserMutationResponseData} [optional]
#' @field errors  list(\link{Problem}) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BlockUserMutationResponse <- R6::R6Class(
  "BlockUserMutationResponse",
  public = list(
    `data` = NULL,
    `errors` = NULL,
    `_field_list` = c("data", "errors"),
    `additional_properties` = list(),
    #' Initialize a new BlockUserMutationResponse class.
    #'
    #' @description
    #' Initialize a new BlockUserMutationResponse class.
    #'
    #' @param data data
    #' @param errors errors
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`data` = NULL, `errors` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
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
    #' @return BlockUserMutationResponse in JSON format
    #' @export
    toJSON = function() {
      BlockUserMutationResponseObject <- list()
      if (!is.null(self$`data`)) {
        BlockUserMutationResponseObject[["data"]] <-
          self$`data`$toJSON()
      }
      if (!is.null(self$`errors`)) {
        BlockUserMutationResponseObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        BlockUserMutationResponseObject[[key]] <- self$additional_properties[[key]]
      }

      BlockUserMutationResponseObject
    },
    #' Deserialize JSON string into an instance of BlockUserMutationResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of BlockUserMutationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BlockUserMutationResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        data_object <- BlockUserMutationResponseData$new()
        data_object$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
        self$`data` <- data_object
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
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
    #' @return BlockUserMutationResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`data`)) {
          sprintf(
            '"data":
          %s
          ',
            jsonlite::toJSON(self$`data`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`errors`)) {
          sprintf(
            '"errors":
          [%s]
',
            paste(sapply(self$`errors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of BlockUserMutationResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of BlockUserMutationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BlockUserMutationResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- BlockUserMutationResponseData$new()$fromJSON(jsonlite::toJSON(this_object$data, auto_unbox = TRUE, digits = NA))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to BlockUserMutationResponse
    #'
    #' @description
    #' Validate JSON input with respect to BlockUserMutationResponse and throw an exception if invalid
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
    #' @return String representation of BlockUserMutationResponse
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
# BlockUserMutationResponse$unlock()
#
## Below is an example to define the print fnuction
# BlockUserMutationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BlockUserMutationResponse$lock()
