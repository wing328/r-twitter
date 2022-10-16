#' Create a new FieldUnauthorizedProblem
#'
#' @description
#' A problem that indicates that you are not allowed to see a particular field on a Tweet, User, etc.
#'
#' @docType class
#' @title FieldUnauthorizedProblem
#' @description FieldUnauthorizedProblem Class
#' @format An \code{R6Class} generator object
#' @field detail  character [optional]
#' @field status  integer [optional]
#' @field title  character
#' @field type  character
#' @field field  character
#' @field resource_type  character
#' @field section  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FieldUnauthorizedProblem <- R6::R6Class(
  "FieldUnauthorizedProblem",
  inherit = Problem,
  public = list(
    `detail` = NULL,
    `status` = NULL,
    `title` = NULL,
    `type` = NULL,
    `field` = NULL,
    `resource_type` = NULL,
    `section` = NULL,
    `_field_list` = c("detail", "status", "title", "type", "field", "resource_type", "section"),
    `additional_properties` = list(),
    #' Initialize a new FieldUnauthorizedProblem class.
    #'
    #' @description
    #' Initialize a new FieldUnauthorizedProblem class.
    #'
    #' @param title title
    #' @param type type
    #' @param field field
    #' @param resource_type resource_type
    #' @param section section
    #' @param detail detail
    #' @param status status
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`title`, `type`, `field`, `resource_type`, `section`, `detail` = NULL, `status` = NULL, additional_properties = NULL, ...) {
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`field`)) {
        stopifnot(is.character(`field`), length(`field`) == 1)
        self$`field` <- `field`
      }
      if (!missing(`resource_type`)) {
        if (!(`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
          stop(paste("Error! \"", `resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
        }
        stopifnot(is.character(`resource_type`), length(`resource_type`) == 1)
        self$`resource_type` <- `resource_type`
      }
      if (!missing(`section`)) {
        if (!(`section` %in% c("data", "includes"))) {
          stop(paste("Error! \"", `section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
        }
        stopifnot(is.character(`section`), length(`section`) == 1)
        self$`section` <- `section`
      }
      if (!is.null(`detail`)) {
        stopifnot(is.character(`detail`), length(`detail`) == 1)
        self$`detail` <- `detail`
      }
      if (!is.null(`status`)) {
        stopifnot(is.numeric(`status`), length(`status`) == 1)
        self$`status` <- `status`
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
    #' @return FieldUnauthorizedProblem in JSON format
    #' @export
    toJSON = function() {
      FieldUnauthorizedProblemObject <- list()
      if (!is.null(self$`detail`)) {
        FieldUnauthorizedProblemObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`status`)) {
        FieldUnauthorizedProblemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        FieldUnauthorizedProblemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        FieldUnauthorizedProblemObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`field`)) {
        FieldUnauthorizedProblemObject[["field"]] <-
          self$`field`
      }
      if (!is.null(self$`resource_type`)) {
        FieldUnauthorizedProblemObject[["resource_type"]] <-
          self$`resource_type`
      }
      if (!is.null(self$`section`)) {
        FieldUnauthorizedProblemObject[["section"]] <-
          self$`section`
      }
      for (key in names(self$additional_properties)) {
        FieldUnauthorizedProblemObject[[key]] <- self$additional_properties[[key]]
      }

      FieldUnauthorizedProblemObject
    },
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of FieldUnauthorizedProblem
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`field`)) {
        self$`field` <- this_object$`field`
      }
      if (!is.null(this_object$`resource_type`)) {
        if (!is.null(this_object$`resource_type`) && !(this_object$`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
          stop(paste("Error! \"", this_object$`resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
        }
        self$`resource_type` <- this_object$`resource_type`
      }
      if (!is.null(this_object$`section`)) {
        if (!is.null(this_object$`section`) && !(this_object$`section` %in% c("data", "includes"))) {
          stop(paste("Error! \"", this_object$`section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
        }
        self$`section` <- this_object$`section`
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
    #' @return FieldUnauthorizedProblem in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`detail`)) {
          sprintf(
            '"detail":
            "%s"
                    ',
            self$`detail`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
            '"status":
            %d
                    ',
            self$`status`
          )
        },
        if (!is.null(self$`title`)) {
          sprintf(
            '"title":
            "%s"
                    ',
            self$`title`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
            '"type":
            "%s"
                    ',
            self$`type`
          )
        },
        if (!is.null(self$`field`)) {
          sprintf(
            '"field":
            "%s"
                    ',
            self$`field`
          )
        },
        if (!is.null(self$`resource_type`)) {
          sprintf(
            '"resource_type":
            "%s"
                    ',
            self$`resource_type`
          )
        },
        if (!is.null(self$`section`)) {
          sprintf(
            '"section":
            "%s"
                    ',
            self$`section`
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
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of FieldUnauthorizedProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of FieldUnauthorizedProblem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      self$`field` <- this_object$`field`
      if (!is.null(this_object$`resource_type`) && !(this_object$`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
        stop(paste("Error! \"", this_object$`resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
      }
      self$`resource_type` <- this_object$`resource_type`
      if (!is.null(this_object$`section`) && !(this_object$`section` %in% c("data", "includes"))) {
        stop(paste("Error! \"", this_object$`section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
      }
      self$`section` <- this_object$`section`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to FieldUnauthorizedProblem
    #'
    #' @description
    #' Validate JSON input with respect to FieldUnauthorizedProblem and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        stopifnot(is.character(input_json$`title`), length(input_json$`title`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `title` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `type` is missing."))
      }
      # check the required field `field`
      if (!is.null(input_json$`field`)) {
        stopifnot(is.character(input_json$`field`), length(input_json$`field`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `field` is missing."))
      }
      # check the required field `resource_type`
      if (!is.null(input_json$`resource_type`)) {
        stopifnot(is.character(input_json$`resource_type`), length(input_json$`resource_type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `resource_type` is missing."))
      }
      # check the required field `section`
      if (!is.null(input_json$`section`)) {
        stopifnot(is.character(input_json$`section`), length(input_json$`section`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FieldUnauthorizedProblem: the required field `section` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FieldUnauthorizedProblem
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
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `field` is null
      if (is.null(self$`field`)) {
        return(FALSE)
      }

      # check if the required `resource_type` is null
      if (is.null(self$`resource_type`)) {
        return(FALSE)
      }

      # check if the required `section` is null
      if (is.null(self$`section`)) {
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
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `field` is null
      if (is.null(self$`field`)) {
        invalid_fields["field"] <- "Non-nullable required field `field` cannot be null."
      }

      # check if the required `resource_type` is null
      if (is.null(self$`resource_type`)) {
        invalid_fields["resource_type"] <- "Non-nullable required field `resource_type` cannot be null."
      }

      # check if the required `section` is null
      if (is.null(self$`section`)) {
        invalid_fields["section"] <- "Non-nullable required field `section` cannot be null."
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
# FieldUnauthorizedProblem$unlock()
#
## Below is an example to define the print fnuction
# FieldUnauthorizedProblem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FieldUnauthorizedProblem$lock()
