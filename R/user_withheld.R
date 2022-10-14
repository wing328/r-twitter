#' Create a new UserWithheld
#'
#' @description
#' Indicates withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country).
#'
#' @docType class
#' @title UserWithheld
#' @description UserWithheld Class
#' @format An \code{R6Class} generator object
#' @field country_codes Provides a list of countries where this content is not available. list(character)
#' @field scope Indicates that the content being withheld is a `user`. character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserWithheld <- R6::R6Class(
  "UserWithheld",
  public = list(
    `country_codes` = NULL,
    `scope` = NULL,
    `_field_list` = c("country_codes", "scope"),
    `additional_properties` = list(),
    #' Initialize a new UserWithheld class.
    #'
    #' @description
    #' Initialize a new UserWithheld class.
    #'
    #' @param country_codes Provides a list of countries where this content is not available.
    #' @param scope Indicates that the content being withheld is a `user`.
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`country_codes`, `scope` = NULL, additional_properties = NULL, ...) {
      if (!missing(`country_codes`)) {
        stopifnot(is.vector(`country_codes`), length(`country_codes`) != 0)
        sapply(`country_codes`, function(x) stopifnot(is.character(x)))
        if (!identical(`country_codes`, unique(`country_codes`))) {
          stop("Error! Items in `country_codes` are not unique.")
        }
        self$`country_codes` <- `country_codes`
      }
      if (!is.null(`scope`)) {
        if (!(`scope` %in% c("user"))) {
          stop(paste("Error! \"", `scope`, "\" cannot be assigned to `scope`. Must be \"user\".", sep = ""))
        }
        stopifnot(is.character(`scope`), length(`scope`) == 1)
        self$`scope` <- `scope`
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
    #' @return UserWithheld in JSON format
    #' @export
    toJSON = function() {
      UserWithheldObject <- list()
      if (!is.null(self$`country_codes`)) {
        UserWithheldObject[["country_codes"]] <-
          self$`country_codes`
      }
      if (!is.null(self$`scope`)) {
        UserWithheldObject[["scope"]] <-
          self$`scope`
      }
      for (key in names(self$additional_properties)) {
        UserWithheldObject[[key]] <- self$additional_properties[[key]]
      }

      UserWithheldObject
    },
    #' Deserialize JSON string into an instance of UserWithheld
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserWithheld
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserWithheld
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`country_codes`)) {
        self$`country_codes` <- ApiClient$new()$deserializeObj(this_object$`country_codes`, "set[character]", loadNamespace("twitter"))
        if (!identical(self$`country_codes`, unique(self$`country_codes`))) {
          stop("Error! Items in `country_codes` are not unique.")
        }
      }
      if (!is.null(this_object$`scope`)) {
        if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("user"))) {
          stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"user\".", sep = ""))
        }
        self$`scope` <- this_object$`scope`
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
    #' @return UserWithheld in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`country_codes`)) {
          sprintf(
            '"country_codes":
             [%s]
          ',
            paste(unlist(lapply(self$`country_codes`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`scope`)) {
          sprintf(
            '"scope":
            "%s"
                    ',
            self$`scope`
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
    #' Deserialize JSON string into an instance of UserWithheld
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserWithheld
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserWithheld
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`country_codes` <- ApiClient$new()$deserializeObj(this_object$`country_codes`, "set[character]", loadNamespace("twitter"))
      if (!identical(self$`country_codes`, unique(self$`country_codes`))) {
        stop("Error! Items in `country_codes` are not unique.")
      }
      if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("user"))) {
        stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"user\".", sep = ""))
      }
      self$`scope` <- this_object$`scope`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UserWithheld
    #'
    #' @description
    #' Validate JSON input with respect to UserWithheld and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `country_codes`
      if (!is.null(input_json$`country_codes`)) {
        stopifnot(is.vector(input_json$`country_codes`), length(input_json$`country_codes`) != 0)
        if (!identical(input_json$`country_codes`, unique(input_json$`country_codes`))) {
          stop("Error! Items in `country_codes` are not unique.")
        }
        tmp <- sapply(input_json$`country_codes`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserWithheld: the required field `country_codes` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserWithheld
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
      # check if the required `country_codes` is null
      if (is.null(self$`country_codes`)) {
        return(FALSE)
      }

      if (length(self$`country_codes`) < 1) {
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
      # check if the required `country_codes` is null
      if (is.null(self$`country_codes`)) {
        invalid_fields["country_codes"] <- "Non-nullable required field `country_codes` cannot be null."
      }

      if (length(self$`country_codes`) < 1) {
        invalid_fields["country_codes"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
# UserWithheld$unlock()
#
## Below is an example to define the print fnuction
# UserWithheld$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserWithheld$lock()
