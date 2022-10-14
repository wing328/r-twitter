#' Create a new UserEntitiesUrl
#'
#' @description
#' Expanded details for the URL specified in the User's profile, with start and end indices.
#'
#' @docType class
#' @title UserEntitiesUrl
#' @description UserEntitiesUrl Class
#' @format An \code{R6Class} generator object
#' @field urls  list(\link{UrlEntity}) [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserEntitiesUrl <- R6::R6Class(
  "UserEntitiesUrl",
  public = list(
    `urls` = NULL,
    `_field_list` = c("urls"),
    `additional_properties` = list(),
    #' Initialize a new UserEntitiesUrl class.
    #'
    #' @description
    #' Initialize a new UserEntitiesUrl class.
    #'
    #' @param urls urls
    #' @param additional_properties additonal properties (optional)
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`urls` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`urls`)) {
        stopifnot(is.vector(`urls`), length(`urls`) != 0)
        sapply(`urls`, function(x) stopifnot(R6::is.R6(x)))
        self$`urls` <- `urls`
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
    #' @return UserEntitiesUrl in JSON format
    #' @export
    toJSON = function() {
      UserEntitiesUrlObject <- list()
      if (!is.null(self$`urls`)) {
        UserEntitiesUrlObject[["urls"]] <-
          lapply(self$`urls`, function(x) x$toJSON())
      }
      for (key in names(self$additional_properties)) {
        UserEntitiesUrlObject[[key]] <- self$additional_properties[[key]]
      }

      UserEntitiesUrlObject
    },
    #' Deserialize JSON string into an instance of UserEntitiesUrl
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserEntitiesUrl
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserEntitiesUrl
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`urls`)) {
        self$`urls` <- ApiClient$new()$deserializeObj(this_object$`urls`, "array[UrlEntity]", loadNamespace("twitter"))
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
    #' @return UserEntitiesUrl in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`urls`)) {
          sprintf(
            '"urls":
          [%s]
',
            paste(sapply(self$`urls`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
    #' Deserialize JSON string into an instance of UserEntitiesUrl
    #'
    #' @description
    #' Deserialize JSON string into an instance of UserEntitiesUrl
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserEntitiesUrl
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`urls` <- ApiClient$new()$deserializeObj(this_object$`urls`, "array[UrlEntity]", loadNamespace("twitter"))
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },
    #' Validate JSON input with respect to UserEntitiesUrl
    #'
    #' @description
    #' Validate JSON input with respect to UserEntitiesUrl and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserEntitiesUrl
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
      if (length(self$`urls`) < 1) {
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
      if (length(self$`urls`) < 1) {
        invalid_fields["urls"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
# UserEntitiesUrl$unlock()
#
## Below is an example to define the print fnuction
# UserEntitiesUrl$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserEntitiesUrl$lock()
