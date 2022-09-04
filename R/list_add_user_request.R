#' Create a new ListAddUserRequest
#'
#' @description
#' ListAddUserRequest Class
#'
#' @docType class
#' @title ListAddUserRequest
#' @description ListAddUserRequest Class
#' @format An \code{R6Class} generator object
#' @field user_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListAddUserRequest <- R6::R6Class(
  "ListAddUserRequest",
  public = list(
    `user_id` = NULL,
    `_field_list` = c("user_id"),
    `additional_properties` = list(),
    #' Initialize a new ListAddUserRequest class.
    #'
    #' @description
    #' Initialize a new ListAddUserRequest class.
    #'
    #' @param user_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `user_id`, additional_properties = NULL, ...
    ) {
      if (!missing(`user_id`)) {
        stopifnot(is.character(`user_id`), length(`user_id`) == 1)
        self$`user_id` <- `user_id`
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
    #' @return ListAddUserRequest in JSON format
    #' @export
    toJSON = function() {
      ListAddUserRequestObject <- list()
      if (!is.null(self$`user_id`)) {
        ListAddUserRequestObject[["user_id"]] <-
          self$`user_id`
      }
      for (key in names(self$additional_properties)) {
        ListAddUserRequestObject[[key]] <- self$additional_properties[[key]]
      }

      ListAddUserRequestObject
    },
    #' Deserialize JSON string into an instance of ListAddUserRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListAddUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListAddUserRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_id`)) {
        self$`user_id` <- this_object$`user_id`
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
    #' @return ListAddUserRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`user_id`)) {
          sprintf(
          '"user_id":
            "%s"
                    ',
          self$`user_id`
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
    #' Deserialize JSON string into an instance of ListAddUserRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListAddUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListAddUserRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_id` <- this_object$`user_id`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ListAddUserRequest
    #'
    #' @description
    #' Validate JSON input with respect to ListAddUserRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_id`
      if (!is.null(input_json$`user_id`)) {
        stopifnot(is.character(input_json$`user_id`), length(input_json$`user_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ListAddUserRequest: the required field `user_id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ListAddUserRequest
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
      # check if the required `user_id` is null
      if (is.null(self$`user_id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`user_id`, "^[0-9]{1,19}$")) {
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
      # check if the required `user_id` is null
      if (is.null(self$`user_id`)) {
        invalid_fields["user_id"] <- "Non-nullable required field `user_id` cannot be null."
      }

      if (!str_detect(self$`user_id`, "^[0-9]{1,19}$")) {
        invalid_fields["user_id"] <- "Invalid value for `user_id`, must conform to the pattern ^[0-9]{1,19}$."
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
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#ListAddUserRequest$unlock()
#
## Below is an example to define the print fnuction
#ListAddUserRequest$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ListAddUserRequest$lock()

