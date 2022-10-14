#' Create a new AddRulesRequest
#'
#' @description
#' A request to add a user-specified stream filtering rule.
#'
#' @docType class
#' @title AddRulesRequest
#' @description AddRulesRequest Class
#' @format An \code{R6Class} generator object
#' @field add  list(\link{RuleNoId})
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AddRulesRequest <- R6::R6Class(
  "AddRulesRequest",
  public = list(
    `add` = NULL,
    `_field_list` = c("add"),
    `additional_properties` = list(),
    #' Initialize a new AddRulesRequest class.
    #'
    #' @description
    #' Initialize a new AddRulesRequest class.
    #'
    #' @param add add
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`add`, additional_properties = NULL, ...) {
      if (!missing(`add`)) {
        stopifnot(is.vector(`add`), length(`add`) != 0)
        sapply(`add`, function(x) stopifnot(R6::is.R6(x)))
        self$`add` <- `add`
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
    #' @return AddRulesRequest in JSON format
    #' @export
    toJSON = function() {
      AddRulesRequestObject <- list()
      if (!is.null(self$`add`)) {
        AddRulesRequestObject[["add"]] <-
          lapply(self$`add`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        AddRulesRequestObject[[key]] <- self$additional_properties[[key]]
      }

      AddRulesRequestObject
    },
    #' Deserialize JSON string into an instance of AddRulesRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of AddRulesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AddRulesRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`add`)) {
        self$`add` <- ApiClient$new()$deserializeObj(this_object$`add`, "array[RuleNoId]", loadNamespace("twitter"))
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
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
    #' @return AddRulesRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`add`)) {
          sprintf(
            '"add":
          [%s]
',
            paste(sapply(self$`add`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of AddRulesRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of AddRulesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AddRulesRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`add` <- ApiClient$new()$deserializeObj(this_object$`add`, "array[RuleNoId]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to AddRulesRequest
    #'
    #' @description
    #' Validate JSON input with respect to AddRulesRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `add`
      if (!is.null(input_json$`add`)) {
        stopifnot(is.vector(input_json$`add`), length(input_json$`add`) != 0)
        tmp <- sapply(input_json$`add`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AddRulesRequest: the required field `add` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AddRulesRequest
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
      # check if the required `add` is null
      if (is.null(self$`add`)) {
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
      # check if the required `add` is null
      if (is.null(self$`add`)) {
        invalid_fields["add"] <- "Non-nullable required field `add` cannot be null."
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
# AddRulesRequest$unlock()
#
## Below is an example to define the print fnuction
# AddRulesRequest$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AddRulesRequest$lock()
