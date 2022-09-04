#' Create a new RulesResponseMetadata
#'
#' @description
#' RulesResponseMetadata Class
#'
#' @docType class
#' @title RulesResponseMetadata
#' @description RulesResponseMetadata Class
#' @format An \code{R6Class} generator object
#' @field next_token The next token. character [optional]
#' @field result_count Number of Rules in result set. integer [optional]
#' @field sent  character
#' @field summary  \link{RulesRequestSummary} [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RulesResponseMetadata <- R6::R6Class(
  "RulesResponseMetadata",
  public = list(
    `next_token` = NULL,
    `result_count` = NULL,
    `sent` = NULL,
    `summary` = NULL,
    `_field_list` = c("next_token", "result_count", "sent", "summary"),
    `additional_properties` = list(),
    #' Initialize a new RulesResponseMetadata class.
    #'
    #' @description
    #' Initialize a new RulesResponseMetadata class.
    #'
    #' @param sent sent
    #' @param next_token The next token.
    #' @param result_count Number of Rules in result set.
    #' @param summary summary
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `sent`, `next_token` = NULL, `result_count` = NULL, `summary` = NULL, additional_properties = NULL, ...
    ) {
      if (!missing(`sent`)) {
        stopifnot(is.character(`sent`), length(`sent`) == 1)
        self$`sent` <- `sent`
      }
      if (!is.null(`next_token`)) {
        stopifnot(is.character(`next_token`), length(`next_token`) == 1)
        self$`next_token` <- `next_token`
      }
      if (!is.null(`result_count`)) {
        stopifnot(is.numeric(`result_count`), length(`result_count`) == 1)
        self$`result_count` <- `result_count`
      }
      if (!is.null(`summary`)) {
        stopifnot(R6::is.R6(`summary`))
        self$`summary` <- `summary`
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
    #' @return RulesResponseMetadata in JSON format
    #' @export
    toJSON = function() {
      RulesResponseMetadataObject <- list()
      if (!is.null(self$`next_token`)) {
        RulesResponseMetadataObject[["next_token"]] <-
          self$`next_token`
      }
      if (!is.null(self$`result_count`)) {
        RulesResponseMetadataObject[["result_count"]] <-
          self$`result_count`
      }
      if (!is.null(self$`sent`)) {
        RulesResponseMetadataObject[["sent"]] <-
          self$`sent`
      }
      if (!is.null(self$`summary`)) {
        RulesResponseMetadataObject[["summary"]] <-
          self$`summary`$toJSON()
      }
      for (key in names(self$additional_properties)) {
        RulesResponseMetadataObject[[key]] <- self$additional_properties[[key]]
      }

      RulesResponseMetadataObject
    },
    #' Deserialize JSON string into an instance of RulesResponseMetadata
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesResponseMetadata
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesResponseMetadata
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`next_token`)) {
        self$`next_token` <- this_object$`next_token`
      }
      if (!is.null(this_object$`result_count`)) {
        self$`result_count` <- this_object$`result_count`
      }
      if (!is.null(this_object$`sent`)) {
        self$`sent` <- this_object$`sent`
      }
      if (!is.null(this_object$`summary`)) {
        summary_object <- RulesRequestSummary$new()
        summary_object$fromJSON(jsonlite::toJSON(this_object$summary, auto_unbox = TRUE, digits = NA))
        self$`summary` <- summary_object
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
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
    #' @return RulesResponseMetadata in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`next_token`)) {
          sprintf(
          '"next_token":
            "%s"
                    ',
          self$`next_token`
          )
        },
        if (!is.null(self$`result_count`)) {
          sprintf(
          '"result_count":
            %d
                    ',
          self$`result_count`
          )
        },
        if (!is.null(self$`sent`)) {
          sprintf(
          '"sent":
            "%s"
                    ',
          self$`sent`
          )
        },
        if (!is.null(self$`summary`)) {
          sprintf(
          '"summary":
          %s
          ',
          jsonlite::toJSON(self$`summary`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of RulesResponseMetadata
    #'
    #' @description
    #' Deserialize JSON string into an instance of RulesResponseMetadata
    #'
    #' @param input_json the JSON input
    #' @return the instance of RulesResponseMetadata
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`next_token` <- this_object$`next_token`
      self$`result_count` <- this_object$`result_count`
      self$`sent` <- this_object$`sent`
      self$`summary` <- RulesRequestSummary$new()$fromJSON(jsonlite::toJSON(this_object$summary, auto_unbox = TRUE, digits = NA))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to RulesResponseMetadata
    #'
    #' @description
    #' Validate JSON input with respect to RulesResponseMetadata and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `sent`
      if (!is.null(input_json$`sent`)) {
        stopifnot(is.character(input_json$`sent`), length(input_json$`sent`) == 1)
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RulesResponseMetadata: the required field `sent` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RulesResponseMetadata
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
      if (nchar(self$`next_token`) < 1) {
        return(FALSE)
      }

      # check if the required `sent` is null
      if (is.null(self$`sent`)) {
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
      if (nchar(self$`next_token`) < 1) {
        invalid_fields["next_token"] <- "Invalid length for `next_token`, must be bigger than or equal to 1."
      }

      # check if the required `sent` is null
      if (is.null(self$`sent`)) {
        invalid_fields["sent"] <- "Non-nullable required field `sent` cannot be null."
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
    }),
    # Lock the class to prevent modifications to the method or field
    lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
#RulesResponseMetadata$unlock()
#
## Below is an example to define the print fnuction
#RulesResponseMetadata$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#RulesResponseMetadata$lock()

