#' Create a new UsersFollowingCreateRequest
#'
#' @description
#' UsersFollowingCreateRequest Class
#'
#' @docType class
#' @title UsersFollowingCreateRequest
#' @description UsersFollowingCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field target_user_id  character
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsersFollowingCreateRequest <- R6::R6Class(
  "UsersFollowingCreateRequest",
  public = list(
    `target_user_id` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new UsersFollowingCreateRequest class.
    #'
    #' @description
    #' Initialize a new UsersFollowingCreateRequest class.
    #'
    #' @param target_user_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `target_user_id`, additional_properties = NULL, ...
    ) {
      if (!missing(`target_user_id`)) {
        stopifnot(is.character(`target_user_id`), length(`target_user_id`) == 1)
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
    #' @return UsersFollowingCreateRequest in JSON format
    #' @export
    toJSON = function() {
      UsersFollowingCreateRequestObject <- list()
      if (!is.null(self$`target_user_id`)) {
        UsersFollowingCreateRequestObject[["target_user_id"]] <-
          self$`target_user_id`
      }
      for (key in names(self$additional_properties)) {
        UsersFollowingCreateRequestObject[[key]] <- self$additional_properties[[key]]
      }

      UsersFollowingCreateRequestObject
    },
    #' Deserialize JSON string into an instance of UsersFollowingCreateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersFollowingCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersFollowingCreateRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`target_user_id`)) {
        self$`target_user_id` <- this_object$`target_user_id`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return UsersFollowingCreateRequest in JSON format
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
    #' Deserialize JSON string into an instance of UsersFollowingCreateRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of UsersFollowingCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsersFollowingCreateRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`target_user_id` <- this_object$`target_user_id`
      self
    },
    #' Validate JSON input with respect to UsersFollowingCreateRequest
    #'
    #' @description
    #' Validate JSON input with respect to UsersFollowingCreateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `target_user_id`
      if (!is.null(input_json$`target_user_id`)) {
        stopifnot(is.character(input_json$`target_user_id`), length(input_json$`target_user_id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UsersFollowingCreateRequest: the required field `target_user_id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UsersFollowingCreateRequest
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
UsersFollowingCreateRequest$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
UsersFollowingCreateRequest$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
UsersFollowingCreateRequest$lock()

