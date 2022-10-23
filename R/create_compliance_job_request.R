#' Create a new CreateComplianceJobRequest
#'
#' @description
#' A request to create a new batch compliance job.
#'
#' @docType class
#' @title CreateComplianceJobRequest
#' @description CreateComplianceJobRequest Class
#' @format An \code{R6Class} generator object
#' @field name User-provided name for a compliance job. character [optional]
#' @field resumable If true, this endpoint will return a pre-signed URL with resumable uploads enabled. character [optional]
#' @field type Type of compliance job to list. character
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateComplianceJobRequest <- R6::R6Class(
  "CreateComplianceJobRequest",
  public = list(
    `name` = NULL,
    `resumable` = NULL,
    `type` = NULL,
    `_field_list` = c("name", "resumable", "type"),
    `additional_properties` = list(),
    #' Initialize a new CreateComplianceJobRequest class.
    #'
    #' @description
    #' Initialize a new CreateComplianceJobRequest class.
    #'
    #' @param type Type of compliance job to list.
    #' @param name User-provided name for a compliance job.
    #' @param resumable If true, this endpoint will return a pre-signed URL with resumable uploads enabled.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`type`, `name` = NULL, `resumable` = NULL, additional_properties = NULL, ...) {
      if (!missing(`type`)) {
        if (!(`type` %in% c("tweets", "users"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"tweets\", \"users\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`resumable`)) {
        if (!(is.logical(`resumable`) && length(`resumable`) == 1)) {
          stop(paste("Error! Invalid data for `resumable`. Must be a boolean:", `resumable`))
        }
        self$`resumable` <- `resumable`
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
    #' @return CreateComplianceJobRequest in JSON format
    #' @export
    toJSON = function() {
      CreateComplianceJobRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateComplianceJobRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`resumable`)) {
        CreateComplianceJobRequestObject[["resumable"]] <-
          self$`resumable`
      }
      if (!is.null(self$`type`)) {
        CreateComplianceJobRequestObject[["type"]] <-
          self$`type`
      }
      for (key in names(self$additional_properties)) {
        CreateComplianceJobRequestObject[[key]] <- self$additional_properties[[key]]
      }

      CreateComplianceJobRequestObject
    },
    #' Deserialize JSON string into an instance of CreateComplianceJobRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateComplianceJobRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateComplianceJobRequest
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`resumable`)) {
        self$`resumable` <- this_object$`resumable`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("tweets", "users"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"tweets\", \"users\".", sep = ""))
        }
        self$`type` <- this_object$`type`
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
    #' @return CreateComplianceJobRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
            '"name":
            "%s"
                    ',
            self$`name`
          )
        },
        if (!is.null(self$`resumable`)) {
          sprintf(
            '"resumable":
            %s
                    ',
            tolower(self$`resumable`)
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
            '"type":
            "%s"
                    ',
            self$`type`
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
    #' Deserialize JSON string into an instance of CreateComplianceJobRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of CreateComplianceJobRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateComplianceJobRequest
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`resumable` <- this_object$`resumable`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("tweets", "users"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"tweets\", \"users\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to CreateComplianceJobRequest
    #'
    #' @description
    #' Validate JSON input with respect to CreateComplianceJobRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateComplianceJobRequest: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateComplianceJobRequest
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
      if (nchar(self$`name`) > 64) {
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
      if (nchar(self$`name`) > 64) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 64."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# CreateComplianceJobRequest$unlock()
#
## Below is an example to define the print fnuction
# CreateComplianceJobRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateComplianceJobRequest$lock()
