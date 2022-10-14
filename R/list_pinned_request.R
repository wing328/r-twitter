#' Create a new ListPinnedRequest
#'
#' @description
#' ListPinnedRequest Class
#'
#' @docType class
#' @title ListPinnedRequest
#' @description ListPinnedRequest Class
#' @format An \code{R6Class} generator object
#' @field list_id The unique identifier of this List. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListPinnedRequest <- R6::R6Class(
  "ListPinnedRequest",
  public = list(
    `list_id` = NULL,
    `_field_list` = c("list_id"),
    `additional_properties` = list(),
    #' Initialize a new ListPinnedRequest class.
    #'
    #' @description
    #' Initialize a new ListPinnedRequest class.
    #'
    #' @param list_id The unique identifier of this List.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`list_id`, additional_properties = NULL, ...) {
      if (!missing(`list_id`)) {
        stopifnot(is.character(`list_id`), length(`list_id`) == 1)
        self$`list_id` <- `list_id`
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
    #' @return ListPinnedRequest in JSON format
    #' @export
    toJSON = function() {
      ListPinnedRequestObject <- list()
      if (!is.null(self$`list_id`)) {
        ListPinnedRequestObject[["list_id"]] <-
          self$`list_id`
      }
      for (key in names(self$additional_properties)) {
        ListPinnedRequestObject[[key]] <- self$additional_properties[[key]]
      }

      ListPinnedRequestObject
    },
    #' Deserialize JSON string into an instance of ListPinnedRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListPinnedRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListPinnedRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`list_id`)) {
        self$`list_id` <- this_object$`list_id`
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
    #' @return ListPinnedRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`list_id`)) {
          sprintf(
            '"list_id":
            "%s"
                    ',
            self$`list_id`
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
    #' Deserialize JSON string into an instance of ListPinnedRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListPinnedRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListPinnedRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`list_id` <- this_object$`list_id`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ListPinnedRequest
    #'
    #' @description
    #' Validate JSON input with respect to ListPinnedRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `list_id`
      if (!is.null(input_json$`list_id`)) {
        stopifnot(is.character(input_json$`list_id`), length(input_json$`list_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ListPinnedRequest: the required field `list_id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ListPinnedRequest
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
      # check if the required `list_id` is null
      if (is.null(self$`list_id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`list_id`, "^[0-9]{1,19}$")) {
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
      # check if the required `list_id` is null
      if (is.null(self$`list_id`)) {
        invalid_fields["list_id"] <- "Non-nullable required field `list_id` cannot be null."
      }

      if (!str_detect(self$`list_id`, "^[0-9]{1,19}$")) {
        invalid_fields["list_id"] <- "Invalid value for `list_id`, must conform to the pattern ^[0-9]{1,19}$."
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
# ListPinnedRequest$unlock()
#
## Below is an example to define the print fnuction
# ListPinnedRequest$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ListPinnedRequest$lock()
