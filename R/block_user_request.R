#' Create a new BlockUserRequest
#'
#' @description
#' BlockUserRequest Class
#'
#' @docType class
#' @title BlockUserRequest
#' @description BlockUserRequest Class
#' @format An \code{R6Class} generator object
#' @field target_user_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BlockUserRequest <- R6::R6Class(
  "BlockUserRequest",
  public = list(
    `target_user_id` = NULL,
    `_field_list` = c("target_user_id"),
    `additional_properties` = list(),
    #' Initialize a new BlockUserRequest class.
    #'
    #' @description
    #' Initialize a new BlockUserRequest class.
    #'
    #' @param target_user_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`target_user_id`, additional_properties = NULL, ...) {
      if (!missing(`target_user_id`)) {
        if (!(is.character(`target_user_id`) && length(`target_user_id`) == 1)) {
          stop(paste("Error! Invalid data for `target_user_id`. Must be a string:", `target_user_id`))
        }
        self$`target_user_id` <- `target_user_id`
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
    #' @return BlockUserRequest in JSON format
    #' @export
    toJSON = function() {
      BlockUserRequestObject <- list()
      if (!is.null(self$`target_user_id`)) {
        BlockUserRequestObject[["target_user_id"]] <-
          self$`target_user_id`
      }
      for (key in names(self$additional_properties)) {
        BlockUserRequestObject[[key]] <- self$additional_properties[[key]]
      }

      BlockUserRequestObject
    },
    #' Deserialize JSON string into an instance of BlockUserRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of BlockUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BlockUserRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`target_user_id`)) {
        self$`target_user_id` <- this_object$`target_user_id`
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
    #' @return BlockUserRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`target_user_id`)) {
          sprintf(
            '"target_user_id":
            "%s"
                    ',
            self$`target_user_id`
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
    #' Deserialize JSON string into an instance of BlockUserRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of BlockUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BlockUserRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`target_user_id` <- this_object$`target_user_id`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to BlockUserRequest
    #'
    #' @description
    #' Validate JSON input with respect to BlockUserRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `target_user_id`
      if (!is.null(input_json$`target_user_id`)) {
        if (!(is.character(input_json$`target_user_id`) && length(input_json$`target_user_id`) == 1)) {
          stop(paste("Error! Invalid data for `target_user_id`. Must be a string:", input_json$`target_user_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BlockUserRequest: the required field `target_user_id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BlockUserRequest
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
      # check if the required `target_user_id` is null
      if (is.null(self$`target_user_id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`target_user_id`, "^[0-9]{1,19}$")) {
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
      # check if the required `target_user_id` is null
      if (is.null(self$`target_user_id`)) {
        invalid_fields["target_user_id"] <- "Non-nullable required field `target_user_id` cannot be null."
      }

      if (!str_detect(self$`target_user_id`, "^[0-9]{1,19}$")) {
        invalid_fields["target_user_id"] <- "Invalid value for `target_user_id`, must conform to the pattern ^[0-9]{1,19}$."
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
# BlockUserRequest$unlock()
#
## Below is an example to define the print fnuction
# BlockUserRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BlockUserRequest$lock()
