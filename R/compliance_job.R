#' Create a new ComplianceJob
#'
#' @description
#' ComplianceJob Class
#'
#' @docType class
#' @title ComplianceJob
#' @description ComplianceJob Class
#' @format An \code{R6Class} generator object
#' @field created_at Creation time of the compliance job. character
#' @field download_expires_at Expiration time of the download URL. character
#' @field download_url URL from which the user will retrieve their compliance results. character
#' @field id Compliance Job ID. character
#' @field name User-provided name for a compliance job. character [optional]
#' @field status  \link{ComplianceJobStatus}
#' @field type  \link{ComplianceJobType}
#' @field upload_expires_at Expiration time of the upload URL. character
#' @field upload_url URL to which the user will upload their Tweet or user IDs. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComplianceJob <- R6::R6Class(
  "ComplianceJob",
  public = list(
    `created_at` = NULL,
    `download_expires_at` = NULL,
    `download_url` = NULL,
    `id` = NULL,
    `name` = NULL,
    `status` = NULL,
    `type` = NULL,
    `upload_expires_at` = NULL,
    `upload_url` = NULL,
    `_field_list` = c("created_at", "download_expires_at", "download_url", "id", "name", "status", "type", "upload_expires_at", "upload_url"),
    `additional_properties` = list(),
    #' Initialize a new ComplianceJob class.
    #'
    #' @description
    #' Initialize a new ComplianceJob class.
    #'
    #' @param created_at Creation time of the compliance job.
    #' @param download_expires_at Expiration time of the download URL.
    #' @param download_url URL from which the user will retrieve their compliance results.
    #' @param id Compliance Job ID.
    #' @param status status
    #' @param type type
    #' @param upload_expires_at Expiration time of the upload URL.
    #' @param upload_url URL to which the user will upload their Tweet or user IDs.
    #' @param name User-provided name for a compliance job.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`created_at`, `download_expires_at`, `download_url`, `id`, `status`, `type`, `upload_expires_at`, `upload_url`, `name` = NULL, additional_properties = NULL, ...) {
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`download_expires_at`)) {
        if (!(is.character(`download_expires_at`) && length(`download_expires_at`) == 1)) {
          stop(paste("Error! Invalid data for `download_expires_at`. Must be a string:", `download_expires_at`))
        }
        self$`download_expires_at` <- `download_expires_at`
      }
      if (!missing(`download_url`)) {
        if (!(is.character(`download_url`) && length(`download_url`) == 1)) {
          stop(paste("Error! Invalid data for `download_url`. Must be a string:", `download_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`download_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `download_url`. Must be a URL:", `download_url`))
        }
        self$`download_url` <- `download_url`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`type`)) {
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!missing(`upload_expires_at`)) {
        if (!(is.character(`upload_expires_at`) && length(`upload_expires_at`) == 1)) {
          stop(paste("Error! Invalid data for `upload_expires_at`. Must be a string:", `upload_expires_at`))
        }
        self$`upload_expires_at` <- `upload_expires_at`
      }
      if (!missing(`upload_url`)) {
        if (!(is.character(`upload_url`) && length(`upload_url`) == 1)) {
          stop(paste("Error! Invalid data for `upload_url`. Must be a string:", `upload_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`upload_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `upload_url`. Must be a URL:", `upload_url`))
        }
        self$`upload_url` <- `upload_url`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return ComplianceJob in JSON format
    #' @export
    toJSON = function() {
      ComplianceJobObject <- list()
      if (!is.null(self$`created_at`)) {
        ComplianceJobObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`download_expires_at`)) {
        ComplianceJobObject[["download_expires_at"]] <-
          self$`download_expires_at`
      }
      if (!is.null(self$`download_url`)) {
        ComplianceJobObject[["download_url"]] <-
          self$`download_url`
      }
      if (!is.null(self$`id`)) {
        ComplianceJobObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ComplianceJobObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`status`)) {
        ComplianceJobObject[["status"]] <-
          self$`status`$toJSON()
      }
      if (!is.null(self$`type`)) {
        ComplianceJobObject[["type"]] <-
          self$`type`$toJSON()
      }
      if (!is.null(self$`upload_expires_at`)) {
        ComplianceJobObject[["upload_expires_at"]] <-
          self$`upload_expires_at`
      }
      if (!is.null(self$`upload_url`)) {
        ComplianceJobObject[["upload_url"]] <-
          self$`upload_url`
      }
      for (key in names(self$additional_properties)) {
        ComplianceJobObject[[key]] <- self$additional_properties[[key]]
      }

      ComplianceJobObject
    },
    #' Deserialize JSON string into an instance of ComplianceJob
    #'
    #' @description
    #' Deserialize JSON string into an instance of ComplianceJob
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceJob
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`download_expires_at`)) {
        self$`download_expires_at` <- this_object$`download_expires_at`
      }
      if (!is.null(this_object$`download_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`download_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `download_url`. Must be a URL:", this_object$`download_url`))
        }
        self$`download_url` <- this_object$`download_url`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`status`)) {
        status_object <- ComplianceJobStatus$new()
        status_object$fromJSON(jsonlite::toJSON(this_object$status, auto_unbox = TRUE, digits = NA))
        self$`status` <- status_object
      }
      if (!is.null(this_object$`type`)) {
        type_object <- ComplianceJobType$new()
        type_object$fromJSON(jsonlite::toJSON(this_object$type, auto_unbox = TRUE, digits = NA))
        self$`type` <- type_object
      }
      if (!is.null(this_object$`upload_expires_at`)) {
        self$`upload_expires_at` <- this_object$`upload_expires_at`
      }
      if (!is.null(this_object$`upload_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`upload_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `upload_url`. Must be a URL:", this_object$`upload_url`))
        }
        self$`upload_url` <- this_object$`upload_url`
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
    #' @return ComplianceJob in JSON format
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
        if (!is.null(self$`download_expires_at`)) {
          sprintf(
            '"download_expires_at":
            "%s"
                    ',
            self$`download_expires_at`
          )
        },
        if (!is.null(self$`download_url`)) {
          sprintf(
            '"download_url":
            "%s"
                    ',
            self$`download_url`
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
        if (!is.null(self$`name`)) {
          sprintf(
            '"name":
            "%s"
                    ',
            self$`name`
          )
        },
        if (!is.null(self$`status`)) {
          sprintf(
            '"status":
          %s
          ',
            jsonlite::toJSON(self$`status`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
            '"type":
          %s
          ',
            jsonlite::toJSON(self$`type`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`upload_expires_at`)) {
          sprintf(
            '"upload_expires_at":
            "%s"
                    ',
            self$`upload_expires_at`
          )
        },
        if (!is.null(self$`upload_url`)) {
          sprintf(
            '"upload_url":
            "%s"
                    ',
            self$`upload_url`
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
    #' Deserialize JSON string into an instance of ComplianceJob
    #'
    #' @description
    #' Deserialize JSON string into an instance of ComplianceJob
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComplianceJob
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`download_expires_at` <- this_object$`download_expires_at`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`download_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `download_url`. Must be a URL:", this_object$`download_url`))
      }
      self$`download_url` <- this_object$`download_url`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`status` <- ComplianceJobStatus$new()$fromJSON(jsonlite::toJSON(this_object$status, auto_unbox = TRUE, digits = NA))
      self$`type` <- ComplianceJobType$new()$fromJSON(jsonlite::toJSON(this_object$type, auto_unbox = TRUE, digits = NA))
      self$`upload_expires_at` <- this_object$`upload_expires_at`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`upload_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `upload_url`. Must be a URL:", this_object$`upload_url`))
      }
      self$`upload_url` <- this_object$`upload_url`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to ComplianceJob
    #'
    #' @description
    #' Validate JSON input with respect to ComplianceJob and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `created_at` is missing."))
      }
      # check the required field `download_expires_at`
      if (!is.null(input_json$`download_expires_at`)) {
        if (!(is.character(input_json$`download_expires_at`) && length(input_json$`download_expires_at`) == 1)) {
          stop(paste("Error! Invalid data for `download_expires_at`. Must be a string:", input_json$`download_expires_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `download_expires_at` is missing."))
      }
      # check the required field `download_url`
      if (!is.null(input_json$`download_url`)) {
        if (!(is.character(input_json$`download_url`) && length(input_json$`download_url`) == 1)) {
          stop(paste("Error! Invalid data for `download_url`. Must be a string:", input_json$`download_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`download_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `download_url`. Must be a URL:", input_json$`download_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `download_url` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `id` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `status` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(R6::is.R6(input_json$`type`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `type` is missing."))
      }
      # check the required field `upload_expires_at`
      if (!is.null(input_json$`upload_expires_at`)) {
        if (!(is.character(input_json$`upload_expires_at`) && length(input_json$`upload_expires_at`) == 1)) {
          stop(paste("Error! Invalid data for `upload_expires_at`. Must be a string:", input_json$`upload_expires_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `upload_expires_at` is missing."))
      }
      # check the required field `upload_url`
      if (!is.null(input_json$`upload_url`)) {
        if (!(is.character(input_json$`upload_url`) && length(input_json$`upload_url`) == 1)) {
          stop(paste("Error! Invalid data for `upload_url`. Must be a string:", input_json$`upload_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`upload_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `upload_url`. Must be a URL:", input_json$`upload_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `upload_url` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ComplianceJob
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `download_expires_at` is null
      if (is.null(self$`download_expires_at`)) {
        return(FALSE)
      }

      # check if the required `download_url` is null
      if (is.null(self$`download_url`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 64) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `upload_expires_at` is null
      if (is.null(self$`upload_expires_at`)) {
        return(FALSE)
      }

      # check if the required `upload_url` is null
      if (is.null(self$`upload_url`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `download_expires_at` is null
      if (is.null(self$`download_expires_at`)) {
        invalid_fields["download_expires_at"] <- "Non-nullable required field `download_expires_at` cannot be null."
      }

      # check if the required `download_url` is null
      if (is.null(self$`download_url`)) {
        invalid_fields["download_url"] <- "Non-nullable required field `download_url` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      if (!str_detect(self$`id`, "^[0-9]{1,19}$")) {
        invalid_fields["id"] <- "Invalid value for `id`, must conform to the pattern ^[0-9]{1,19}$."
      }

      if (nchar(self$`name`) > 64) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 64."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `upload_expires_at` is null
      if (is.null(self$`upload_expires_at`)) {
        invalid_fields["upload_expires_at"] <- "Non-nullable required field `upload_expires_at` cannot be null."
      }

      # check if the required `upload_url` is null
      if (is.null(self$`upload_url`)) {
        invalid_fields["upload_url"] <- "Non-nullable required field `upload_url` cannot be null."
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
# ComplianceJob$unlock()
#
## Below is an example to define the print fnuction
# ComplianceJob$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ComplianceJob$lock()
