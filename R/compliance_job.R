#' Create a new ComplianceJob
#'
#' @description
#' ComplianceJob Class
#'
#' @docType class
#' @title ComplianceJob
#' @description ComplianceJob Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field download_expires_at  character
#' @field download_url  character
#' @field id  character
#' @field name  character [optional]
#' @field status  \link{ComplianceJobStatus}
#' @field type  \link{ComplianceJobType}
#' @field upload_expires_at  character
#' @field upload_url  character
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
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `created_at`, `download_expires_at`, `download_url`, `id`, `status`, `type`, `upload_expires_at`, `upload_url`, `name` = NULL, ...
    ) {
      if (!missing(`created_at`)) {
        stopifnot(is.character(`created_at`), length(`created_at`) == 1)
        self$`created_at` <- `created_at`
      }
      if (!missing(`download_expires_at`)) {
        stopifnot(is.character(`download_expires_at`), length(`download_expires_at`) == 1)
        self$`download_expires_at` <- `download_expires_at`
      }
      if (!missing(`download_url`)) {
        stopifnot(is.character(`download_url`), length(`download_url`) == 1)
        self$`download_url` <- `download_url`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
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
        stopifnot(is.character(`upload_expires_at`), length(`upload_expires_at`) == 1)
        self$`upload_expires_at` <- `upload_expires_at`
      }
      if (!missing(`upload_url`)) {
        stopifnot(is.character(`upload_url`), length(`upload_url`) == 1)
        self$`upload_url` <- `upload_url`
      }
      if (!is.null(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
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
        self$`upload_url` <- this_object$`upload_url`
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
      as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
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
      self$`download_url` <- this_object$`download_url`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`status` <- ComplianceJobStatus$new()$fromJSON(jsonlite::toJSON(this_object$status, auto_unbox = TRUE, digits = NA))
      self$`type` <- ComplianceJobType$new()$fromJSON(jsonlite::toJSON(this_object$type, auto_unbox = TRUE, digits = NA))
      self$`upload_expires_at` <- this_object$`upload_expires_at`
      self$`upload_url` <- this_object$`upload_url`
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
        stopifnot(is.character(input_json$`created_at`), length(input_json$`created_at`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `created_at` is missing."))
      }
      # check the required field `download_expires_at`
      if (!is.null(input_json$`download_expires_at`)) {
        stopifnot(is.character(input_json$`download_expires_at`), length(input_json$`download_expires_at`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `download_expires_at` is missing."))
      }
      # check the required field `download_url`
      if (!is.null(input_json$`download_url`)) {
        stopifnot(is.character(input_json$`download_url`), length(input_json$`download_url`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `download_url` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        stopifnot(is.character(input_json$`id`), length(input_json$`id`) == 1)
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
        stopifnot(is.character(input_json$`upload_expires_at`), length(input_json$`upload_expires_at`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ComplianceJob: the required field `upload_expires_at` is missing."))
      }
      # check the required field `upload_url`
      if (!is.null(input_json$`upload_url`)) {
        stopifnot(is.character(input_json$`upload_url`), length(input_json$`upload_url`) == 1)
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
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
ComplianceJob$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
ComplianceJob$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
ComplianceJob$lock()

