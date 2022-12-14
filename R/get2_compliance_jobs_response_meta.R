#' Create a new Get2ComplianceJobsResponseMeta
#'
#' @description
#' Get2ComplianceJobsResponseMeta Class
#'
#' @docType class
#' @title Get2ComplianceJobsResponseMeta
#' @description Get2ComplianceJobsResponseMeta Class
#' @format An \code{R6Class} generator object
#' @field result_count The number of results returned in this response. integer [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Get2ComplianceJobsResponseMeta <- R6::R6Class(
  "Get2ComplianceJobsResponseMeta",
  public = list(
    `result_count` = NULL,
    `_field_list` = c("result_count"),
    `additional_properties` = list(),
    #' Initialize a new Get2ComplianceJobsResponseMeta class.
    #'
    #' @description
    #' Initialize a new Get2ComplianceJobsResponseMeta class.
    #'
    #' @param result_count The number of results returned in this response.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`result_count` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`result_count`)) {
        if (!(is.numeric(`result_count`) && length(`result_count`) == 1)) {
          stop(paste("Error! Invalid data for `result_count`. Must be an integer:", `result_count`))
        }
        self$`result_count` <- `result_count`
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
    #' @return Get2ComplianceJobsResponseMeta in JSON format
    #' @export
    toJSON = function() {
      Get2ComplianceJobsResponseMetaObject <- list()
      if (!is.null(self$`result_count`)) {
        Get2ComplianceJobsResponseMetaObject[["result_count"]] <-
          self$`result_count`
      }
      for (key in names(self$additional_properties)) {
        Get2ComplianceJobsResponseMetaObject[[key]] <- self$additional_properties[[key]]
      }

      Get2ComplianceJobsResponseMetaObject
    },
    #' Deserialize JSON string into an instance of Get2ComplianceJobsResponseMeta
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2ComplianceJobsResponseMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2ComplianceJobsResponseMeta
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`result_count`)) {
        self$`result_count` <- this_object$`result_count`
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
    #' @return Get2ComplianceJobsResponseMeta in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`result_count`)) {
          sprintf(
            '"result_count":
            %d
                    ',
            self$`result_count`
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
    #' Deserialize JSON string into an instance of Get2ComplianceJobsResponseMeta
    #'
    #' @description
    #' Deserialize JSON string into an instance of Get2ComplianceJobsResponseMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of Get2ComplianceJobsResponseMeta
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`result_count` <- this_object$`result_count`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Get2ComplianceJobsResponseMeta
    #'
    #' @description
    #' Validate JSON input with respect to Get2ComplianceJobsResponseMeta and throw an exception if invalid
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
    #' @return String representation of Get2ComplianceJobsResponseMeta
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
# Get2ComplianceJobsResponseMeta$unlock()
#
## Below is an example to define the print fnuction
# Get2ComplianceJobsResponseMeta$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Get2ComplianceJobsResponseMeta$lock()
