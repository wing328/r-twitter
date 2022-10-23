#' Create a new List
#'
#' @description
#' A Twitter List is a curated group of accounts.
#'
#' @docType class
#' @title List
#' @description List Class
#' @format An \code{R6Class} generator object
#' @field created_at  character [optional]
#' @field description  character [optional]
#' @field follower_count  integer [optional]
#' @field id The unique identifier of this List. character
#' @field member_count  integer [optional]
#' @field name The name of this List. character
#' @field owner_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field item_private  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
List <- R6::R6Class(
  "List",
  public = list(
    `created_at` = NULL,
    `description` = NULL,
    `follower_count` = NULL,
    `id` = NULL,
    `member_count` = NULL,
    `name` = NULL,
    `owner_id` = NULL,
    `item_private` = NULL,
    `_field_list` = c("created_at", "description", "follower_count", "id", "member_count", "name", "owner_id", "item_private"),
    `additional_properties` = list(),
    #' Initialize a new List class.
    #'
    #' @description
    #' Initialize a new List class.
    #'
    #' @param id The unique identifier of this List.
    #' @param name The name of this List.
    #' @param created_at created_at
    #' @param description description
    #' @param follower_count follower_count
    #' @param member_count member_count
    #' @param owner_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param item_private item_private
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `name`, `created_at` = NULL, `description` = NULL, `follower_count` = NULL, `member_count` = NULL, `owner_id` = NULL, `item_private` = NULL, additional_properties = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`follower_count`)) {
        if (!(is.numeric(`follower_count`) && length(`follower_count`) == 1)) {
          stop(paste("Error! Invalid data for `follower_count`. Must be an integer:", `follower_count`))
        }
        self$`follower_count` <- `follower_count`
      }
      if (!is.null(`member_count`)) {
        if (!(is.numeric(`member_count`) && length(`member_count`) == 1)) {
          stop(paste("Error! Invalid data for `member_count`. Must be an integer:", `member_count`))
        }
        self$`member_count` <- `member_count`
      }
      if (!is.null(`owner_id`)) {
        if (!(is.character(`owner_id`) && length(`owner_id`) == 1)) {
          stop(paste("Error! Invalid data for `owner_id`. Must be a string:", `owner_id`))
        }
        self$`owner_id` <- `owner_id`
      }
      if (!is.null(`item_private`)) {
        if (!(is.logical(`item_private`) && length(`item_private`) == 1)) {
          stop(paste("Error! Invalid data for `item_private`. Must be a boolean:", `item_private`))
        }
        self$`item_private` <- `item_private`
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
    #' @return List in JSON format
    #' @export
    toJSON = function() {
      ListObject <- list()
      if (!is.null(self$`created_at`)) {
        ListObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`description`)) {
        ListObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`follower_count`)) {
        ListObject[["follower_count"]] <-
          self$`follower_count`
      }
      if (!is.null(self$`id`)) {
        ListObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`member_count`)) {
        ListObject[["member_count"]] <-
          self$`member_count`
      }
      if (!is.null(self$`name`)) {
        ListObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`owner_id`)) {
        ListObject[["owner_id"]] <-
          self$`owner_id`
      }
      if (!is.null(self$`item_private`)) {
        ListObject[["private"]] <-
          self$`item_private`
      }
      for (key in names(self$additional_properties)) {
        ListObject[[key]] <- self$additional_properties[[key]]
      }

      ListObject
    },
    #' Deserialize JSON string into an instance of List
    #'
    #' @description
    #' Deserialize JSON string into an instance of List
    #'
    #' @param input_json the JSON input
    #' @return the instance of List
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`follower_count`)) {
        self$`follower_count` <- this_object$`follower_count`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`member_count`)) {
        self$`member_count` <- this_object$`member_count`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`owner_id`)) {
        self$`owner_id` <- this_object$`owner_id`
      }
      if (!is.null(this_object$`private`)) {
        self$`item_private` <- this_object$`private`
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
    #' @return List in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`created_at`)) {
          sprintf(
            '"created_at":
            "%s"
                    ',
            self$`created_at`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
            '"description":
            "%s"
                    ',
            self$`description`
          )
        },
        if (!is.null(self$`follower_count`)) {
          sprintf(
            '"follower_count":
            %d
                    ',
            self$`follower_count`
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
        if (!is.null(self$`member_count`)) {
          sprintf(
            '"member_count":
            %d
                    ',
            self$`member_count`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
            '"name":
            "%s"
                    ',
            self$`name`
          )
        },
        if (!is.null(self$`owner_id`)) {
          sprintf(
            '"owner_id":
            "%s"
                    ',
            self$`owner_id`
          )
        },
        if (!is.null(self$`item_private`)) {
          sprintf(
            '"private":
            %s
                    ',
            tolower(self$`item_private`)
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
    #' Deserialize JSON string into an instance of List
    #'
    #' @description
    #' Deserialize JSON string into an instance of List
    #'
    #' @param input_json the JSON input
    #' @return the instance of List
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`description` <- this_object$`description`
      self$`follower_count` <- this_object$`follower_count`
      self$`id` <- this_object$`id`
      self$`member_count` <- this_object$`member_count`
      self$`name` <- this_object$`name`
      self$`owner_id` <- this_object$`owner_id`
      self$`item_private` <- this_object$`item_private`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to List
    #'
    #' @description
    #' Validate JSON input with respect to List and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for List: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for List: the required field `name` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of List
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (!str_detect(self$`owner_id`, "^[0-9]{1,19}$")) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (!str_detect(self$`owner_id`, "^[0-9]{1,19}$")) {
        invalid_fields["owner_id"] <- "Invalid value for `owner_id`, must conform to the pattern ^[0-9]{1,19}$."
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
# List$unlock()
#
## Below is an example to define the print fnuction
# List$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# List$lock()
