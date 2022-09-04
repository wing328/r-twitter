#' Create a new MentionEntity
#'
#' @description
#' MentionEntity Class
#'
#' @docType class
#' @title MentionEntity
#' @description MentionEntity Class
#' @format An \code{R6Class} generator object
#' @field end Index (zero-based) at which position this entity ends.  The index is exclusive. integer
#' @field start Index (zero-based) at which position this entity starts.  The index is inclusive. integer
#' @field id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field username The Twitter handle (screen name) of this user. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MentionEntity <- R6::R6Class(
  "MentionEntity",
  public = list(
    `end` = NULL,
    `start` = NULL,
    `id` = NULL,
    `username` = NULL,
    `_field_list` = c("end", "start", "id", "username"),
    `additional_properties` = list(),
    #' Initialize a new MentionEntity class.
    #'
    #' @description
    #' Initialize a new MentionEntity class.
    #'
    #' @param end Index (zero-based) at which position this entity ends.  The index is exclusive.
    #' @param start Index (zero-based) at which position this entity starts.  The index is inclusive.
    #' @param username The Twitter handle (screen name) of this user.
    #' @param id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `end`, `start`, `username`, `id` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`end`)) {
        stopifnot(is.numeric(`end`), length(`end`) == 1)
        self$`end` <- `end`
      }
      if (!missing(`start`)) {
        stopifnot(is.numeric(`start`), length(`start`) == 1)
        self$`start` <- `start`
      }
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
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
    #' @return MentionEntity in JSON format
    #' @export
    toJSON = function() {
      MentionEntityObject <- list()
      if (!is.null(self$`end`)) {
        MentionEntityObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`start`)) {
        MentionEntityObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`id`)) {
        MentionEntityObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`username`)) {
        MentionEntityObject[["username"]] <-
          self$`username`
      }
      for (key in names(self$additional_properties)) {
        MentionEntityObject[[key]] <- self$additional_properties[[key]]
      }

      MentionEntityObject
    },
    #' Deserialize JSON string into an instance of MentionEntity
    #'
    #' @description
    #' Deserialize JSON string into an instance of MentionEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of MentionEntity
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
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
    #' @return MentionEntity in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`end`)) {
          sprintf(
          '"end":
            %d
                    ',
          self$`end`
          )
        },
        if (!is.null(self$`start`)) {
          sprintf(
          '"start":
            %d
                    ',
          self$`start`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`username`)) {
          sprintf(
          '"username":
            "%s"
                    ',
          self$`username`
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
    #' Deserialize JSON string into an instance of MentionEntity
    #'
    #' @description
    #' Deserialize JSON string into an instance of MentionEntity
    #'
    #' @param input_json the JSON input
    #' @return the instance of MentionEntity
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`end` <- this_object$`end`
      self$`start` <- this_object$`start`
      self$`id` <- this_object$`id`
      self$`username` <- this_object$`username`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to MentionEntity
    #'
    #' @description
    #' Validate JSON input with respect to MentionEntity and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `end`
      if (!is.null(input_json$`end`)) {
        stopifnot(is.numeric(input_json$`end`), length(input_json$`end`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MentionEntity: the required field `end` is missing."))
      }
      # check the required field `start`
      if (!is.null(input_json$`start`)) {
        stopifnot(is.numeric(input_json$`start`), length(input_json$`start`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MentionEntity: the required field `start` is missing."))
      }
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        stopifnot(is.character(input_json$`username`), length(input_json$`username`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MentionEntity: the required field `username` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MentionEntity
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
      # check if the required `end` is null
      if (is.null(self$`end`)) {
        return(FALSE)
      }

      if (self$`end` < 0) {
        return(FALSE)
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        return(FALSE)
      }

      if (self$`start` < 0) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      if (!str_detect(self$`username`, "^[A-Za-z0-9_]{1,15}$")) {
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
      # check if the required `end` is null
      if (is.null(self$`end`)) {
        invalid_fields["end"] <- "Non-nullable required field `end` cannot be null."
      }

      if (self$`end` < 0) {
        invalid_fields["end"] <- "Invalid value for `end`, must be bigger than or equal to 0."
      }

      # check if the required `start` is null
      if (is.null(self$`start`)) {
        invalid_fields["start"] <- "Non-nullable required field `start` cannot be null."
      }

      if (self$`start` < 0) {
        invalid_fields["start"] <- "Invalid value for `start`, must be bigger than or equal to 0."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      if (!str_detect(self$`username`, "^[A-Za-z0-9_]{1,15}$")) {
        invalid_fields["username"] <- "Invalid value for `username`, must conform to the pattern ^[A-Za-z0-9_]{1,15}$."
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
#MentionEntity$unlock()
#
## Below is an example to define the print fnuction
#MentionEntity$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#MentionEntity$lock()

