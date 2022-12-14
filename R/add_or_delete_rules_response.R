#' Create a new AddOrDeleteRulesResponse
#'
#' @description
#' A response from modifying user-specified stream filtering rules.
#'
#' @docType class
#' @title AddOrDeleteRulesResponse
#' @description AddOrDeleteRulesResponse Class
#' @format An \code{R6Class} generator object
#' @field data All user-specified stream filtering rules that were created. list(\link{Rule}) [optional]
#' @field errors  list(\link{Problem}) [optional]
#' @field meta  \link{RulesResponseMetadata}
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AddOrDeleteRulesResponse <- R6::R6Class(
  "AddOrDeleteRulesResponse",
  public = list(
    `data` = NULL,
    `errors` = NULL,
    `meta` = NULL,
    `_field_list` = c("data", "errors", "meta"),
    `additional_properties` = list(),
    #' Initialize a new AddOrDeleteRulesResponse class.
    #'
    #' @description
    #' Initialize a new AddOrDeleteRulesResponse class.
    #'
    #' @param meta meta
    #' @param data All user-specified stream filtering rules that were created.
    #' @param errors errors
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`meta`, `data` = NULL, `errors` = NULL, additional_properties = NULL, ...) {
      if (!missing(`meta`)) {
        stopifnot(R6::is.R6(`meta`))
        self$`meta` <- `meta`
      }
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
    #' @return AddOrDeleteRulesResponse in JSON format
    #' @export
    toJSON = function() {
      AddOrDeleteRulesResponseObject <- list()
      if (!is.null(self$`data`)) {
        AddOrDeleteRulesResponseObject[["data"]] <-
          lapply(self$`data`, function(x) x$toJSON())
      }
      if (!is.null(self$`errors`)) {
        AddOrDeleteRulesResponseObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      if (!is.null(self$`meta`)) {
        AddOrDeleteRulesResponseObject[["meta"]] <-
          self$`meta`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        AddOrDeleteRulesResponseObject[[key]] <- self$additional_properties[[key]]
      }

      AddOrDeleteRulesResponseObject
    },
    #' Deserialize JSON string into an instance of AddOrDeleteRulesResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of AddOrDeleteRulesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AddOrDeleteRulesResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[Rule]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`meta`)) {
        meta_object <- RulesResponseMetadata$new()
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
    #' @return AddOrDeleteRulesResponse in JSON format
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
    #' Deserialize JSON string into an instance of AddOrDeleteRulesResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of AddOrDeleteRulesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AddOrDeleteRulesResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[Rule]", loadNamespace("twitter"))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[Problem]", loadNamespace("twitter"))
      self$`meta` <- RulesResponseMetadata$new()$fromJSON(jsonlite::toJSON(this_object$meta, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to AddOrDeleteRulesResponse
    #'
    #' @description
    #' Validate JSON input with respect to AddOrDeleteRulesResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `meta`
      if (!is.null(input_json$`meta`)) {
        stopifnot(R6::is.R6(input_json$`meta`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AddOrDeleteRulesResponse: the required field `meta` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AddOrDeleteRulesResponse
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
      if (length(self$`errors`) < 1) {
        invalid_fields["errors"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      # check if the required `meta` is null
      if (is.null(self$`meta`)) {
        invalid_fields["meta"] <- "Non-nullable required field `meta` cannot be null."
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
# AddOrDeleteRulesResponse$unlock()
#
## Below is an example to define the print fnuction
# AddOrDeleteRulesResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AddOrDeleteRulesResponse$lock()
