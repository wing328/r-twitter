#' Create a new TweetComplianceSchemaTweet
#'
#' @description
#' TweetComplianceSchemaTweet Class
#'
#' @docType class
#' @title TweetComplianceSchemaTweet
#' @description TweetComplianceSchemaTweet Class
#' @format An \code{R6Class} generator object
#' @field author_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character
#' @field id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TweetComplianceSchemaTweet <- R6::R6Class(
  "TweetComplianceSchemaTweet",
  public = list(
    `author_id` = NULL,
    `id` = NULL,
    `_field_list` = c("author_id", "id"),
    `additional_properties` = list(),
    #' Initialize a new TweetComplianceSchemaTweet class.
    #'
    #' @description
    #' Initialize a new TweetComplianceSchemaTweet class.
    #'
    #' @param author_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param id Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`author_id`, `id`, additional_properties = NULL, ...) {
      if (!missing(`author_id`)) {
        if (!(is.character(`author_id`) && length(`author_id`) == 1)) {
          stop(paste("Error! Invalid data for `author_id`. Must be a string:", `author_id`))
        }
        self$`author_id` <- `author_id`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
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
    #' @return TweetComplianceSchemaTweet in JSON format
    #' @export
    toJSON = function() {
      TweetComplianceSchemaTweetObject <- list()
      if (!is.null(self$`author_id`)) {
        TweetComplianceSchemaTweetObject[["author_id"]] <-
          self$`author_id`
      }
      if (!is.null(self$`id`)) {
        TweetComplianceSchemaTweetObject[["id"]] <-
          self$`id`
      }
      for (key in names(self$additional_properties)) {
        TweetComplianceSchemaTweetObject[[key]] <- self$additional_properties[[key]]
      }

      TweetComplianceSchemaTweetObject
    },
    #' Deserialize JSON string into an instance of TweetComplianceSchemaTweet
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceSchemaTweet
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetComplianceSchemaTweet
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`author_id`)) {
        self$`author_id` <- this_object$`author_id`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
    #' @return TweetComplianceSchemaTweet in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`author_id`)) {
          sprintf(
            '"author_id":
            "%s"
                    ',
            self$`author_id`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
            '"id":
            "%s"
                    ',
            self$`id`
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
    #' Deserialize JSON string into an instance of TweetComplianceSchemaTweet
    #'
    #' @description
    #' Deserialize JSON string into an instance of TweetComplianceSchemaTweet
    #'
    #' @param input_json the JSON input
    #' @return the instance of TweetComplianceSchemaTweet
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`author_id` <- this_object$`author_id`
      self$`id` <- this_object$`id`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to TweetComplianceSchemaTweet
    #'
    #' @description
    #' Validate JSON input with respect to TweetComplianceSchemaTweet and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `author_id`
      if (!is.null(input_json$`author_id`)) {
        if (!(is.character(input_json$`author_id`) && length(input_json$`author_id`) == 1)) {
          stop(paste("Error! Invalid data for `author_id`. Must be a string:", input_json$`author_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetComplianceSchemaTweet: the required field `author_id` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TweetComplianceSchemaTweet: the required field `id` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TweetComplianceSchemaTweet
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
      # check if the required `author_id` is null
      if (is.null(self$`author_id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`author_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
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
      # check if the required `author_id` is null
      if (is.null(self$`author_id`)) {
        invalid_fields["author_id"] <- "Non-nullable required field `author_id` cannot be null."
      }

      if (!str_detect(self$`author_id`, "^[0-9]{1,19}$")) {
        invalid_fields["author_id"] <- "Invalid value for `author_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
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
# TweetComplianceSchemaTweet$unlock()
#
## Below is an example to define the print fnuction
# TweetComplianceSchemaTweet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TweetComplianceSchemaTweet$lock()
