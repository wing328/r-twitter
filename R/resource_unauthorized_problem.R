#' Create a new ResourceUnauthorizedProblem
#'
#' @description
#' A problem that indicates you are not allowed to see a particular Tweet, User, etc.
#'
#' @docType class
#' @title ResourceUnauthorizedProblem
#' @description ResourceUnauthorizedProblem Class
#' @format An \code{R6Class} generator object
#' @field detail  character [optional]
#' @field status  integer [optional]
#' @field title  character
#' @field type  character
#' @field parameter  character
#' @field resource_id  character
#' @field resource_type  character
#' @field section  character
#' @field value  character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResourceUnauthorizedProblem <- R6::R6Class(
  "ResourceUnauthorizedProblem",
  inherit = Problem,
  public = list(
    `detail` = NULL,
    `status` = NULL,
    `title` = NULL,
    `type` = NULL,
    `parameter` = NULL,
    `resource_id` = NULL,
    `resource_type` = NULL,
    `section` = NULL,
    `value` = NULL,
    `_field_list` = c("detail", "status", "title", "type", "parameter", "resource_id", "resource_type", "section", "value"),
    `additional_properties` = list(),
    #' Initialize a new ResourceUnauthorizedProblem class.
    #'
    #' @description
    #' Initialize a new ResourceUnauthorizedProblem class.
    #'
    #' @param title title
    #' @param type type
    #' @param parameter parameter
    #' @param resource_id resource_id
    #' @param resource_type resource_type
    #' @param section section
    #' @param value value
    #' @param detail detail
    #' @param status status
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`title`, `type`, `parameter`, `resource_id`, `resource_type`, `section`, `value`, `detail` = NULL, `status` = NULL, additional_properties = NULL, ...) {
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`parameter`)) {
        if (!(is.character(`parameter`) && length(`parameter`) == 1)) {
          stop(paste("Error! Invalid data for `parameter`. Must be a string:", `parameter`))
        }
        self$`parameter` <- `parameter`
      }
      if (!missing(`resource_id`)) {
        if (!(is.character(`resource_id`) && length(`resource_id`) == 1)) {
          stop(paste("Error! Invalid data for `resource_id`. Must be a string:", `resource_id`))
        }
        self$`resource_id` <- `resource_id`
      }
      if (!missing(`resource_type`)) {
        if (!(`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
          stop(paste("Error! \"", `resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
        }
        if (!(is.character(`resource_type`) && length(`resource_type`) == 1)) {
          stop(paste("Error! Invalid data for `resource_type`. Must be a string:", `resource_type`))
        }
        self$`resource_type` <- `resource_type`
      }
      if (!missing(`section`)) {
        if (!(`section` %in% c("data", "includes"))) {
          stop(paste("Error! \"", `section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
        }
        if (!(is.character(`section`) && length(`section`) == 1)) {
          stop(paste("Error! Invalid data for `section`. Must be a string:", `section`))
        }
        self$`section` <- `section`
      }
      if (!missing(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`detail`)) {
        if (!(is.character(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", `detail`))
        }
        self$`detail` <- `detail`
      }
      if (!is.null(`status`)) {
        if (!(is.numeric(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be an integer:", `status`))
        }
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
    #' @return ResourceUnauthorizedProblem in JSON format
    #' @export
    toJSON = function() {
      ResourceUnauthorizedProblemObject <- list()
      if (!is.null(self$`detail`)) {
        ResourceUnauthorizedProblemObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`status`)) {
        ResourceUnauthorizedProblemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        ResourceUnauthorizedProblemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        ResourceUnauthorizedProblemObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`parameter`)) {
        ResourceUnauthorizedProblemObject[["parameter"]] <-
          self$`parameter`
      }
      if (!is.null(self$`resource_id`)) {
        ResourceUnauthorizedProblemObject[["resource_id"]] <-
          self$`resource_id`
      }
      if (!is.null(self$`resource_type`)) {
        ResourceUnauthorizedProblemObject[["resource_type"]] <-
          self$`resource_type`
      }
      if (!is.null(self$`section`)) {
        ResourceUnauthorizedProblemObject[["section"]] <-
          self$`section`
      }
      if (!is.null(self$`value`)) {
        ResourceUnauthorizedProblemObject[["value"]] <-
          self$`value`
      }
      for (key in names(self$additional_properties)) {
        ResourceUnauthorizedProblemObject[[key]] <- self$additional_properties[[key]]
      }

      ResourceUnauthorizedProblemObject
    },
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResourceUnauthorizedProblem
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
      if (!is.null(this_object$`parameter`)) {
        self$`parameter` <- this_object$`parameter`
      }
      if (!is.null(this_object$`resource_id`)) {
        self$`resource_id` <- this_object$`resource_id`
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
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
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
    #' @return ResourceUnauthorizedProblem in JSON format
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
        if (!is.null(self$`parameter`)) {
          sprintf(
            '"parameter":
            "%s"
                    ',
            self$`parameter`
          )
        },
        if (!is.null(self$`resource_id`)) {
          sprintf(
            '"resource_id":
            "%s"
                    ',
            self$`resource_id`
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
        },
        if (!is.null(self$`value`)) {
          sprintf(
            '"value":
            "%s"
                    ',
            self$`value`
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
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResourceUnauthorizedProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResourceUnauthorizedProblem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      self$`parameter` <- this_object$`parameter`
      self$`resource_id` <- this_object$`resource_id`
      if (!is.null(this_object$`resource_type`) && !(this_object$`resource_type` %in% c("user", "tweet", "media", "list", "space"))) {
        stop(paste("Error! \"", this_object$`resource_type`, "\" cannot be assigned to `resource_type`. Must be \"user\", \"tweet\", \"media\", \"list\", \"space\".", sep = ""))
      }
      self$`resource_type` <- this_object$`resource_type`
      if (!is.null(this_object$`section`) && !(this_object$`section` %in% c("data", "includes"))) {
        stop(paste("Error! \"", this_object$`section`, "\" cannot be assigned to `section`. Must be \"data\", \"includes\".", sep = ""))
      }
      self$`section` <- this_object$`section`
      self$`value` <- this_object$`value`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ResourceUnauthorizedProblem
    #'
    #' @description
    #' Validate JSON input with respect to ResourceUnauthorizedProblem and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `title` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `type` is missing."))
      }
      # check the required field `parameter`
      if (!is.null(input_json$`parameter`)) {
        if (!(is.character(input_json$`parameter`) && length(input_json$`parameter`) == 1)) {
          stop(paste("Error! Invalid data for `parameter`. Must be a string:", input_json$`parameter`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `parameter` is missing."))
      }
      # check the required field `resource_id`
      if (!is.null(input_json$`resource_id`)) {
        if (!(is.character(input_json$`resource_id`) && length(input_json$`resource_id`) == 1)) {
          stop(paste("Error! Invalid data for `resource_id`. Must be a string:", input_json$`resource_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `resource_id` is missing."))
      }
      # check the required field `resource_type`
      if (!is.null(input_json$`resource_type`)) {
        if (!(is.character(input_json$`resource_type`) && length(input_json$`resource_type`) == 1)) {
          stop(paste("Error! Invalid data for `resource_type`. Must be a string:", input_json$`resource_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `resource_type` is missing."))
      }
      # check the required field `section`
      if (!is.null(input_json$`section`)) {
        if (!(is.character(input_json$`section`) && length(input_json$`section`) == 1)) {
          stop(paste("Error! Invalid data for `section`. Must be a string:", input_json$`section`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `section` is missing."))
      }
      # check the required field `value`
      if (!is.null(input_json$`value`)) {
        if (!(is.character(input_json$`value`) && length(input_json$`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", input_json$`value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ResourceUnauthorizedProblem: the required field `value` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ResourceUnauthorizedProblem
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

      # check if the required `parameter` is null
      if (is.null(self$`parameter`)) {
        return(FALSE)
      }

      # check if the required `resource_id` is null
      if (is.null(self$`resource_id`)) {
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

      # check if the required `value` is null
      if (is.null(self$`value`)) {
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

      # check if the required `parameter` is null
      if (is.null(self$`parameter`)) {
        invalid_fields["parameter"] <- "Non-nullable required field `parameter` cannot be null."
      }

      # check if the required `resource_id` is null
      if (is.null(self$`resource_id`)) {
        invalid_fields["resource_id"] <- "Non-nullable required field `resource_id` cannot be null."
      }

      # check if the required `resource_type` is null
      if (is.null(self$`resource_type`)) {
        invalid_fields["resource_type"] <- "Non-nullable required field `resource_type` cannot be null."
      }

      # check if the required `section` is null
      if (is.null(self$`section`)) {
        invalid_fields["section"] <- "Non-nullable required field `section` cannot be null."
      }

      # check if the required `value` is null
      if (is.null(self$`value`)) {
        invalid_fields["value"] <- "Non-nullable required field `value` cannot be null."
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
# ResourceUnauthorizedProblem$unlock()
#
## Below is an example to define the print fnuction
# ResourceUnauthorizedProblem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ResourceUnauthorizedProblem$lock()
