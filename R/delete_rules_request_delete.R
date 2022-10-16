#' Create a new DeleteRulesRequestDelete
#'
#' @description
#' IDs and values of all deleted user-specified stream filtering rules.
#'
#' @docType class
#' @title DeleteRulesRequestDelete
#' @description DeleteRulesRequestDelete Class
#' @format An \code{R6Class} generator object
#' @field ids IDs of all deleted user-specified stream filtering rules. list(character) [optional]
#' @field values Values of all deleted user-specified stream filtering rules. list(character) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeleteRulesRequestDelete <- R6::R6Class(
  "DeleteRulesRequestDelete",
  public = list(
    `ids` = NULL,
    `values` = NULL,
    `_field_list` = c("ids", "values"),
    `additional_properties` = list(),
    #' Initialize a new DeleteRulesRequestDelete class.
    #'
    #' @description
    #' Initialize a new DeleteRulesRequestDelete class.
    #'
    #' @param ids IDs of all deleted user-specified stream filtering rules.
    #' @param values Values of all deleted user-specified stream filtering rules.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`ids` = NULL, `values` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`ids`)) {
        stopifnot(is.vector(`ids`), length(`ids`) != 0)
        sapply(`ids`, function(x) stopifnot(is.character(x)))
        self$`ids` <- `ids`
      }
      if (!is.null(`values`)) {
        stopifnot(is.vector(`values`), length(`values`) != 0)
        sapply(`values`, function(x) stopifnot(is.character(x)))
        self$`values` <- `values`
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
    #' @return DeleteRulesRequestDelete in JSON format
    #' @export
    toJSON = function() {
      DeleteRulesRequestDeleteObject <- list()
      if (!is.null(self$`ids`)) {
        DeleteRulesRequestDeleteObject[["ids"]] <-
          self$`ids`
      }
      if (!is.null(self$`values`)) {
        DeleteRulesRequestDeleteObject[["values"]] <-
          self$`values`
      }
      for (key in names(self$additional_properties)) {
        DeleteRulesRequestDeleteObject[[key]] <- self$additional_properties[[key]]
      }

      DeleteRulesRequestDeleteObject
    },
    #' Deserialize JSON string into an instance of DeleteRulesRequestDelete
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeleteRulesRequestDelete
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeleteRulesRequestDelete
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ids`)) {
        self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`values`)) {
        self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[character]", loadNamespace("twitter"))
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
    #' @return DeleteRulesRequestDelete in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`ids`)) {
          sprintf(
            '"ids":
             [%s]
          ',
            paste(unlist(lapply(self$`ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`values`)) {
          sprintf(
            '"values":
             [%s]
          ',
            paste(unlist(lapply(self$`values`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of DeleteRulesRequestDelete
    #'
    #' @description
    #' Deserialize JSON string into an instance of DeleteRulesRequestDelete
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeleteRulesRequestDelete
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[character]", loadNamespace("twitter"))
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[character]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to DeleteRulesRequestDelete
    #'
    #' @description
    #' Validate JSON input with respect to DeleteRulesRequestDelete and throw an exception if invalid
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
    #' @return String representation of DeleteRulesRequestDelete
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
# DeleteRulesRequestDelete$unlock()
#
## Below is an example to define the print fnuction
# DeleteRulesRequestDelete$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeleteRulesRequestDelete$lock()
