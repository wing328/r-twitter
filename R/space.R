#' Create a new Space
#'
#' @description
#'
#'
#' @docType class
#' @title Space
#' @description Space Class
#' @format An \code{R6Class} generator object
#' @field created_at Creation time of the Space. character [optional]
#' @field creator_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. character [optional]
#' @field ended_at End time of the Space. character [optional]
#' @field host_ids The user ids for the hosts of the Space. list(character) [optional]
#' @field id The unique identifier of this Space. character
#' @field invited_user_ids An array of user ids for people who were invited to a Space. list(character) [optional]
#' @field is_ticketed Denotes if the Space is a ticketed Space. character [optional]
#' @field lang The language of the Space. character [optional]
#' @field participant_count The number of participants in a Space. integer [optional]
#' @field scheduled_start A date time stamp for when a Space is scheduled to begin. character [optional]
#' @field speaker_ids An array of user ids for people who were speakers in a Space. list(character) [optional]
#' @field started_at When the Space was started as a date string. character [optional]
#' @field state The current state of the Space. character
#' @field subscriber_count The number of people who have either purchased a ticket or set a reminder for this Space. integer [optional]
#' @field title The title of the Space. character [optional]
#' @field topics The topics of a Space, as selected by its creator. list(\link{SpaceTopicsInner}) [optional]
#' @field updated_at When the Space was last updated. character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Space <- R6::R6Class(
  "Space",
  public = list(
    `created_at` = NULL,
    `creator_id` = NULL,
    `ended_at` = NULL,
    `host_ids` = NULL,
    `id` = NULL,
    `invited_user_ids` = NULL,
    `is_ticketed` = NULL,
    `lang` = NULL,
    `participant_count` = NULL,
    `scheduled_start` = NULL,
    `speaker_ids` = NULL,
    `started_at` = NULL,
    `state` = NULL,
    `subscriber_count` = NULL,
    `title` = NULL,
    `topics` = NULL,
    `updated_at` = NULL,
    `_field_list` = c("created_at", "creator_id", "ended_at", "host_ids", "id", "invited_user_ids", "is_ticketed", "lang", "participant_count", "scheduled_start", "speaker_ids", "started_at", "state", "subscriber_count", "title", "topics", "updated_at"),
    `additional_properties` = list(),
    #' Initialize a new Space class.
    #'
    #' @description
    #' Initialize a new Space class.
    #'
    #' @param id The unique identifier of this Space.
    #' @param state The current state of the Space.
    #' @param created_at Creation time of the Space.
    #' @param creator_id Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    #' @param ended_at End time of the Space.
    #' @param host_ids The user ids for the hosts of the Space.
    #' @param invited_user_ids An array of user ids for people who were invited to a Space.
    #' @param is_ticketed Denotes if the Space is a ticketed Space.
    #' @param lang The language of the Space.
    #' @param participant_count The number of participants in a Space.
    #' @param scheduled_start A date time stamp for when a Space is scheduled to begin.
    #' @param speaker_ids An array of user ids for people who were speakers in a Space.
    #' @param started_at When the Space was started as a date string.
    #' @param subscriber_count The number of people who have either purchased a ticket or set a reminder for this Space.
    #' @param title The title of the Space.
    #' @param topics The topics of a Space, as selected by its creator.
    #' @param updated_at When the Space was last updated.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id`, `state`, `created_at` = NULL, `creator_id` = NULL, `ended_at` = NULL, `host_ids` = NULL, `invited_user_ids` = NULL, `is_ticketed` = NULL, `lang` = NULL, `participant_count` = NULL, `scheduled_start` = NULL, `speaker_ids` = NULL, `started_at` = NULL, `subscriber_count` = NULL, `title` = NULL, `topics` = NULL, `updated_at` = NULL, additional_properties = NULL, ...) {
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`state`)) {
        if (!(`state` %in% c("live", "scheduled", "ended"))) {
          stop(paste("Error! \"", `state`, "\" cannot be assigned to `state`. Must be \"live\", \"scheduled\", \"ended\".", sep = ""))
        }
        stopifnot(is.character(`state`), length(`state`) == 1)
        self$`state` <- `state`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid DateTime. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`creator_id`)) {
        stopifnot(is.character(`creator_id`), length(`creator_id`) == 1)
        self$`creator_id` <- `creator_id`
      }
      if (!is.null(`ended_at`)) {
        if (!is.character(`ended_at`)) {
          stop(paste("Error! Invalid DateTime. Must be a string:", `ended_at`))
        }
        self$`ended_at` <- `ended_at`
      }
      if (!is.null(`host_ids`)) {
        stopifnot(is.vector(`host_ids`), length(`host_ids`) != 0)
        sapply(`host_ids`, function(x) stopifnot(is.character(x)))
        self$`host_ids` <- `host_ids`
      }
      if (!is.null(`invited_user_ids`)) {
        stopifnot(is.vector(`invited_user_ids`), length(`invited_user_ids`) != 0)
        sapply(`invited_user_ids`, function(x) stopifnot(is.character(x)))
        self$`invited_user_ids` <- `invited_user_ids`
      }
      if (!is.null(`is_ticketed`)) {
        stopifnot(is.logical(`is_ticketed`), length(`is_ticketed`) == 1)
        self$`is_ticketed` <- `is_ticketed`
      }
      if (!is.null(`lang`)) {
        stopifnot(is.character(`lang`), length(`lang`) == 1)
        self$`lang` <- `lang`
      }
      if (!is.null(`participant_count`)) {
        stopifnot(is.numeric(`participant_count`), length(`participant_count`) == 1)
        self$`participant_count` <- `participant_count`
      }
      if (!is.null(`scheduled_start`)) {
        if (!is.character(`scheduled_start`)) {
          stop(paste("Error! Invalid DateTime. Must be a string:", `scheduled_start`))
        }
        self$`scheduled_start` <- `scheduled_start`
      }
      if (!is.null(`speaker_ids`)) {
        stopifnot(is.vector(`speaker_ids`), length(`speaker_ids`) != 0)
        sapply(`speaker_ids`, function(x) stopifnot(is.character(x)))
        self$`speaker_ids` <- `speaker_ids`
      }
      if (!is.null(`started_at`)) {
        if (!is.character(`started_at`)) {
          stop(paste("Error! Invalid DateTime. Must be a string:", `started_at`))
        }
        self$`started_at` <- `started_at`
      }
      if (!is.null(`subscriber_count`)) {
        stopifnot(is.numeric(`subscriber_count`), length(`subscriber_count`) == 1)
        self$`subscriber_count` <- `subscriber_count`
      }
      if (!is.null(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!is.null(`topics`)) {
        stopifnot(is.vector(`topics`), length(`topics`) != 0)
        sapply(`topics`, function(x) stopifnot(R6::is.R6(x)))
        self$`topics` <- `topics`
      }
      if (!is.null(`updated_at`)) {
        if (!is.character(`updated_at`)) {
          stop(paste("Error! Invalid DateTime. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return Space in JSON format
    #' @export
    toJSON = function() {
      SpaceObject <- list()
      if (!is.null(self$`created_at`)) {
        SpaceObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`creator_id`)) {
        SpaceObject[["creator_id"]] <-
          self$`creator_id`
      }
      if (!is.null(self$`ended_at`)) {
        SpaceObject[["ended_at"]] <-
          self$`ended_at`
      }
      if (!is.null(self$`host_ids`)) {
        SpaceObject[["host_ids"]] <-
          self$`host_ids`
      }
      if (!is.null(self$`id`)) {
        SpaceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`invited_user_ids`)) {
        SpaceObject[["invited_user_ids"]] <-
          self$`invited_user_ids`
      }
      if (!is.null(self$`is_ticketed`)) {
        SpaceObject[["is_ticketed"]] <-
          self$`is_ticketed`
      }
      if (!is.null(self$`lang`)) {
        SpaceObject[["lang"]] <-
          self$`lang`
      }
      if (!is.null(self$`participant_count`)) {
        SpaceObject[["participant_count"]] <-
          self$`participant_count`
      }
      if (!is.null(self$`scheduled_start`)) {
        SpaceObject[["scheduled_start"]] <-
          self$`scheduled_start`
      }
      if (!is.null(self$`speaker_ids`)) {
        SpaceObject[["speaker_ids"]] <-
          self$`speaker_ids`
      }
      if (!is.null(self$`started_at`)) {
        SpaceObject[["started_at"]] <-
          self$`started_at`
      }
      if (!is.null(self$`state`)) {
        SpaceObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`subscriber_count`)) {
        SpaceObject[["subscriber_count"]] <-
          self$`subscriber_count`
      }
      if (!is.null(self$`title`)) {
        SpaceObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`topics`)) {
        SpaceObject[["topics"]] <-
          lapply(self$`topics`, function(x) x$toJSON())
      }
      if (!is.null(self$`updated_at`)) {
        SpaceObject[["updated_at"]] <-
          self$`updated_at`
      }
      for (key in names(self$additional_properties)) {
        SpaceObject[[key]] <- self$additional_properties[[key]]
      }

      SpaceObject
    },
    #' Deserialize JSON string into an instance of Space
    #'
    #' @description
    #' Deserialize JSON string into an instance of Space
    #'
    #' @param input_json the JSON input
    #' @return the instance of Space
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`creator_id`)) {
        self$`creator_id` <- this_object$`creator_id`
      }
      if (!is.null(this_object$`ended_at`)) {
        self$`ended_at` <- this_object$`ended_at`
      }
      if (!is.null(this_object$`host_ids`)) {
        self$`host_ids` <- ApiClient$new()$deserializeObj(this_object$`host_ids`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`invited_user_ids`)) {
        self$`invited_user_ids` <- ApiClient$new()$deserializeObj(this_object$`invited_user_ids`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`is_ticketed`)) {
        self$`is_ticketed` <- this_object$`is_ticketed`
      }
      if (!is.null(this_object$`lang`)) {
        self$`lang` <- this_object$`lang`
      }
      if (!is.null(this_object$`participant_count`)) {
        self$`participant_count` <- this_object$`participant_count`
      }
      if (!is.null(this_object$`scheduled_start`)) {
        self$`scheduled_start` <- this_object$`scheduled_start`
      }
      if (!is.null(this_object$`speaker_ids`)) {
        self$`speaker_ids` <- ApiClient$new()$deserializeObj(this_object$`speaker_ids`, "array[character]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`started_at`)) {
        self$`started_at` <- this_object$`started_at`
      }
      if (!is.null(this_object$`state`)) {
        if (!is.null(this_object$`state`) && !(this_object$`state` %in% c("live", "scheduled", "ended"))) {
          stop(paste("Error! \"", this_object$`state`, "\" cannot be assigned to `state`. Must be \"live\", \"scheduled\", \"ended\".", sep = ""))
        }
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`subscriber_count`)) {
        self$`subscriber_count` <- this_object$`subscriber_count`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`topics`)) {
        self$`topics` <- ApiClient$new()$deserializeObj(this_object$`topics`, "array[SpaceTopicsInner]", loadNamespace("twitter"))
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
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
    #' @return Space in JSON format
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
        if (!is.null(self$`creator_id`)) {
          sprintf(
            '"creator_id":
            "%s"
                    ',
            self$`creator_id`
          )
        },
        if (!is.null(self$`ended_at`)) {
          sprintf(
            '"ended_at":
            "%s"
                    ',
            self$`ended_at`
          )
        },
        if (!is.null(self$`host_ids`)) {
          sprintf(
            '"host_ids":
             [%s]
          ',
            paste(unlist(lapply(self$`host_ids`, function(x) paste0('"', x, '"'))), collapse = ",")
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
        if (!is.null(self$`invited_user_ids`)) {
          sprintf(
            '"invited_user_ids":
             [%s]
          ',
            paste(unlist(lapply(self$`invited_user_ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`is_ticketed`)) {
          sprintf(
            '"is_ticketed":
            %s
                    ',
            tolower(self$`is_ticketed`)
          )
        },
        if (!is.null(self$`lang`)) {
          sprintf(
            '"lang":
            "%s"
                    ',
            self$`lang`
          )
        },
        if (!is.null(self$`participant_count`)) {
          sprintf(
            '"participant_count":
            %d
                    ',
            self$`participant_count`
          )
        },
        if (!is.null(self$`scheduled_start`)) {
          sprintf(
            '"scheduled_start":
            "%s"
                    ',
            self$`scheduled_start`
          )
        },
        if (!is.null(self$`speaker_ids`)) {
          sprintf(
            '"speaker_ids":
             [%s]
          ',
            paste(unlist(lapply(self$`speaker_ids`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`started_at`)) {
          sprintf(
            '"started_at":
            "%s"
                    ',
            self$`started_at`
          )
        },
        if (!is.null(self$`state`)) {
          sprintf(
            '"state":
            "%s"
                    ',
            self$`state`
          )
        },
        if (!is.null(self$`subscriber_count`)) {
          sprintf(
            '"subscriber_count":
            %d
                    ',
            self$`subscriber_count`
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
        if (!is.null(self$`topics`)) {
          sprintf(
            '"topics":
          [%s]
',
            paste(sapply(self$`topics`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`updated_at`)) {
          sprintf(
            '"updated_at":
            "%s"
                    ',
            self$`updated_at`
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
    #' Deserialize JSON string into an instance of Space
    #'
    #' @description
    #' Deserialize JSON string into an instance of Space
    #'
    #' @param input_json the JSON input
    #' @return the instance of Space
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`creator_id` <- this_object$`creator_id`
      self$`ended_at` <- this_object$`ended_at`
      self$`host_ids` <- ApiClient$new()$deserializeObj(this_object$`host_ids`, "array[character]", loadNamespace("twitter"))
      self$`id` <- this_object$`id`
      self$`invited_user_ids` <- ApiClient$new()$deserializeObj(this_object$`invited_user_ids`, "array[character]", loadNamespace("twitter"))
      self$`is_ticketed` <- this_object$`is_ticketed`
      self$`lang` <- this_object$`lang`
      self$`participant_count` <- this_object$`participant_count`
      self$`scheduled_start` <- this_object$`scheduled_start`
      self$`speaker_ids` <- ApiClient$new()$deserializeObj(this_object$`speaker_ids`, "array[character]", loadNamespace("twitter"))
      self$`started_at` <- this_object$`started_at`
      if (!is.null(this_object$`state`) && !(this_object$`state` %in% c("live", "scheduled", "ended"))) {
        stop(paste("Error! \"", this_object$`state`, "\" cannot be assigned to `state`. Must be \"live\", \"scheduled\", \"ended\".", sep = ""))
      }
      self$`state` <- this_object$`state`
      self$`subscriber_count` <- this_object$`subscriber_count`
      self$`title` <- this_object$`title`
      self$`topics` <- ApiClient$new()$deserializeObj(this_object$`topics`, "array[SpaceTopicsInner]", loadNamespace("twitter"))
      self$`updated_at` <- this_object$`updated_at`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to Space
    #'
    #' @description
    #' Validate JSON input with respect to Space and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        stopifnot(is.character(input_json$`id`), length(input_json$`id`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Space: the required field `id` is missing."))
      }
      # check the required field `state`
      if (!is.null(input_json$`state`)) {
        stopifnot(is.character(input_json$`state`), length(input_json$`state`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Space: the required field `state` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Space
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
      if (!str_detect(self$`creator_id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[a-zA-Z0-9]{1,13}$")) {
        return(FALSE)
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
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
      if (!str_detect(self$`creator_id`, "^[0-9]{1,19}$")) {
        invalid_fields["creator_id"] <- "Invalid value for `creator_id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[a-zA-Z0-9]{1,13}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[a-zA-Z0-9]{1,13}$."
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
        invalid_fields["state"] <- "Non-nullable required field `state` cannot be null."
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
# Space$unlock()
#
## Below is an example to define the print fnuction
# Space$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Space$lock()
