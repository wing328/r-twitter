#' Create a new ClientForbiddenProblem
#'
#' @description
#' A problem that indicates your client is forbidden from making this request.
#'
#' @docType class
#' @title ClientForbiddenProblem
#' @description ClientForbiddenProblem Class
#' @format An \code{R6Class} generator object
#' @field detail  character [optional]
#' @field status  integer [optional]
#' @field title  character
#' @field type  character
#' @field reason  character [optional]
#' @field registration_url  character [optional]
#' @field additional_properties named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClientForbiddenProblem <- R6::R6Class(
  "ClientForbiddenProblem",
  inherit = Problem,
  public = list(
    `detail` = NULL,
    `status` = NULL,
    `title` = NULL,
    `type` = NULL,
    `reason` = NULL,
    `registration_url` = NULL,
    `additional_properties` = NULL,
    #' Initialize a new ClientForbiddenProblem class.
    #'
    #' @description
    #' Initialize a new ClientForbiddenProblem class.
    #'
    #' @param title title
    #' @param type type
    #' @param detail detail
    #' @param status status
    #' @param reason reason
    #' @param registration_url registration_url
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `title`, `type`, `detail` = NULL, `status` = NULL, `reason` = NULL, `registration_url` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!is.null(`detail`)) {
        stopifnot(is.character(`detail`), length(`detail`) == 1)
        self$`detail` <- `detail`
      }
      if (!is.null(`status`)) {
        stopifnot(is.numeric(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!is.null(`reason`)) {
        stopifnot(is.character(`reason`), length(`reason`) == 1)
        self$`reason` <- `reason`
      }
      if (!is.null(`registration_url`)) {
        stopifnot(is.character(`registration_url`), length(`registration_url`) == 1)
        self$`registration_url` <- `registration_url`
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
    #' @return ClientForbiddenProblem in JSON format
    #' @export
    toJSON = function() {
      ClientForbiddenProblemObject <- list()
      if (!is.null(self$`detail`)) {
        ClientForbiddenProblemObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`status`)) {
        ClientForbiddenProblemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        ClientForbiddenProblemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`type`)) {
        ClientForbiddenProblemObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`reason`)) {
        ClientForbiddenProblemObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`registration_url`)) {
        ClientForbiddenProblemObject[["registration_url"]] <-
          self$`registration_url`
      }
      for (key in names(self$additional_properties)) {
        ClientForbiddenProblemObject[[key]] <- self$additional_properties[[key]]
      }

      ClientForbiddenProblemObject
    },
    #' Deserialize JSON string into an instance of ClientForbiddenProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of ClientForbiddenProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClientForbiddenProblem
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
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`registration_url`)) {
        self$`registration_url` <- this_object$`registration_url`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ClientForbiddenProblem in JSON format
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
        if (!is.null(self$`reason`)) {
          sprintf(
          '"reason":
            "%s"
                    ',
          self$`reason`
          )
        },
        if (!is.null(self$`registration_url`)) {
          sprintf(
          '"registration_url":
            "%s"
                    ',
          self$`registration_url`
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
    #' Deserialize JSON string into an instance of ClientForbiddenProblem
    #'
    #' @description
    #' Deserialize JSON string into an instance of ClientForbiddenProblem
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClientForbiddenProblem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- this_object$`detail`
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`type` <- this_object$`type`
      self$`reason` <- this_object$`reason`
      self$`registration_url` <- this_object$`registration_url`
      self
    },
    #' Validate JSON input with respect to ClientForbiddenProblem
    #'
    #' @description
    #' Validate JSON input with respect to ClientForbiddenProblem and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        stopifnot(is.character(input_json$`title`), length(input_json$`title`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ClientForbiddenProblem: the required field `title` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        stopifnot(is.character(input_json$`type`), length(input_json$`type`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ClientForbiddenProblem: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ClientForbiddenProblem
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

      invalid_fields
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)

# Unlock the class to allow modifications of the method or field
ClientForbiddenProblem$unlock()

#' Print the object
#'
#' @description
#' Print the object
#'
#' @export
ClientForbiddenProblem$set("public", "print", function(...) {
  print(jsonlite::prettify(self$toJSONString()))
  invisible(self)
})

# Lock the class to prevent modifications to the method or field
ClientForbiddenProblem$lock()

