#' Create a new RulesRequestSummaryOneOf1
#'
#' @description
#' RulesRequestSummaryOneOf1 Class
#'
#' @docType class
#' @title RulesRequestSummaryOneOf1
#' @description RulesRequestSummaryOneOf1 Class
#' @format An \code{R6Class} generator object
#' @field deleted Number of user-specified stream filtering rules that were deleted. integer
#' @field not_deleted Number of user-specified stream filtering rules that were not deleted. integer
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RulesRequestSummaryOneOf1 <- R6::R6Class(
  "RulesRequestSummaryOneOf1",
  public = list(
    `deleted` = NULL,
    `not_deleted` = NULL,
    `_field_list` = c("deleted", "not_deleted"),
    `additional_properties` = list(),
    #' Initialize a new RulesRequestSummaryOneOf1 class.
    #'
    #' @description
    #' Initialize a new RulesRequestSummaryOneOf1 class.
    #'
    #' @param deleted Number of user-specified stream filtering rules that were deleted.
    #' @param not_deleted Number of user-specified stream filtering rules that were not deleted.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`deleted`, `not_deleted`, additional_properties = NULL, ...) {
      if (!missing(`deleted`)) {
        stopifnot(is.numeric(`deleted`), length(`deleted`) == 1)
        self$`deleted` <- `deleted`
      }
      if (!missing(`not_deleted`)) {
        stopifnot(is.numeric(`not_deleted`), length(`not_deleted`) == 1)
        self$`not_deleted` <- `not_deleted`
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
    #' @return RulesRequestSummaryOneOf1 in JSON format
    #' @export
    toJSON = function() {
      RulesRequestSummaryOneOf1Object <- list()
      if (!is.null(self$`deleted`)) {
        RulesRequestSummaryOneOf1Object[["deleted"]] <-
          self$`deleted`
      }
      if (!is.null(self$`not_deleted`)) {
        RulesRequestSummaryOneOf1Object[["not_deleted"]] <-
          self$`not_deleted`
      }
      for (key in names(self$additional_properties)) {
        RulesRequestSummaryOneOf1Object[[key]] <- self$additional_properties[[key]]
      }

      RulesRequestSummaryOneOf1Object
    },
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf1
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesRequestSummaryOneOf1
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`deleted`)) {
        self$`deleted` <- this_object$`deleted`
      }
      if (!is.null(this_object$`not_deleted`)) {
        self$`not_deleted` <- this_object$`not_deleted`
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
    #' @return RulesRequestSummaryOneOf1 in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`deleted`)) {
          sprintf(
            '"deleted":
            %d
                    ',
            self$`deleted`
          )
        },
        if (!is.null(self$`not_deleted`)) {
          sprintf(
            '"not_deleted":
            %d
                    ',
            self$`not_deleted`
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
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf1
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesRequestSummaryOneOf1
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`deleted` <- this_object$`deleted`
      self$`not_deleted` <- this_object$`not_deleted`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to RulesRequestSummaryOneOf1
    #'
    #' @description
    #' Validate JSON input with respect to RulesRequestSummaryOneOf1 and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `deleted`
      if (!is.null(input_json$`deleted`)) {
        stopifnot(is.numeric(input_json$`deleted`), length(input_json$`deleted`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesRequestSummaryOneOf1: the required field `deleted` is missing."))
      }
      # check the required field `not_deleted`
      if (!is.null(input_json$`not_deleted`)) {
        stopifnot(is.numeric(input_json$`not_deleted`), length(input_json$`not_deleted`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesRequestSummaryOneOf1: the required field `not_deleted` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RulesRequestSummaryOneOf1
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
      # check if the required `deleted` is null
      if (is.null(self$`deleted`)) {
        return(FALSE)
      }

      # check if the required `not_deleted` is null
      if (is.null(self$`not_deleted`)) {
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
      # check if the required `deleted` is null
      if (is.null(self$`deleted`)) {
        invalid_fields["deleted"] <- "Non-nullable required field `deleted` cannot be null."
      }

      # check if the required `not_deleted` is null
      if (is.null(self$`not_deleted`)) {
        invalid_fields["not_deleted"] <- "Non-nullable required field `not_deleted` cannot be null."
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
# RulesRequestSummaryOneOf1$unlock()
#
## Below is an example to define the print fnuction
# RulesRequestSummaryOneOf1$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RulesRequestSummaryOneOf1$lock()
