#' Create a new PollOption
#'
#' @description
#' Describes a choice in a Poll object.
#'
#' @docType class
#' @title PollOption
#' @description PollOption Class
#' @format An \code{R6Class} generator object
#' @field label The text of a poll choice. character
#' @field position Position of this choice in the poll. integer
#' @field votes Number of users who voted for this choice. integer
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PollOption <- R6::R6Class(
  "PollOption",
  public = list(
    `label` = NULL,
    `position` = NULL,
    `votes` = NULL,
    `_field_list` = c("label", "position", "votes"),
    `additional_properties` = list(),
    #' Initialize a new PollOption class.
    #'
    #' @description
    #' Initialize a new PollOption class.
    #'
    #' @param label The text of a poll choice.
    #' @param position Position of this choice in the poll.
    #' @param votes Number of users who voted for this choice.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`label`, `position`, `votes`, additional_properties = NULL, ...) {
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
      }
      if (!missing(`votes`)) {
        if (!(is.numeric(`votes`) && length(`votes`) == 1)) {
          stop(paste("Error! Invalid data for `votes`. Must be an integer:", `votes`))
        }
        self$`votes` <- `votes`
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
    #' @return PollOption in JSON format
    #' @export
    toJSON = function() {
      PollOptionObject <- list()
      if (!is.null(self$`label`)) {
        PollOptionObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`position`)) {
        PollOptionObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`votes`)) {
        PollOptionObject[["votes"]] <-
          self$`votes`
      }
      for (key in names(self$additional_properties)) {
        PollOptionObject[[key]] <- self$additional_properties[[key]]
      }

      PollOptionObject
    },
    #' Deserialize JSON string into an instance of PollOption
    #'
    #' @description
    #' Deserialize JSON string into an instance of PollOption
    #'
    #' @param input_json the JSON input
    #' @return the instance of PollOption
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`votes`)) {
        self$`votes` <- this_object$`votes`
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
    #' @return PollOption in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`label`)) {
          sprintf(
            '"label":
            "%s"
                    ',
            self$`label`
          )
        },
        if (!is.null(self$`position`)) {
          sprintf(
            '"position":
            %d
                    ',
            self$`position`
          )
        },
        if (!is.null(self$`votes`)) {
          sprintf(
            '"votes":
            %d
                    ',
            self$`votes`
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
    #' Deserialize JSON string into an instance of PollOption
    #'
    #' @description
    #' Deserialize JSON string into an instance of PollOption
    #'
    #' @param input_json the JSON input
    #' @return the instance of PollOption
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`label` <- this_object$`label`
      self$`position` <- this_object$`position`
      self$`votes` <- this_object$`votes`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to PollOption
    #'
    #' @description
    #' Validate JSON input with respect to PollOption and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PollOption: the required field `label` is missing."))
      }
      # check the required field `position`
      if (!is.null(input_json$`position`)) {
        if (!(is.numeric(input_json$`position`) && length(input_json$`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", input_json$`position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PollOption: the required field `position` is missing."))
      }
      # check the required field `votes`
      if (!is.null(input_json$`votes`)) {
        if (!(is.numeric(input_json$`votes`) && length(input_json$`votes`) == 1)) {
          stop(paste("Error! Invalid data for `votes`. Must be an integer:", input_json$`votes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PollOption: the required field `votes` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PollOption
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
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      if (nchar(self$`label`) > 25) {
        return(FALSE)
      }
      if (nchar(self$`label`) < 1) {
        return(FALSE)
      }

      # check if the required `position` is null
      if (is.null(self$`position`)) {
        return(FALSE)
      }

      # check if the required `votes` is null
      if (is.null(self$`votes`)) {
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
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      if (nchar(self$`label`) > 25) {
        invalid_fields["label"] <- "Invalid length for `label`, must be smaller than or equal to 25."
      }
      if (nchar(self$`label`) < 1) {
        invalid_fields["label"] <- "Invalid length for `label`, must be bigger than or equal to 1."
      }

      # check if the required `position` is null
      if (is.null(self$`position`)) {
        invalid_fields["position"] <- "Non-nullable required field `position` cannot be null."
      }

      # check if the required `votes` is null
      if (is.null(self$`votes`)) {
        invalid_fields["votes"] <- "Non-nullable required field `votes` cannot be null."
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
# PollOption$unlock()
#
## Below is an example to define the print fnuction
# PollOption$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PollOption$lock()
