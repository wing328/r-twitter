#' Create a new RulesRequestSummaryOneOf
#'
#' @description
#' A summary of the results of the addition of user-specified stream filtering rules.
#'
#' @docType class
#' @title RulesRequestSummaryOneOf
#' @description RulesRequestSummaryOneOf Class
#' @format An \code{R6Class} generator object
#' @field created Number of user-specified stream filtering rules that were created. integer
#' @field invalid Number of invalid user-specified stream filtering rules. integer
#' @field not_created Number of user-specified stream filtering rules that were not created. integer
#' @field valid Number of valid user-specified stream filtering rules. integer
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RulesRequestSummaryOneOf <- R6::R6Class(
  "RulesRequestSummaryOneOf",
  public = list(
    `created` = NULL,
    `invalid` = NULL,
    `not_created` = NULL,
    `valid` = NULL,
    `_field_list` = c("created", "invalid", "not_created", "valid"),
    `additional_properties` = list(),
    #' Initialize a new RulesRequestSummaryOneOf class.
    #'
    #' @description
    #' Initialize a new RulesRequestSummaryOneOf class.
    #'
    #' @param created Number of user-specified stream filtering rules that were created.
    #' @param invalid Number of invalid user-specified stream filtering rules.
    #' @param not_created Number of user-specified stream filtering rules that were not created.
    #' @param valid Number of valid user-specified stream filtering rules.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`created`, `invalid`, `not_created`, `valid`, additional_properties = NULL, ...) {
      if (!missing(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!missing(`invalid`)) {
        if (!(is.numeric(`invalid`) && length(`invalid`) == 1)) {
          stop(paste("Error! Invalid data for `invalid`. Must be an integer:", `invalid`))
        }
        self$`invalid` <- `invalid`
      }
      if (!missing(`not_created`)) {
        if (!(is.numeric(`not_created`) && length(`not_created`) == 1)) {
          stop(paste("Error! Invalid data for `not_created`. Must be an integer:", `not_created`))
        }
        self$`not_created` <- `not_created`
      }
      if (!missing(`valid`)) {
        if (!(is.numeric(`valid`) && length(`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be an integer:", `valid`))
        }
        self$`valid` <- `valid`
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
    #' @return RulesRequestSummaryOneOf in JSON format
    #' @export
    toJSON = function() {
      RulesRequestSummaryOneOfObject <- list()
      if (!is.null(self$`created`)) {
        RulesRequestSummaryOneOfObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`invalid`)) {
        RulesRequestSummaryOneOfObject[["invalid"]] <-
          self$`invalid`
      }
      if (!is.null(self$`not_created`)) {
        RulesRequestSummaryOneOfObject[["not_created"]] <-
          self$`not_created`
      }
      if (!is.null(self$`valid`)) {
        RulesRequestSummaryOneOfObject[["valid"]] <-
          self$`valid`
      }
      for (key in names(self$additional_properties)) {
        RulesRequestSummaryOneOfObject[[key]] <- self$additional_properties[[key]]
      }

      RulesRequestSummaryOneOfObject
    },
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesRequestSummaryOneOf
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`invalid`)) {
        self$`invalid` <- this_object$`invalid`
      }
      if (!is.null(this_object$`not_created`)) {
        self$`not_created` <- this_object$`not_created`
      }
      if (!is.null(this_object$`valid`)) {
        self$`valid` <- this_object$`valid`
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
    #' @return RulesRequestSummaryOneOf in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`created`)) {
          sprintf(
            '"created":
            %d
                    ',
            self$`created`
          )
        },
        if (!is.null(self$`invalid`)) {
          sprintf(
            '"invalid":
            %d
                    ',
            self$`invalid`
          )
        },
        if (!is.null(self$`not_created`)) {
          sprintf(
            '"not_created":
            %d
                    ',
            self$`not_created`
          )
        },
        if (!is.null(self$`valid`)) {
          sprintf(
            '"valid":
            %d
                    ',
            self$`valid`
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
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesRequestSummaryOneOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesRequestSummaryOneOf
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created` <- this_object$`created`
      self$`invalid` <- this_object$`invalid`
      self$`not_created` <- this_object$`not_created`
      self$`valid` <- this_object$`valid`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) {
          # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to RulesRequestSummaryOneOf
    #'
    #' @description
    #' Validate JSON input with respect to RulesRequestSummaryOneOf and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created`
      if (!is.null(input_json$`created`)) {
        if (!(is.numeric(input_json$`created`) && length(input_json$`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", input_json$`created`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesRequestSummaryOneOf: the required field `created` is missing."))
      }
      # check the required field `invalid`
      if (!is.null(input_json$`invalid`)) {
        if (!(is.numeric(input_json$`invalid`) && length(input_json$`invalid`) == 1)) {
          stop(paste("Error! Invalid data for `invalid`. Must be an integer:", input_json$`invalid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesRequestSummaryOneOf: the required field `invalid` is missing."))
      }
      # check the required field `not_created`
      if (!is.null(input_json$`not_created`)) {
        if (!(is.numeric(input_json$`not_created`) && length(input_json$`not_created`) == 1)) {
          stop(paste("Error! Invalid data for `not_created`. Must be an integer:", input_json$`not_created`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesRequestSummaryOneOf: the required field `not_created` is missing."))
      }
      # check the required field `valid`
      if (!is.null(input_json$`valid`)) {
        if (!(is.numeric(input_json$`valid`) && length(input_json$`valid`) == 1)) {
          stop(paste("Error! Invalid data for `valid`. Must be an integer:", input_json$`valid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesRequestSummaryOneOf: the required field `valid` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RulesRequestSummaryOneOf
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
      # check if the required `created` is null
      if (is.null(self$`created`)) {
        return(FALSE)
      }

      # check if the required `invalid` is null
      if (is.null(self$`invalid`)) {
        return(FALSE)
      }

      # check if the required `not_created` is null
      if (is.null(self$`not_created`)) {
        return(FALSE)
      }

      # check if the required `valid` is null
      if (is.null(self$`valid`)) {
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
      # check if the required `created` is null
      if (is.null(self$`created`)) {
        invalid_fields["created"] <- "Non-nullable required field `created` cannot be null."
      }

      # check if the required `invalid` is null
      if (is.null(self$`invalid`)) {
        invalid_fields["invalid"] <- "Non-nullable required field `invalid` cannot be null."
      }

      # check if the required `not_created` is null
      if (is.null(self$`not_created`)) {
        invalid_fields["not_created"] <- "Non-nullable required field `not_created` cannot be null."
      }

      # check if the required `valid` is null
      if (is.null(self$`valid`)) {
        invalid_fields["valid"] <- "Non-nullable required field `valid` cannot be null."
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
# RulesRequestSummaryOneOf$unlock()
#
## Below is an example to define the print fnuction
# RulesRequestSummaryOneOf$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RulesRequestSummaryOneOf$lock()
